<?php

//$statistics = $db->getAll("SELECT * FROM `statistics` WHERE `enabled` = 1");
//$salons = $db->getAll("SELECT * FROM `salons` WHERE `enabled` = 1");

if (isset($_POST['action']) && $_POST['action'] == 'addOrder') {
	$insert = [
		'order_date' => $_POST['orderDate'],
		'client_phone' => $_POST['orderClientPhone'],
		'client_name' => $_POST['orderClientName'],
		'car_brand' => $_POST['orderCarBrand'],
		'car_model' => $_POST['orderCarModel'],
		'car_year' => $_POST['orderCarYear'],
		'works' => $_POST['orderWorks'],
		'amount' => $_POST['orderAmount'],
		'recomendations' => $_POST['orderRecomendations']
	];
	
	$db->query("INSERT INTO `orders` SET ?u", $insert);
}


$orders = $db->getAll("SELECT * FROM `orders` ORDER BY order_date DESC");

$sum = 0;

$i = 1;

include ('tpl/cab/default.tpl');
