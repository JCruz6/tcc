<?php
    session_start();
    require_once('conexao.php');

    $id_empresa = @$_SESSION['id_empresa'];

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $nome = $_POST["nome"];
        $cpf = $_POST["cpf"];
        $email = $_POST["email"];
        $senha = $_POST["senha"];
        $senha_crip = md5($senha);

        $pdo->query("INSERT INTO empresas SET  nome = '$nome', email = '$email', ativo = 'Sim', data_cad = curDate()");
        $id_empresa = $pdo->lastInsertId();
        
        //Atribuindo usuário a empresa
        $pdo->query("INSERT INTO usuarios SET   empresa = '$id_empresa', nome = '$nome', cpf = '$cpf', email = '$email', senha = '$senha', 
                                                senha_crip = '$senha_crip', ativo = 'Sim', foto = 'sem-foto.jpg', nivel = 'Administrador', data = curDate() ");
    
        
        
    } 
?>