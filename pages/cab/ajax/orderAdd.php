<?php
require_once('connect.php');


if (isset($_POST['action']) && $_POST['action'] == 'addOrder') {
  if ($_POST['orderCarBrand'] != '') {
    $insert = [
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

  	$db->query("INSERT INTO `orders` SET ?u", $insert);

    $arr['response'] = 'OK';

    echo $core->returnJson($arr);


  } else {
    $arr['error'] = 'Ошибка. Не указана марка авто';
    echo $core->returnJson($arr);
    die();
  }



} else {
  $arr['error'] = 'Ошибка. Перезагрузите страницу.';
  echo $core->returnJson($arr);
  die();
}
