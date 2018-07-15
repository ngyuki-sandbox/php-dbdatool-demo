<?php
$host = getenv('MYSQL_HOST');
$port = getenv('MYSQL_PORT');
$dbname = getenv('MYSQL_DATABASE') ?: 'dev';
$username = 'root';
$password = '';

return [
    'dsn' => "mysql:host=$host;port=$port;dbname=$dbname;charset=utf8",
    'username' => $username,
    'password' => $password,
];
