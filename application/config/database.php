<?php

return array
(
    'default' => array
    (
      'type'       => 'pdo',
        'connection' => array(
            'dsn'        => 'mysql:host=localhost;dbname=kohana',
            'username'   => 'kohana',
            'password'   => 'kohana',
            'persistent' => FALSE,
        ),
        'table_prefix' => '',
        'charset'      => 'utf8',
        'caching'      => FALSE,
        'profiling'    => TRUE,
    ),
);