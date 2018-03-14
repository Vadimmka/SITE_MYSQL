<?php //echo htmlspecialchars($_POST['Username']); ?>
<?php //echo htmlspecialchars($_POST['Password']); ?>




<?php

$link = mysql_connect('localhost', 'root', '')
    or die('Не удалось соединиться: ' . mysql_error());
//echo 'Соединение успешно установлено';
mysql_select_db('test') or die('Не удалось выбрать базу данных');



$db = $_POST['Username'];


$query = "SELECT * FROM users_passwords WHERE users = '$db'";

$result = mysql_query($query) or die('Запрос не удался: ' . mysql_error());



    $row = mysql_fetch_assoc($result);
    if (hash('sha256', $_POST['Password']) == $row['hash']) {
        // validation passed, rejoice!
		echo "\nvalidation passed!!!\n";
    }
	else {
		echo "PASSWROD WRONG!!\n";
	}





mysql_free_result($result);


mysql_close($link);
?>


