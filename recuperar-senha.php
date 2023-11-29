<?php
function novaSenha() {
	$tamanhoSenha = 10;

	$caracteresPermitidos = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_!@#';

	$ss = '';
	for ($i = 0; $i < $tamanhoSenha; $i++) {
		$ss .= $caracteresPermitidos[rand(0, strlen($caracteresPermitidos) - 1)];
	}
}
function recuperar_senha($email)
{
	// Conectar ao banco de dados
	$conexao = new PDO("mysql:host=localhost;dbname=tcc_saas", "root", "");

	// Consultar o email no banco de dados
	$query = $conexao->prepare("SELECT id, nome, email, senha FROM usuarios WHERE email = :email");
	$query->bindParam(":email", $email);
	$query->execute();

	// Verificar se o email foi encontrado
	$resultado = $query->fetch();
	if ($resultado) {
		// Gerar uma nova senha
		$novasenha = novaSenha();

		// Atualizar a senha no banco de dados
		$query = $conexao->prepare("UPDATE usuarios SET senha = :senha WHERE id = :id");
		$query->bindParam(":senha", $novasenha);
		$query->bindParam(":id", $resultado["id"]);
		$query->execute();

		// Enviar o email para o usuário
		$assunto = "Recuperação de senha";
		$mensagem = "Olá, " . $resultado["nome"] . ".\n\nSua nova senha é: " . $novasenha . ".\n\nAtenciosamente,\nEquipe MultiVendas Tecnologia de Software.";
		mail($email, $assunto, $mensagem);

		// Exibir uma mensagem de sucesso
		echo "<p class='mssg-sucesso'>Uma nova senha foi enviada para o seu email.</p>";
	} else {
		// Exibir uma mensagem de erro
		echo "<p class='mssg-erro'>O email não foi encontrado.</p>";
	}
}
