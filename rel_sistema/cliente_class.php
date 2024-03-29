<?php 
	include('../conexao.php');
	@session_start();
	
	$id_empresa = @$_SESSION['id_empresa'];

	//ALIMENTAR OS DADOS NO RELATÓRIO
	$html = file_get_contents($url_sistema."rel_sistema/cliente.php?id_empresa=$id_empresa");

	//verificar tipo do relatorio no config
	$query = $pdo->query("SELECT * FROM config WHERE empresa = '$id_empresa'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$tipo_rel = $res[0]['tipo_rel'];

	if($tipo_rel != 'PDF'){
		echo $html;
		exit();
	}

	//CARREGAR DOMPDF
	require_once '../dompdf/autoload.inc.php';
	use Dompdf\Dompdf;
	use Dompdf\Options;

	header("Content-Transfer-Encoding: binary");
	header("Content-Type: image/png");

	//INICIALIZAR A CLASSE DO DOMPDF
	$options = new Options();
	$options->set('isRemoteEnabled', TRUE);
	$pdf = new DOMPDF($options);


	//Definir o tamanho do papel e orientação da página
	$pdf->set_paper('A4', 'portrait');

	//CARREGAR O CONTEÚDO HTML
	$pdf->load_html($html);

	//RENDERIZAR O PDF
	$pdf->render();

	//NOMEAR O PDF GERADO
	$pdf->stream(
	'clientes.pdf',
	array("Attachment" => false)
	);
?>