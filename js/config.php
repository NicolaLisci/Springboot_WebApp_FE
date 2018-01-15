<?php
	define("__HOST__", "localhost");
	define("__USER__", "root");
	define("__PASS__", "root");
	define("__BASE__", "resources");

	class DB {
		private $con = false;
		private $data = array();

		public function __construct() {
			$this->con = new mysqli(__HOST__, __USER__, __PASS__, __BASE__);

			if($this->con->connect_error) {
				die("DB connection failed:" . $con->connect_error);
			}
		}

		public function qryPop() {
			$sql = "SELECT * FROM `project` ORDER BY `id` DESC";
			$qry = $this->con->query($sql);
			if($qry->num_rows > 0) {
				while($row = $qry->fetch_object()) {
					$this->data[] = $row;
				}
			} else {
				$this->data[] = null;
			}
		}
		public function qryPopR() {
			$sql = "SELECT * FROM `resource` ORDER BY `id` DESC";
			$qry = $this->con->query($sql);
			if($qry->num_rows > 0) {
				while($row = $qry->fetch_object()) {
					$this->data[] = $row;
				}
			} else {
				$this->data[] = null;
			}
		}

		public function qryFire($sql=null) {
			if($sql) $this->con->query($sql);
			$this->qryPop();
			$this->con->close();
			return $this->data;
		}
	}

?>
