<?php
	include('config.php');

	$db = new DB();
	$id=$_GET['id'];
	echo "L'id e:  ";
	echo $_GET['id'];
 	$sql = "SELECT * FROM `project` WHERE `id` = $id";
	$data = $db->qryRiep($sql);

	echo json_encode($data);

?>
