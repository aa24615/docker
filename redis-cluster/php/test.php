<?php
require 'vendor/autoload.php';//引入predis相关包  

//redis实例
$servers = array(
    'tcp://106.53.147.61:6001',
    'tcp://106.53.147.61:6002',
    'tcp://106.53.147.61:6003',
    'tcp://106.53.147.61:6004',
    'tcp://106.53.147.61:6005',
    'tcp://106.53.147.61:6006',
);

$text = <<<TEXT
Installing dependencies from lock file (including require-dev)
TEXT;


for($i=428677; $i<1000000; $i++){

    $client = new Predis\Client($servers, array('cluster' => 'redis'));

    $is = $client->set("name".$i, $text.$i);
    echo ((string)$is);
    echo $i.PHP_EOL;

}


