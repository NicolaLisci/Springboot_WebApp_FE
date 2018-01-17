<?php
	$data = json_decode(file_get_contents("php://input"));

	include('config.php');

	$db = new DB();

	$sql ="INSERT INTO `employement`(`id_r`, `id_p`) VALUES ('$data->id_r',''$data->id_p')";

	$data = $db->qryAssignR($sql);

	echo json_encode($data);
?>
