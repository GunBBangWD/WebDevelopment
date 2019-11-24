<?php
include("../lib/php/begin.php");
echo "<title>건희 사이트</title>";
echo "<script type='text/javascript' src='local.js'></script>";
include($project_path . "/lib/php/header.php");
include($project_path . "/lib/php/db_begin.php");

$onMouseOverOut = " onmouseover=\"this.style.backgroundColor='#ddeeff'; return true;\" ";
$onMouseOverOut.= " onmouseout =\"this.style.backgroundColor='';return true; \" ";

echo "<form name='f' method='post'>";
echo "<input type='hidden' name='in_data'>";
echo "<input type='hidden' name='test'>";
echo "</form>";
echo "<input type='button' value='글쓰기' onclick='goWrite();'>";

echo "<table border='1' class='bbs_list' cellspacing='0' >";
echo "<tr>";
echo "<th>No</th>";
echo "<th>제목</th>";
echo "<th>글쓴이</th>";
echo "<th>날짜</th>";
echo "<th>조회</th>";
echo "</tr>";



$strSQL = "select * from st1_board_item ";
						echo "<br>".$strSQL;
						$result = mysql_query($strSQL, $db_connect);
						if (!$result) {
							echo "Error : " . mysql_error();
							die();
						}
						$cnt = 0;
						while ($rs = mysql_fetch_array($result)) {
						$cnt++;
							echo "<tr onclick=\"goView('" .$rs["bino"]. "');\" " .$onMouseOverOut. " style='cursor:pointer; '>";
								echo "<td>" . $cnt . "</td>";
								echo "<td >" . $rs["bititle"] . "</td>";
								echo "<td>" . $rs["biwriter"] . "</td>";
								echo "<td>" . $rs["biwrite_date"] . "</td>";
								echo "<td>" . $rs["bino"] . "</td>";
							echo "</tr>";
						}
						mysql_free_result($result);

include($project_path . "/lib/php/db_end.php");
include($project_path . "/lib/php/end.php");
?>