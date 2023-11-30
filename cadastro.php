<?php
    session_start();
    require_once('conexao.php');

    $id_empresa = @$_SESSION['id_empresa'];

     
        $nome = $_POST["nome"];
        $cpf = $_POST["cpf"];
        $email = $_POST["email"];
        $senha = $_POST["senha"];
        $senha_crip = md5(md5($senha));

        //validar cpf
        if($cpf != ""){
            $query = $pdo->query("SELECT * from usuarios where cpf = '$cpf'");
            $res = $query->fetchAll(PDO::FETCH_ASSOC);
            if(@count($res) > 0 and $id != $res[0]['id']){
                echo 'CPF já Cadastrado, escolha outro!!';
                exit();
            }
        }

        //validar email
        if($email != ""){
            $query = $pdo->query("SELECT * from usuarios where email = '$email'");
            $res = $query->fetchAll(PDO::FETCH_ASSOC);
            if(@count($res) > 0 and $id != $res[0]['id']){
                echo 'Email já Cadastrado, escolha outro!!';
                exit();
            }
        }

        
        $pdo->query("INSERT INTO empresas SET  nome = '$nome', email = '$email', ativo = 'Sim', data_cad = curDate()");
        $id_empresa = $pdo->lastInsertId();
        
        //Atribuindo usuário a empresa
        $pdo->query("INSERT INTO usuarios SET   empresa = '$id_empresa', nome = '$nome', cpf = '$cpf', email = '$email', senha = '$senha', 
                                                senha_crip = '$senha_crip', ativo = 'Sim', foto = 'sem-foto.jpg', nivel = 'Administrador', data = curDate() ");
        
    // echo '<script>window.location="index.php"</script>';
?>