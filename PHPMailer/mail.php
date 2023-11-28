<?php
    
    require_once("../conexao.php");
    require_once("PHPMailer.php");
    require_once("SMTP.php");
    require_once("config-email.php");

    $query = $pdo->query("SELECT * from usuarios where email = '$email'");
    $res = $query->fetchAll(PDO::FETCH_ASSOC);
    $total_reg = @count($res);
    if($total_reg > 0){
        $senha = $res[0]['senha'];
        $empresa = $res[0]['empresa'];
    
        $query2 = $pdo->query("SELECT * from empresas where id = '$empresa'");
        $res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
        if(@count($res2) > 0){
            $nome_sistema = $res2[0]['nome'];
        }else{
            $nome_sistema = 'MultiVendas Tecnologia de Software';
        }
    
        $query = $pdo->query("SELECT * FROM config WHERE empresa = 0");
        $res = $query->fetchAll(PDO::FETCH_ASSOC);
        $email_sistema = $res[0]['email_sistema'];
    }

    // Criar uma instância do objeto PHPMailer
    $mail = new PHPMailer\PHPMailer();

    // Definir as configurações do e-mail
    $mail->isSMTP();
    $mail->Port = "465";
    $mail->Host = "smtp.gmail.com";
    $mail->IsHTML(true);
    $mail->SMTPSecure = "ssl";
    $mail->Mailer = "smtp";
    $mail->CharSet = "UTF-8";

    $mail->SMTPAuth = true;
    $mail->Username = $usuarioEmail;
    $mail->Password = $senhaEmail;

    $mail->SingleTo = true;

    $mail->From = $usuarioEmail;
    $mail->FromName = "MultiVendas Tecnologia de Software";
    $mail->addAddress($email);
    $mail->Subject = "Recebimento de senha";
    // Definir o corpo do e-mail
    $mensagem = '
        Olá '.$empresa. ',

        Recebemos uma solicitação para redefinir a senha da sua conta na Exemplo de empresa.

        Sua nova senha é:

        [nova senha]

        Por favor, altere esta senha assim que possível para garantir a segurança da sua conta.

        Atenciosamente,

        Equipe Exemplo de empresa';

    $mail->Body = $mensagem;

    if(!$mail->send()){
        echo $mail->ErrorInfo;
    }
?>