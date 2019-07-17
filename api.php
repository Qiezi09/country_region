<?php
/**
 * 从GeoLite2-City-Locations-zh-CN.csv出来的大洲，国家，州（省），城市
 */
header('content-type:application/json;charset=utf8');
use Phalcon\Db\Adapter\Pdo\Mysql;
$config = [
    "host" => "localhost",
    "dbname" => "country_region",
    "port" => 3306,
    "username" => "root",
    "password" => "123456",
];
$connection = new Mysql($config);
$type = !empty($_GET['type']) ? $_GET['type'] : '';
//大洲
if ($type == 'continents') {
    $rows = $connection->fetchAll(
        "SELECT * FROM continents ORDER BY `ename` ASC",
        \Phalcon\Db::FETCH_ASSOC
    );
    $total = $connection->fetchColumn("SELECT count(*) FROM continents");
    $return = ['code' => 0, 'data' => $rows, 'total' => $total];
    echo json_encode($return);
}
//国家
if ($type == 'countries') {
    $rows = $connection->fetchAll(
        "SELECT * FROM countries WHERE `continent_id` = " . $_GET['code'] . "  ORDER BY `country_or_region`,`en_name` ASC",
        \Phalcon\Db::FETCH_ASSOC
    );
    $total = $connection->fetchColumn("SELECT count(*) FROM countries WHERE `continent_id` = " . $_GET['code']);
    /* if ($rows) {
        foreach($rows as &$v) {
            $v['full_ename'] = addslashes($v['full_ename']);
            unset($v);
        }
    } */
    $return = ['code' => 0, 'data' => $rows, 'total' => $total];
    echo json_encode($return);
}
//州或省份
if ($type == 'states') {
    $rows = $connection->fetchAll(
        "SELECT * FROM states WHERE `country_id` = " . $_GET['code'] . "  ORDER BY `ename` ASC",
        \Phalcon\Db::FETCH_ASSOC
    );
    $total = $connection->fetchColumn("SELECT count(*) FROM states WHERE `country_id` = " . $_GET['code']);
    $return = ['code' => 0, 'data' => $rows, 'total' => $total];
    echo json_encode($return);
}

if ($type == 'cities') {
    $rows = $connection->fetchAll(
        "SELECT * FROM cities WHERE `state_id` = " . $_GET['code'] . "  ORDER BY `ename` ASC",
        \Phalcon\Db::FETCH_ASSOC
    );
    $total = $connection->fetchColumn("SELECT count(*) FROM cities WHERE `state_id` = " . $_GET['code']);
    $return = ['code' => 0, 'data' => $rows, 'total' => $total];
    echo json_encode($return);
}
