<?php 
$pag = 'forma_pgtos';

//verificar se ele tem a permissão de estar nessa página
if(@$formas_pgto == 'ocultar'){
    echo "<script>window.location='../index.php'</script>";
    exit();
}


 ?>

 <a class="btn btn-primary" onclick="inserir()" class="btn btn-primary btn-flat btn-pri"><i class="fa fa-plus" aria-hidden="true"></i> Nova Forma PGTO</a>


<div class="bs-example widget-shadow" style="padding:15px" id="listar">
	
</div>



<!-- Modal Inserir/Editar -->
<div class="modal fade" id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="exampleModalLabel"><span id="titulo_inserir"></span></h4>
				<button id="btn-fechar" type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -25px">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form id="form">
			<div class="modal-body">
				

					<div class="row">
						<div class="col-md-4">							
								
								<input type="text" class="form-control" id="nome" name="nome" placeholder="Forma de Pagamento" required>							
						</div>

						<div class="col-md-5">							
								
								<input type="number" class="form-control" id="acrescimo" name="acrescimo" placeholder="Acréscimo em % (Cartão)" value="0">							
						</div>

					</div>

					<div class="row">
					<div class="col-md-3">										
								<button type="submit" class="btn btn-primary" style="margin-top:20px">Salvar</button>							
						</div>
					</div>

				


					<input type="hidden" name="id" id="id">
					<input type="hidden" name="id_empresa" id="id_empresa">
				

				<br>
				<small><div id="mensagem" align="center"></div></small>
			</div>
			
			</form>
		</div>
	</div>
</div>




<script type="text/javascript">var pag = "<?=$pag?>"</script>
<script src="js/ajax.js"></script>