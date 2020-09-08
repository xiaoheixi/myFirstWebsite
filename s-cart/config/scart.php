<?php
return [
    'version'     => '3.0',
    'sub_version' => '3.0.4',
    'homepage'    => 'https://s-cart.org',
    'name'        => 'Marketing4growth',
    'title'       => 'Marketing4growth',
    'github'      => 'https://github.com/s-cart/s-cart',
    'email'       => 'admin@gmail.com',
    'api_link'    => env('SC_API_LINK', 'https://api.s-cart.org/v2'),
    //Enable, disable page libary online
    'settings' => [
        'api_plugin'   => 1,
        'api_template' => 1,
    ],
];
