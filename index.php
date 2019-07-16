<?php
define('BASE_PATH', dirname(__FILE__));
require 'vendor/autoload.php';
$content = \Michelf\MarkdownExtra::defaultTransform(file_get_contents(BASE_PATH . '/README.md'));
echo '<!doctype html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>文档说明</title>
  </head>
  <body>
    <div class="container">
    '.$content.'
    </div>
  </body>
</html>';

