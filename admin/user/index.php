<?php
require_once '../../library/config.php';
require_once '../library/functions.php';

$_SESSION['login_return_url'] = $_SERVER['REQUEST_URI'];
checkAdminUser();


$errorMessage = '';
if (isset($_GET['btnModify'])) {
	$userId      = $_GET['userId'];
	$oldPassword = $_GET['txtOldPassword'];
	$newPassword = $_GET['txtNewPassword1'];
	$sql = "SELECT user_id FROM tbl_user WHERE user_id = $userId AND user_password = '$oldPassword' ";
	$result = mysqli_query($dbConn, $sql) or die(mysqli_error($dbConn));
	if (mysqli_num_rows($result) != 1) {
		$errorMessage = 'Old password is incorrect';
		echo "<script>alert('Old password is incorrect')</script>";
	} else {	
		$sql = "UPDATE tbl_user 
				SET user_password = '$newPassword'
				WHERE user_id = $userId";
		mysqli_query($dbConn, $sql) or die('Modify failed. ' . mysqli_error($dbConn));
		header('Location: index.php');
		exit;			
	}	
} 

if (isset($_POST['btnAddUser'])) {
	$userName = $_POST['txtUserName'];
	$userPass = $_POST['txtPassword'];
	$sql = "SELECT user_id FROM tbl_user WHERE user_name = '$userName' ";
	$result = mysqli_query($dbConn, $sql) or die(mysqli_error($dbConn));
	if (mysqli_num_rows($result) > 0) {
		$errorMessage = 'Can not use this user name';
		echo "<script>alert('Username is already use')</script>";
	} else {	
		$sql = "INSERT into tbl_user (user_name, user_password) VALUES ('$userName', '$userPass')";
		$result = mysqli_query($dbConn, $sql) or die(mysqli_error($dbConn));
		header('Location: index.php');
		exit;		
	}					
} 

$view = (isset($_GET['view']) && $_GET['view'] != '') ? $_GET['view'] : '';
switch ($view) {
	case 'list' :
		$content 	= 'list.php';		
		$pageTitle 	= 'Shop Admin Control Panel - View Users';
		break;

	case 'add' :
		$content 	= 'add.php';		
		$pageTitle 	= 'Shop Admin Control Panel - Add Users';
		break;

	case 'modify' :
		$content 	= 'modify.php';		
		$pageTitle 	= 'Shop Admin Control Panel - Modify Users';
		break;
	case 'changepassword' :
		$content 	= 'changePass.php';		
		$pageTitle 	= 'Shop Admin Control Panel - Change Password';
		break;

	default :
		$content 	= 'list.php';		
		$pageTitle 	= 'Shop Admin Control Panel - View Users';
}

$script    = array('user.js');

require_once '../include/template.php';
?>
