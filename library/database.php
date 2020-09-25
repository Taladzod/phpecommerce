<?php
require_once 'config.php';

<<<<<<< HEAD
$dbConn = mysqli_connect ($dbHost, $dbUser, $dbPass, $dbName); //or die ('MySQL connect failed. ' . mysqli_connect_error());
=======
$dbConn = mysqli_connect ($dbHost, $dbUser, $dbPass, $dbName);
//or die ('MySQL connect failed. ' . mysqli_error());
>>>>>>> 5a4934005c07ba78b0247340b095eb39a52c3bc2
//mysql_select_db($dbName) or die('Cannot select database. ' . mysql_error());
//mysql_query("SET NAMES UTF8");

function dbQuery($sql)
{
	global $dbConn;
	$result = mysqli_query($dbConn, $sql) or die(mysqli_error($dbConn));
	
	return $result;
}

function dbAffectedRows()
{
	global $dbConn;
	
	return mysqli_affected_rows($dbConn);
}

function dbFetchArray($result, $resultType = MYSQLI_NUM) {
	return mysqli_fetch_array($result, $resultType);
}

function dbFetchAssoc($result)
{
	return mysqli_fetch_assoc($result);
}

function dbFetchRow($result) 
{
	return mysqli_fetch_row($result);
}

function dbFreeResult($result)
{
	return mysqli_free_result($result);
}

function dbNumRows($result)
{
	return mysqli_num_rows($result);
}

function dbSelect($dbName)
{
	global $dbConn;
	return mysqli_select_db($dbConn, $dbName);
}

function dbInsertId()
{
	global $dbConn;
	return mysqli_insert_id($dbConn);
}

?>