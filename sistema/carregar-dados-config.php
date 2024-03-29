<?php 
	@session_start();
	require_once("../conexao.php");
	$id_empresa = $_POST['id_empresa'];

	$_SESSION['id_empresa'] = $id_empresa;

	//Criar uma config caso não tenha nenhuma
	$query = $pdo->query("SELECT * FROM config WHERE empresa = '$id_empresa'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$total_reg = Count($res);

	if($total_reg == 0){
	$pdo->query("INSERT into config SET empresa = '$id_empresa', nome_sistema = 'Sistema de Vendas', tipo_rel = 'PDF', foto_rel = 'logo-rel.jpg', tipo_desconto = '%', comissao = '0' ");
	}else{
		$nome_sistema = $res[0]['nome_sistema'];
		$email_sistema = $res[0]['email_sistema'];
		$telefone_sistema = $res[0]['telefone_sistema'];
		$tipo_rel = $res[0]['tipo_rel'];
		$foto_rel = $res[0]['foto_rel'];
		$tipo_desconto = $res[0]['tipo_desconto'];
		$comissao = $res[0]['comissao'];

		echo $res[0]['nome_sistema'].'-*'.$res[0]['email_sistema'].'-*'.$res[0]['telefone_sistema'].'-*'.$res[0]['tipo_rel'].'-*'.$res[0]['foto_rel'].'-*'.$res[0]['tipo_desconto'].'-*'.$res[0]['comissao'].'-*'.$res[0]['endereco_sistema'].'-*'.$res[0]['cnpj_sistema'];
	}

	//Criar um cargo administrador caso não exista nenhum cargo administrador
	$query = $pdo->query("SELECT * FROM cargos where nome = 'Administrador' and empresa = '$id_empresa'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$total_reg = count($res);
	
	if($total_reg == 0){
	$pdo->query("INSERT into cargos SET empresa = '$id_empresa', nome = 'Administrador'");
	}

	//Criar um cargo gerente caso não exista nenhum cargo gerente
	$query = $pdo->query("SELECT * FROM cargos where nome = 'Gerente' and empresa = '$id_empresa'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$total_reg = count($res);

	//Criar um cargo gerente caso não exista nenhum cargo vendedor
	$query = $pdo->query("SELECT * FROM cargos where nome = 'Vendedor' and empresa = '$id_empresa'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$total_reg = count($res);

	if($total_reg == 0){
	$pdo->query("INSERT into cargos SET empresa = '$id_empresa', nome = 'Vendedor'");
	}

	//Criar frequencias caso não existam
	$query = $pdo->query("SELECT * FROM frequencias where frequencia = 'Nenhuma' and empresa = '$id_empresa'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$total_reg = count($res);
	if($total_reg == 0){
	$pdo->query("INSERT into frequencias SET empresa = '$id_empresa', frequencia = 'Nenhuma', dias = '0'");
	}

	$query = $pdo->query("SELECT * FROM frequencias where frequencia = 'Mensal' and empresa = '$id_empresa'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$total_reg = count($res);
	if($total_reg == 0){
	$pdo->query("INSERT into frequencias SET empresa = '$id_empresa', frequencia = 'Mensal', dias = '30'");
	}
?>