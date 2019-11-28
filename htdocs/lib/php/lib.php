<?php
function show_td($title, $val) {
	echo "<tr>";
	echo "<th class='th1'><label>" . $title . "</label></th>";
	echo "<td class='td1' width=*>".$val."</td>";
	echo "</tr>";
}


function filename_ext($filename) {
	$ext = "";
	$pos=strrpos($filename,'.');
	if(!$pos)
		return $ext;
	$ext=strtolower(substr($filename,$pos+1));
	return $ext;
}

?>