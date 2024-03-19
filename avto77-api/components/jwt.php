<?php 

function gen_jwt($payload):String{
    $signing_key = "changeme";
    $header = [ 
        "alg" => "HS512", 
        "typ" => "JWT" 
    ];
    $header = base64_url_encode(json_encode($header));
    // --- examples --- 
    // $payload =  [
    //     "exp" => 0,
    //     "login" => "12312313",
    //     "password" => "12312313"
    // ];

    $payload = base64_url_encode(json_encode($payload));
    $signature = base64_url_encode(hash_hmac('sha512', "$header.$payload", $signing_key, true));
    $jwt = "$header.$payload.$signature";
    return $jwt;    
}

function base64_url_encode($text):String{
    return str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($text));
}