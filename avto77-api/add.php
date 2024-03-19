<?php

require "db/db.php";

header('Content-Type: application/json; charset=utf-8');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method,Access-Control-Request-Headers, Authorization");

function add() {
    global $pdo;

    if(isset($_GET['avto']) and isset($_GET['name']) and isset($_GET['phone']) and isset($_GET['email']) and isset($_GET['date_ot']) and isset($_GET['date_do'])) {
        $avto = $_GET['avto'];
        $name = $_GET['name'];
        $phone = $_GET['phone'];
        $email = $_GET['email'];
        $date_ot = $_GET['date_ot'];
        $date_do = $_GET['date_do'];

        $query = $pdo->prepare("INSERT INTO `orders`(`avto`, `name`, `email`, `phone`, `date_ot`, `date_do`) VALUES (?,?,?,?,?,?)");
        $query->execute([$avto, $name, $phone, $email, $date_ot, $date_do]);

        http_response_code(200);
        echo json_encode([
            "message" => "Suucess"
        ]);
    } else {
        http_response_code(404);
        echo json_encode([
            "message" => "Not found"
        ]);
    }
    
}

add();