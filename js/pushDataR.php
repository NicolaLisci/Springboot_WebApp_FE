<?php
	$data = json_decode(file_get_contents("php://input"));

	include('config.php');

	$db = new DB();

	$sql = "INSERT INTO `resource` (`surname`, `name`, `type`, `hired`)
	VALUES('$data->surname','$data->name','$data->type','$data->hired')";
	$data = $db->qryFireR($sql);

	echo json_encode($data);

?>
