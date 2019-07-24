<?php

/**
 * 将Mysql数据迁移到Mongodb
 * php mysql2mongodb.php action param
 */
require 'vendor/autoload.php';
require 'config.php';

/* ======== 迁移大洲 ======== */

use Phalcon\Db\Adapter\MongoDB\Client;
use Phalcon\Db\Adapter\Pdo\Mysql;
use Phalcon\DI;

if (!empty($argv[1])) {
    //MongoDB数据库连接
    $di = new DI();
    $di->setShared(
        'mongo',
        function () use ($config) {
            $dsn = sprintf(
                'mongodb://%s:%s',
                $config['mongodb']['host'],
                $config['mongodb']['port']
            );
            $mongo = new Client(
                $dsn,
                [],
                [
                    'typeMap' => [
                        'array' => 'array',
                        'document' => 'array',
                        'root' => 'array',
                    ],
                ]
            );
            return $mongo->selectDatabase($config['mongodb']['dbname']);
        }
    );
    $di->setShared(
        'collectionManager',
        function () {
            return new Manager();
        }
    );
    //建立联动关系
    if ($argv[1] == 'relationship') {
        if (empty($argv[2])) {
            echo '参数不能为空' . PHP_EOL;
            exit();
        }
        //国家与大洲之间建立关系
        if ($argv[2] == 'country') {
            $total = $di->get('mongo')->geoip_countries->count();
            $limit = 50;
            $pageTotal = ceil($total / $limit);
            for ($page = 1; $page <= $pageTotal; $page++) {
                $skip = ($page - 1) * $limit;
                $cursor = $di->get('mongo')->geoip_countries->find(
                    [],
                    [
                        'skip' => $skip,
                        'limit' => $limit,
                        'sort' => ['_id' => 1],
                        'projection' => [
                            'continent_id' => 1,
                        ],
                    ]
                );
                foreach ($cursor as $restaurant) {
                    $continent = $di->get('mongo')->geoip_continents->findOne(['id' => $restaurant['continent_id']]); //查询所属大洲的数据
                    $updateResult = $di->get('mongo')->geoip_countries->updateOne(
                        ['_id' => $restaurant['_id']],
                        ['$set' => ['continent_mongo_id' => $continent['_id']]]
                    );
                    printf("Matched %d document(s)\n", $updateResult->getMatchedCount());
                    printf("Modified %d document(s)\n", $updateResult->getModifiedCount());
                }
            }
        }
        //省份与国家之间建立关系
        if ($argv[2] == 'state') {
            $total = $di->get('mongo')->geoip_states->count();
            $limit = 50;
            $pageTotal = ceil($total / $limit);
            for ($page = 1; $page <= $pageTotal; $page++) {
                $skip = ($page - 1) * $limit;
                $cursor = $di->get('mongo')->geoip_states->find(
                    [],
                    [
                        'skip' => $skip,
                        'limit' => $limit,
                        'sort' => ['_id' => 1],
                        'projection' => [
                            'country_id' => 1,
                        ],
                    ]
                );
                foreach ($cursor as $restaurant) {
                    $continent = $di->get('mongo')->geoip_countries->findOne(['id' => $restaurant['country_id']]); //查询所属国家的数据
                    $updateResult = $di->get('mongo')->geoip_states->updateOne(
                        ['_id' => $restaurant['_id']],
                        ['$set' => ['country_mongo_id' => $continent['_id']]]
                    );
                    printf("Matched %d document(s)\n", $updateResult->getMatchedCount());
                    printf("Modified %d document(s)\n", $updateResult->getModifiedCount());
                }
            }
        }
        //城市与省之间建立关系
        if ($argv[2] == 'city') {
            $total = $di->get('mongo')->geoip_cities->count();
            $limit = 100;
            $pageTotal = ceil($total / $limit);
            for ($page = 1; $page <= $pageTotal; $page++) {
                $skip = ($page - 1) * $limit;
                echo '页码:'.$skip.PHP_EOL;
                $cursor = $di->get('mongo')->geoip_cities->find(
                    [],
                    [
                        'skip' => $skip,
                        'limit' => $limit,
                        'sort' => ['_id' => 1],
                        'projection' => [
                            'state_id' => 1,
                        ],
                    ]
                );
                foreach ($cursor as $restaurant) {
                    $continent = $di->get('mongo')->geoip_states->findOne(['id' => $restaurant['state_id']]); //查询所属省的数据
                    $updateResult = $di->get('mongo')->geoip_cities->updateOne(
                        ['_id' => $restaurant['_id']],
                        ['$set' => ['state_mongo_id' => $continent['_id']]]
                    );
                    printf("Matched %d document(s)\n", $updateResult->getMatchedCount());
                    printf("Modified %d document(s)\n", $updateResult->getModifiedCount());
                }
            }
        }
    }
    //从mysql迁移到mongodb
    if ($argv[1] == 'move') {
        //mysql数据库连接
        $connection = new Mysql($config['mysql']);
        //导入大洲
        if ($argv[2] == 'continent') {
            $rows = $connection->fetchAll(
                "SELECT * FROM continents",
                \Phalcon\Db::FETCH_ASSOC
            );
            foreach ($rows as &$row) {
                $result = $di->get('mongo')->geoip_continents->findOne([
                    'cn_name' => $row['cn_name'],
                ]);
                if (!$result) {
                    $ret = $di->get('mongo')->geoip_continents->insertOne($row);
                    echo $ret->getInsertedId() . PHP_EOL;
                    unset($row);
                } else {
                    echo $row['cn_name'] . ' 已存在，跳过' . PHP_EOL;
                    continue;
                }
            }
        }
        //导入国家
        if ($argv[2] == 'country') {
            $total = $connection->fetchColumn("SELECT count(*) FROM countries");
            echo $total . PHP_EOL;
            $limit = 20;
            $pageTotal = ceil($total / $limit);
            for ($page = 1; $page <= $pageTotal; $page++) {
                $skip = ($page - 1) * $limit;
                $rows = $connection->fetchAll(
                    "SELECT * FROM countries LIMIT " . $skip . "," . $limit,
                    \Phalcon\Db::FETCH_ASSOC
                );
                foreach ($rows as &$row) {
                    $result = $di->get('mongo')->geoip_countries->findOne([
                        'cn_name' => $row['cn_name'],
                    ]);
                    if (!$result) {
                        $ret = $di->get('mongo')->geoip_countries->insertOne($row);
                        echo $ret->getInsertedId() . PHP_EOL;
                        unset($row);
                    } else {
                        echo $row['cn_name'] . ' 已存在，跳过' . PHP_EOL;
                        continue;
                    }
                }
            }
        }
        //导入省
        if ($argv[2] == 'state') {
            $total = $connection->fetchColumn("SELECT count(*) FROM states");
            echo $total . PHP_EOL;
            $limit = 20;
            $pageTotal = ceil($total / $limit);
            for ($page = 1; $page <= $pageTotal; $page++) {
                $skip = ($page - 1) * $limit;
                $rows = $connection->fetchAll(
                    "SELECT * FROM states LIMIT " . $skip . "," . $limit,
                    \Phalcon\Db::FETCH_ASSOC
                );
                foreach ($rows as &$row) {
                    $result = $di->get('mongo')->geoip_states->findOne([
                        'cn_name' => $row['cn_name'],
                    ]);
                    if (!$result) {
                        $ret = $di->get('mongo')->geoip_states->insertOne($row);
                        echo $ret->getInsertedId() . PHP_EOL;
                        unset($row);
                    } else {
                        echo $row['cn_name'] . ' 已存在，跳过' . PHP_EOL;
                        continue;
                    }
                }
            }
        }
        //导入城市
        if ($argv[2] == 'city') {
            $total = $connection->fetchColumn("SELECT count(*) FROM cities");
            echo $total . PHP_EOL;
            $limit = 20;
            $pageTotal = ceil($total / $limit);
            for ($page = 1; $page <= $pageTotal; $page++) {
                $skip = ($page - 1) * $limit;
                $rows = $connection->fetchAll(
                    "SELECT * FROM cities LIMIT " . $skip . "," . $limit,
                    \Phalcon\Db::FETCH_ASSOC
                );
                foreach ($rows as &$row) {
                    $result = $di->get('mongo')->geoip_cities->findOne([
                        'cn_name' => $row['cn_name'],
                    ]);
                    if (!$result) {
                        $ret = $di->get('mongo')->geoip_cities->insertOne($row);
                        echo $ret->getInsertedId() . PHP_EOL;
                        unset($row);
                    } else {
                        echo $row['cn_name'] . ' 已存在，跳过' . PHP_EOL;
                        continue;
                    }
                }
            }
        }
    }
} else {
    echo '缺少action' . PHP_EOL;
    exit();
}
die;
