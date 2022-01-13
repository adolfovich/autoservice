<?php

if (isset($_POST['action']) && $_POST['action'] == 'editOrder') {

  $update = [
    'order_date' => $_POST['orderDate'],
    'client_phone' => $_POST['orderClientPhone'],
    'client_name' => $_POST['orderClientName'],
    'car_brand' => $_POST['orderCarBrand'],
    'car_model' => $_POST['orderCarModel'],
    'car_year' => $_POST['orderCarYear'],
    'works' => $_POST['orderWorks'],
    'amount' => $_POST['orderAmount'],
    'recomendations' => $_POST['orderRecomendations'],
    'defect' => $_POST['orderDefect']
  ];

  $db->query("UPDATE `orders` SET ?u WHERE id = ?i", $update, $_GET['id']);

  $core->jsredir($url = '/cab');
}

if (isset($_GET['id'])) {
  $orderData = $db->getRow("SELECT * FROM orders WHERE id =?i", $_GET['id']);
}

//var_dump($orderData);

include ('tpl/cab/orderEdit.tpl');
