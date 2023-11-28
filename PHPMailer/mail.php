<?php
    
    require_once("../conexao.php");
    require_once("PHPMailer.php");
    require_once("SMTP.php");
    require_once("config-email.php");

    $email = $_POST['email'];

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

    $mail = new PHPMailer\PHPMailer();
    $mail->isSMTP();

    $mail->Port = "465";
    $mail->Host = "smtp.gmail.com";
    $mail->IsHTML(true);
    $mail->SMTPSecure = "ssl";
    $mail->Mailer = "smtp";
    $mail->CharSet = "UTF-8";

    $mail->SMTPAuth = true;
    $mail->Username = $email;
    $mail->Password = $senha;

    $mail->SingleTo = true;

    $mail->From = $usuarioEmail;
    $mail->FromName = "MultiVendas Tecnologia de Software";
    $mail->addAddress($$email);
    $mail->Subject = "Recebimento de senha";
    $mail->Body = "Olá $empresa,

                Recebemos uma solicitação para recuperar a senha da sua conta na MultiVendas Tecnologia de Software.
                
                Sua nova senha é: $senha 
                
                Se você não solicitou a recuperação da senha, ignore este e-mail.
                
                Atenciosamente,
                
                Equipe MultiVendas Tecnologia de Software";

    if(!$mail->send()){
        echo $mail->ErrorInfo;
    }