<?php
$db_name = "testtest";
$db_username = "test";
$db_password = "!gksrjs0425";

$db_connect = mysqli_connect("localhost:3306", $db_username, $db_password,$db_name, 3306);
if (!$db_connect) {
	die("MySQL 접속 에러 !");
}	


function GetLastDbKey($db_connect) {
	$maxkey = "";
	$strSQL = "select last_insert_id() as max_key ";
	$result = mysqli_query($db_connect,$strSQL);
	if ($rs = mysqli_fetch_array($result)) {
		$maxkey = $rs["max_key"];
	}
	return $maxkey;
}
function GetAttfMaxSeno($db_connect, $bsrdno) {
	$max_seno = 1;
	$strSQL = "select max(atseno) as max_seno from st1_board_attf where atnum = '" .$bsrdno. "' ";
	$result = mysqli_query($db_connect,$strSQL);
	if ($rs = mysqli_fetch_array($result)) {
		$max_seno = intval($rs["max_seno"]) + 1;
	}
	return $max_seno;
}


/*
    last_insert_id()  마지막에 인서트 했을ㄷ때의 키 값을 가져오는 함수
	
	
*/
?>
