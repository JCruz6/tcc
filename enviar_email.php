<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


// Carregue a biblioteca PHPMailer
require 'vendor/autoload.php';

function conectarBanco(){
    $host = 'localhost';
    $usuario = 'root';
    $senha = '';
    $banco = 'ttc_saas';

    $conexao = new mysqli($host, $usuario, $senha, $banco);

    if ($conexao->connect_error) {
        die('Erro na conexão com o banco de dados: '. $conexao->connect_error);
    }

    return $conexao;
}
function obterDadosDestinatario(){
    $conexao = conectarBanco();

    $query = 'SELECT email, senha FROM usuarios LIMIT 1';
    $resultado = $conexao->query($query);

    if($resultado->num_rows > 0){
        $dados = $resultado->fetch_assoc();
        $conexao->close();
        return $dados;
    }else{
        $conexao->close();
        return false;
    }
}

function enviarEmail($destinatario, $assunto, $corpo) {

    $mail = new PHPMailer(true);

    try {
        //Configuraçoes servidor SMTP
        $mail->SMTPDebug    = SMTP::DEBUG_SERVER;
        $mail->isSMTP();
        $mail->Host         = 'smtp.gmail.com';
        $mail->SMTPAuth     = true;
        $mail->Username     = 'multivendastec@gmail.com';
        $mail->Password     = 'multivendastec2023';
        $mail->SMTPSecure   = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port         = 587;

        //Configurações do email
        $mail->setFrom('multivendastec@gmail.com','MultiVendas Tecnologia de Software');
        $mail->addAddress($destinatario);
        $mail->Subject = $assunto;
        $mail->Body = $corpo;

        //Envia o email
        $mail->send();
        return true;
    } catch (Exception $e) {
        return 'Erro ao enviar o e-mail: ' . $mail->ErrorInfo;
    }
}