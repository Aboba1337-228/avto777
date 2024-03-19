<?php

require "db/db.php";

header('Content-Type: application/json; charset=utf-8');
header('Accept: */*');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Access-Control-Allow-Headers: X-Requested-With");

function cars() {
    global $pdo;

        $query = $pdo->prepare("SELECT * FROM `avto` WHERE 1");
        $query->execute();

        $data = $query->fetchAll();
        http_response_code(200);
        echo json_encode($data);
    
}

cars();