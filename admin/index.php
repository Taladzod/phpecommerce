<?php
require_once '../library/config.php';
require_once './library/functions.php';

checkAdminUser();

$content = 'main.php';

$pageTitle = 'Shop Admin';
$script = array();

require_once 'include/template.php';
?>
