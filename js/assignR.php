<?php
	$data = json_decode(file_get_contents("php://input"));

	include('config.php');

	$db = new DB();

	$sql = "UPDATE `project` SET `assigned` = '$data->assigned' WHERE `id` = '$data->id'";

	$data = $db->qryAssignR($sql);

	echo json_encode($data);
?>
