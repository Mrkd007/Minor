<?php
	require_once("dbcontroller.php");
	$db_handle = new DBController();
	if(!empty($_POST["keyword"])) {
	$query ="SELECT * FROM sql_cmds WHERE sql_cmd_name like '" . $_POST["keyword"] . "%' ORDER BY sql_cmd_name LIMIT 0,6";
	$result = $db_handle->runQuery($query);
	if(!empty($result)) {

?>

<ul id="country-list">
<?php
foreach($result as $country) {
?>
<li onClick="selectCountry('<?php echo $country["sql_cmd_structure"]; ?>');"><?php echo $country["sql_cmd_structure"]; ?></li>
<?php } ?>
</ul>

<?php } } ?>