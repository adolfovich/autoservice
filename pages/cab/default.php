<?php

if (isset($_GET['dateFrom'])) {
	$date_from = $_GET['dateFrom'];
} else {
	$date_from = date('Y-m-'.'01');
}

if (isset($_GET['dateTo'])) {
	$date_to = $_GET['dateTo'];
} else {
	$date_to = date('Y-m-t');
}

if (isset($_GET['searchStr']) && $_GET['searchStr'] != '') {
	$searchStr = "(client_phone LIKE '%".$_GET['searchStr']."%' OR client_name LIKE '%".$_GET['searchStr']."%' OR car_brand LIKE '%".$_GET['searchStr']."%' OR car_model LIKE '%".$_GET['searchStr']."%' OR works LIKE '%".$_GET['searchStr']."%' OR defect LIKE '%".$_GET['searchStr']."%') AND ";
} else {
	$searchStr = '';
}



$orders = $db->getAll("SELECT * FROM `orders` WHERE ".$searchStr." order_date BETWEEN ?s AND ?s ORDER BY order_date DESC", $date_from, $date_to);

$sum = 0;

$i = 1;

include ('tpl/cab/default.tpl');
