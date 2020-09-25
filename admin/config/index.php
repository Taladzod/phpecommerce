<?php
require_once '../../library/config.php';
require_once '../library/functions.php';

<<<<<<< HEAD
checkAdminUser();
=======
checkadminUser();
>>>>>>> 5a4934005c07ba78b0247340b095eb39a52c3bc2

$view = (isset($_GET['view']) && $_GET['view'] != '') ? $_GET['view'] : '';

switch ($view) {
	default :
		$content 	= 'main.php';		
		$pageTitle 	= 'Shop Admin Control Panel - Shop Configuration';
}

$script    = array('shop.js');

require_once '../include/template.php';
?>
