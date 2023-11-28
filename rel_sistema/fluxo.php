<?php 
include('../conexao.php');

$id_empresa = @$_GET['id_empresa'];
$id = @$_GET['id'];

$query = $pdo->query("SELECT * FROM config WHERE empresa = '$id_empresa'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$nome_sistema = $res[0]['nome_sistema'];
$telefone_sistema = $res[0]['telefone_sistema'];
$logo_rel = $res[0]['foto_rel'];


setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');
$data_hoje = utf8_encode(strftime('%A, %d de %B de %Y', strtotime('today')));


$query = $pdo->query("SELECT * from caixa where id = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);

$id_operador = $res[0]['operador'];
$id_caixa = $res[0]['caixa'];
$status = $res[0]['status'];

$data_ab = $res[0]['data_ab'];
$hora_ab = $res[0]['hora_ab'];
$id_gerente_ab = $res[0]['gerente_ab'];
$valor_ab = $res[0]['valor_ab'];
$valor_sangria = $res[0]['valor_sangrias'];

$data_fec = $res[0]['data_fec'];
$hora_fec = $res[0]['hora_fec'];
$id_gerente_fec = $res[0]['gerente_fec'];
$valor_fec = $res[0]['valor_fec'];

$data2 = implode('/', array_reverse(explode('-', $res[0]['data_ab'])));
$data_ab = implode('/', array_reverse(explode('-', $data_ab)));
$data_fec = implode('/', array_reverse(explode('-', $data_fec)));

$valor_quebra = number_format( $res[0]['valor_quebra'] , 2, ',', '.');
$total_vendido = number_format( $res[0]['valor_vendido'] , 2, ',', '.');
$valor_ab = number_format( $valor_ab , 2, ',', '.');
$valor_fec = number_format( $valor_fec , 2, ',', '.');



$res_2 = $pdo->query("SELECT * from usuarios where id = '$id_operador' ");
$dados = $res_2->fetchAll(PDO::FETCH_ASSOC);
$nome_operador = $dados[0]['nome'];


$res_2 = $pdo->query("SELECT * from caixas where id = '$id_caixa' ");
$dados = $res_2->fetchAll(PDO::FETCH_ASSOC);
$nome_caixa = $dados[0]['nome'];


$res_2 = $pdo->query("SELECT * from usuarios where id = '$id_gerente_ab' ");
$dados = $res_2->fetchAll(PDO::FETCH_ASSOC);
$gerente_ab = $dados[0]['nome'];

$res_2 = $pdo->query("SELECT * from usuarios where id = '$id_gerente_fec' ");
$dados = $res_2->fetchAll(PDO::FETCH_ASSOC);
@$gerente_fec = @$dados[0]['nome'];



?>

<!DOCTYPE html>
<html>
<head>
	<title>Fluxo de Caixa</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">


<style>

		@page {
			margin: 0px;

		}

		body{
			margin-top:5px;
			font-family:Times, "Times New Roman", Georgia, serif;
		}		

			.footer {
				margin-top:20px;
				width:100%;
				background-color: #ebebeb;
				padding:5px;
				position:absolute;
				bottom:0;
			}

		

		.cabecalho {    
			padding:10px;
			margin-bottom:30px;
			width:100%;
			font-family:Times, "Times New Roman", Georgia, serif;
		}

		.titulo_cab{
			color:#0340a3;
			font-size:20px;
		}

		
		
		.titulo{
			margin:0;
			font-size:28px;
			font-family:Arial, Helvetica, sans-serif;
			color:#6e6d6d;

		}

		.subtitulo{
			margin:0;
			font-size:12px;
			font-family:Arial, Helvetica, sans-serif;
			color:#6e6d6d;
		}



		hr{
			margin:8px;
			padding:0px;
		}


		
		.area-cab{
			
			display:block;
			width:100%;
			height:10px;

		}

		
		.coluna{
			margin: 0px;
			float:left;
			height:30px;
		}

		.area-tab{
			
			display:block;
			width:100%;
			height:30px;

		}


		.imagem {
			width: 160px;
			position:absolute;
			right:20px;
			top:10px;
		}

		.titulo_img {
			position: absolute;
			margin-top: 10px;
			margin-left: 10px;

		}

		.data_img {
			position: absolute;
			margin-top: 40px;
			margin-left: 10px;
			border-bottom:1px solid #000;
			font-size: 10px;
		}

		.endereco {
			position: absolute;
			margin-top: 50px;
			margin-left: 10px;
			border-bottom:1px solid #000;
			font-size: 10px;
		}

		.verde{
			color:green;
		}



		table.borda {
    		border-collapse: collapse; /* CSS2 */
    		background: #FFF;
    		font-size:12px;
    		vertical-align:middle;
		}
 
		table.borda td {
		    border: 1px solid #dbdbdb;
		}
		 
		table.borda th {
		    border: 1px solid #dbdbdb;
		    background: #ededed;
		    font-size:13px;
		}

		table{
			width:100%;
			text-align: center;
		}


		.esquerda{
			display:inline;
			width:50%;
			float:left;
		}

		.direita{
			display:inline;
			width:50%;
			float:right;
		}

		.text-danger{
			color:red;
		}
				

	</style>

</head>
<body>	

	<div class="titulo_cab titulo_img"><u>Fluxo de Caixa</u></div>	
	<div class="data_img"><?php echo mb_strtoupper($data_hoje) ?></div>

	<img class="imagem" style="height: 50; width:auto" src="<?php echo $url_sistema ?>/sistema/images/logos/<?php echo $logo_rel ?>">

	
	<br><br><br>
	<div class="cabecalho" style="border-bottom: solid 1px #0340a3">
	</div>

	<div class="mx-2" style="margin:0px 10px">

	

		<small><small><small>
			<div class="row">
				<div class="col-sm-6 esquerda">	
					<span class=""> <b> Caixa : </b> <span class=""><?php echo $nome_caixa ?></span> </span>

					<span class=""> <b> Operador : </b> <span class=""><?php echo $nome_operador ?></span> </span>

					
				</div>
				<div class="col-sm-6 direita" align="right">

				<span class=""> <b>Valor Quebra : </b> <span class="text-danger">R$ <?php echo $valor_quebra ?></span> </span>

				<span class=""> <b>Sangrias : </b> <span class="text-success">R$ <?php echo $valor_sangria ?></span> </span>

					<span class=""> <b> Total Vendido :</b><span class="<?php echo $classeSaldo ?>"> R$ <?php echo $total_vendido ?></span>  </span>
				</div>
			</div>
		</small></small></small>

		
		<br>


		<small><small><small>
			<div class="row">
				<div class="col-sm-6 esquerda">	
					<span class=""> <b> Data Abertura : </b> <span class=""><?php echo $data_ab ?></span> </span>

					<span class=""> <b> Hora Abertura : </b> <span class=""><?php echo $hora_ab ?></span> </span>

					
				</div>
				<div class="col-sm-6 direita" align="right">

				<span class=""> <b>Gerente Abertura : </b> <span ><?php echo $gerente_ab ?></span> </span>	
					<span class=""> <b> Valor Abertura :</b><span class=""> R$ <?php echo $valor_ab ?></span>  </span>
				</div>
			</div>
		</small></small></small>

		<br>


		<small><small><small>
			<div class="row">
				<div class="col-sm-6 esquerda">	
					<span class=""> <b> Data Fechamento : </b> <span class=""><?php echo $data_fec ?></span> </span>

					<span class=""> <b> Hora Fechamento : </b> <span class=""><?php echo $hora_fec ?></span> </span>

					
				</div>
				<div class="col-sm-6 direita" align="right">

				<span class=""> <b>Gerente Fechamento : </b> <span ><?php echo $gerente_fec ?></span> </span>	
					<span class=""> <b> Valor Fechamento :</b><span class=""> R$ <?php echo $valor_fec ?></span>  </span>
				</div>
			</div>
		</small></small></small>

		<br>

	</div>




	<div class="cabecalho" style="border-bottom: solid 1px #0340a3">
	</div>








	<div class="mx-2" style="margin:0px 10px">


		<?php 
		
		$query = $pdo->query("SELECT * FROM receber where empresa = '$id_empresa' and tipo = 'Venda' and id_ref = '$id' ORDER BY id desc");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	$total_reg = @count($res);
	if($total_reg > 0){
		 ?>

	<table class="table table-striped borda" cellpadding="6">
  <thead>
    <tr>
      	<th>Valor</th>	
		<th class="esc">Data</th>	
		<th class="esc">Hora</th>
		<th class="esc">Pagamento</th>	
		<th>Pago</th>
    </tr>
  </thead>
  <tbody>

  	<?php 
for($i=0; $i < $total_reg; $i++){	
$valor = $res[$i]['valor'];
$data = $res[$i]['data_lanc'];
$hora = $res[$i]['hora'];
$pagamento = $res[$i]['saida'];
$pago = $res[$i]['pago'];

if($pago == 'Sim'){
	$classe_pago = 'text-verde';	
	$imagem = 'verde.jpg';
}else{
	$classe_pago = 'text-danger';	
	$imagem = 'vermelho.jpg';
}

	
$dataF = implode('/', array_reverse(explode('-', $data)));
$valorF = number_format( $valor , 2, ',', '.');
	
  	 ?>

    <tr >
      <tr>
<td class="">R$ <?php echo $valorF ?></td>
<td class="esc"><?php echo $dataF ?></td>
<td class="esc"><?php echo $hora ?></td>
<td class="esc"><?php echo $pagamento ?></td>
<td class="esc"><img src="<?php echo $url_sistema ?>img/<?php echo $imagem ?>" width="10px" height="10px" style="margin-top: 4px"></td>

    </tr>

<?php } ?>
  
  </tbody>
</table>

<?php }else{
echo '<small>Não foi efetuada nenhuma venda!</small>';
exit();
} ?>

	</div>








	<div class="footer"  align="center">
		<span style="font-size:10px"><?php echo $nome_sistema ?> Telefone: <?php echo $telefone_sistema ?></span> 
	</div>

</body>
</html>