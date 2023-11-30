<?php
$tamanhoSenha = 10;
 
$caracteresPermitidos = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_!@#';

$senhanova = '';
for ($i = 0; $i < $tamanhoSenha; $i++) {
  $senhanova .= $caracteresPermitidos[rand(0, strlen($caracteresPermitidos) - 1)];
}
?>