<?php
if (!defined('WEB_ROOT')) {
	exit;
}

// set the default page title
$pageTitle = 'My Online Shop';

// if a product id is set add the product name
// to the page title but if the product id is not
// present check if a category id exist in the query string
// and add the category name to the page title
if (isset($_GET['p']) && (int)$_GET['p'] > 0) {
	$pdId = (int)$_GET['p'];
	$sql = "SELECT pd_name
			FROM tbl_product
			WHERE pd_id = $pdId";
	
	$result    = dbQuery($sql);
	$row       = dbFetchAssoc($result);
	$pageTitle = $row['pd_name'];
	
} else if (isset($_GET['c']) && (int)$_GET['c'] > 0) {
	$catId = (int)$_GET['c'];
	$sql = "SELECT cat_name
	        FROM tbl_category
			WHERE cat_id = $catId";

    $result    = dbQuery($sql);
	$row       = dbFetchAssoc($result);
	$pageTitle = $row['cat_name'];
}
?>
<!DOCTYPE HTML>
<html lang="th">
<head>
<title><?php echo $pageTitle; ?></title>
<meta charset="utf-8">
<link href="include/shop.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="library/common.js"></script>
</head>
<body>
	<ul id="menu">
		<li><a href="index.php">หน้าแรก</a></li>
		<li>
			<a href="#">สินค้า</a>
			<ul>
        		<li><a href="#">สินค้าแนะนำ</a></li>
				<li><a href="#">สินค้าใหม่</a></li>
				<li><a href="#">สินค้าราคาพิเศษ</a></li>
			</ul>
		</li>
        <li><a href="#">เกี่ยวกับเรา</a></li>
		<li><a href= "cart.php">ตะกร้าสินค้า</a></li>
	</ul>
