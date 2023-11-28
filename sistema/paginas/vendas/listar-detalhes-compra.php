<?php 
$tabela = 'detalhes_grade';
require_once("../../../conexao.php");
$data_hoje = date('Y-m-d');

$id_empresa = $_POST['id_empresa'];

$id_conta = @$_POST['idconta'];

echo <<<HTML
<small>
	<table class="table table-hover">
	<thead> 
	<tr style="background: #e3e3e3"> 
	<th>Produto</th>
	<th class="esc">Quantidade</th> 
	<th class="esc">Grade</th> 			
	</tr> 
	</thead> 
	<tbody>	
HTML;


$query_item = $pdo->query("SELECT * FROM itens_venda where venda = '$id_conta'");
$res_item = $query_item->fetchAll(PDO::FETCH_ASSOC);
$total_reg_item = @count($res_item);
for($i2=0; $i2 < $total_reg_item; $i2++){
$id_item = $res_item[$i2]['id'];
$produto = $res_item[$i2]['produto'];
$quantidade = $res_item[$i2]['quantidade'];

$query2 = $pdo->query("SELECT * FROM produtos where id = '$produto'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
if(@count($res2) > 0){
	$nome_produto = $res2[0]['nome'];
}else{
	$nome_produto = '';
}

$detalhes_da_grade = 'Sem Grade';
$query = $pdo->query("SELECT * FROM $tabela where empresa = '$id_empresa' and id_ref = '$id_item' and tipo = 'Venda'");

$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = @count($res);
if($total_reg > 0){

for($i=0; $i < $total_reg; $i++){	
$id = $res[$i]['id'];
$cat_grade = $res[$i]['cat_grade'];
$cat_grade2 = $res[$i]['cat_grade2'];
$itens_grade = $res[$i]['itens_grade'];
$itens_grade2 = $res[$i]['itens_grade2'];


$query2 = $pdo->query("SELECT * FROM cat_grade where id = '$cat_grade'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
if(@count($res2) > 0){
	$nome_grade = $res2[0]['nome'];
}else{
	$nome_grade = '';
}


$query2 = $pdo->query("SELECT * FROM cat_grade where id = '$cat_grade2'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
if(@count($res2) > 0){
	$nome_grade2 = $res2[0]['nome'];
}else{
	$nome_grade2 = '';
}


$query2 = $pdo->query("SELECT * FROM itens_grade where id = '$itens_grade'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
if(@count($res2) > 0){
	$nome_itens_grade = $res2[0]['nome'];
}else{
	$nome_itens_grade = '';
}


$query2 = $pdo->query("SELECT * FROM itens_grade where id = '$itens_grade2'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
if(@count($res2) > 0){
	$nome_itens_grade2 = $res2[0]['nome'];
}else{
	$nome_itens_grade2 = '';
}

$detalhes_da_grade = $nome_grade.' '.$nome_itens_grade.' '.$nome_grade2.' '.$nome_itens_grade2;

}

}

echo <<<HTML
<tr class="">
<td>{$nome_produto}</td> 
<td class="esc">{$quantidade}</td>	
<td class="esc">{$detalhes_da_grade}</td>
			
</tr>
HTML;

}


echo <<<HTML
</tbody>
<small><div align="center" id="mensagem-excluir"></div></small>
</table>

</small>
HTML;





 ?>




