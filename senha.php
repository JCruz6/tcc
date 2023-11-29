<?php
$tamanhoSenha = 10;
 
$caracteresPermitidos = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_!@#';

$ss = '';
for ($i = 0; $i < $tamanhoSenha; $i++) {
  $ss .= $caracteresPermitidos[rand(0, strlen($caracteresPermitidos) - 1)];
}
?>