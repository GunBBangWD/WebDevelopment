<?php
$db_name = "test";
$db_username = "test";
$db_password = "!gksrjs0425";

$db_connect = mysqli_connect("localhost", $db_username, $db_password, true);
if (!$db_connect) {
	die("MySQL ���� ���� !");
}
$db = mysql_select_db($db_name, $db_connect);
if ($db == "") {
	echo "�����ͺ��̽��� �������� �ʾҽ��ϴ�(" .$db_name. ")";
	die();
}


function GetLastDbKey($db_connect) {
	$maxkey = "";
	$strSQL = "select last_insert_id() as max_key ";
	$result = mysql_query($strSQL, $db_connect);
	if ($rs = mysql_fetch_array($result)) {
		$maxkey = $rs["max_key"];
	}
	return $maxkey;
}
function GetAttfMaxSeno($db_connect, $bsrdno) {
	$max_seno = 1;
	$strSQL = "select max(atseno) as max_seno from st1_board_attf where atnum = '" .$bsrdno. "' ";
	$result = mysql_query($strSQL, $db_connect);
	if ($rs = mysql_fetch_array($result)) {
		$max_seno = intval($rs["max_seno"]) + 1;
	}
	return $max_seno;
}


/*
    last_insert_id()  �������� �μ�Ʈ ���������� Ű ���� �������� �Լ�
	
	
*/
?>
