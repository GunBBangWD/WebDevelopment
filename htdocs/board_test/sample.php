<?php
include("../lib/php/begin.php");
echo "<title>건희 사이트</title>";
echo "<script type='text/javascript' src='local.js'></script>";
include($project_path . "/lib/php/header.php");
include($project_path . "/lib/php/db_begin.php");



include($project_path . "/menu/m_menu3/lib/php/middle_menu.php");
include($project_path . "/menu/m_menu3/lib/php/middle_contents.php");
include($project_path . "/lib/php/db_end.php");
include($project_path . "/lib/php/footer.php");
include($project_path . "/lib/php/end.php");
?>