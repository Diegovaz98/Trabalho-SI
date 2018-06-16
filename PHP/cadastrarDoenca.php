<html>
<head>
    <title></title>
</head>
<body>
<?php
/**
 * Created by PhpStorm.
 * User: Fortes
 * Date: 16/06/2018
 * Time: 19:48
 */

$host = "localhost";
$user = "root";
$pass = "";
$banco = 'bdsistema';
$conexao = mysqli_connect($host, $user, $pass, $banco) or die(mysqli_error());
//    mysqli_select_db($banco, $conexao) or die(mysqli_error());
?>

<?php
/**
 * Created by PhpStorm.
 * User: Fortes
 * Date: 06/06/2018
 * Time: 00:37
 */

$nomeDoenca = $_GET["nomeDoenca"];

$sql = mysqli_query($conexao,"INSERT INTO doencas(nomeDoenca) VALUES ('$nomeDoenca')");
//    $sql = mysqli_query($conexao," FROM usuarios WHERE ID = '8'");

?>

</body>
</html>
