<?php
    require_once("conexao.php");

    $senha = 123;
    @$senha_crip = md5($senha);

    //Criar um usuário caso não tenha nenhum | Adm SaaS
    $query = $pdo->query("SELECT * FROM usuarios where nivel = 'SAS'");
    $res = $query-> fetchAll(PDO::FETCH_ASSOC);
    $total_reg = @count($res);

    if($total_reg == 0){
        $pdo->query("INSERT INTO usuarios SET   empresa = '0', nome = 'Administrador SaaS', cpf = '000.000.000-00', email = 'admsaas0@gmail.com', 
                                                senha = '$senha', senha_crip = '$senha_crip', ativo = 'Sim', foto = 'sem-foto.jpg', nivel = 'SAS' ");
    }

   // Criar uma empresa de teste caso não tenha nenhuma 
    $query = $pdo->query("SELECT * FROM empresas");
    $res = $query-> fetchAll(PDO::FETCH_ASSOC);
    $total_reg = @count($res);

    if($total_reg == 0){
        $pdo->query("INSERT INTO empresas SET  nome = 'Empresa Teste', telefone = '(00) 00000-0000', email = 'teste@hotmail.com', ativo = 'Sim', data_cad = curDate()");
        $id_empresa = $pdo->lastInsertId();
        
        //Atribuindo usuário a empresa
        $pdo->query("INSERT INTO usuarios SET   empresa = '$id_empresa', nome = 'Administrador', cpf = '111.111.111-11', email = 'teste@hotmail.com', senha = '$senha', 
                                                senha_crip = '$senha_crip', ativo = 'Sim', foto = 'sem-foto.jpg', nivel = 'Administrador', data = curDate() ");
    } 
?>

<!DOCTYPE html><html class=''>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
<meta charset='UTF-8'><meta name="robots" content="noindex">
<link rel="shortcut icon" type="image/x-icon" href="img/icone - login.png" />
<link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
<link rel="canonical" href="https://codepen.io/dpinnick/pen/LjdLmo?limit=all&page=21&q=service" />
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/login.css">
<title>MultiVendas</title>

</head><body>
        <!-- LOGIN MODULE -->
        <div class="login">
            <div class="wrap">
                <!-- TOGGLE -->
                <div id="toggle-wrap">
                    <div id="toggle-terms">
                        <div id="cross">
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>
                <!-- TERMS -->
                <div class="terms">
                    <h2>Termos de Uso</h2>
                    <p class="small">Última modoficação: 28 de Novembro, 2023</p>
                    <h3>Bem-Vindo a MultiVendas</h3>
                    <p>Ao utilizar nossos serviços, você concorda com estes termos. Por favor, leia-os com atenção.</p>
                    <p>Nossos serviços são muito diversos, portanto, às vezes, termos adicionais ou requisitos de produto (incluindo requisitos de idade) podem ser aplicados. Termos adicionais estarão disponíveis com os Serviços relevantes, e esses termos adicionais tornar-se-ão parte do seu contrato conosco se você usar esses Serviços.</p>
                    <h3>Termos e Condições</h3>
                    <p>Estes termos e condições ("Termos", "Contrato") são um contrato entre a MultiVendas Tecnologia de Software. ("MultiVendas Tecnologia de Software, LTDA.", "Nos", "nós" ou "nosso") e você ("Usuário", "você" ou "seu"). </p>
                    <p>Este Contrato estabelece os termos e condições gerais de uso do MultiVendas | Sistema de Gestão de estoque e venda e qualquer um de seus produtos ou serviços (coletivamente, "Aplicativo para celular ou computador" ou "Serviços").</p>
                    <p>Em conexão com o seu uso dos Serviços, poderemos enviar-lhe anúncios de serviços, mensagens administrativas e outras informações. Você pode cancelar algumas dessas comunicações. Só entrar em contato com nosso suporte.</p>
                    <h3>Contas e Associação</h3>
                    <p>Se você decidir criar uma conta em nosso Sistema, assume a responsabilidade integral pela segurança da sua conta e por todas as atividades associadas a ela, bem como por qualquer ação relacionada.</p>
                    <p>O fornecimento de informações de contato falsas, de qualquer natureza, pode resultar no encerramento da sua conta. É fundamental que nos informe imediatamente sobre qualquer uso não autorizado da sua conta ou qualquer violação de segurança.</p>
                    <p>Ressaltamos que não seremos responsáveis por quaisquer ações ou omissões da sua parte, incluindo quaisquer danos resultantes de tais ações ou omissões. </p>
                    <h3>Faturamento e Pagamentos</h3>
                    <p>Você deve pagar todas as taxas ou encargos à sua conta de acordo com as taxas, encargos e termos de cobrança em vigor no momento em que uma taxa ou encargo é devido e pagável.</p>
                    <p>Nos casos em que os Serviços são oferecidos em uma versão de avaliação gratuita, o pagamento pode ser solicitado após o término do período de avaliação gratuita, e não quando você insere seus detalhes de cobrança (que podem ser necessários antes do início do período de avaliação gratuita).</p>
                    <p>Se a renovação automática estiver ativada para os Serviços pelos quais você se inscreveu, você será cobrado automaticamente de acordo com o termo que você selecionou.</p>
                    <p>A troca de dados confidenciais entre a página Web e seus Usuários ocorre através de um canal de comunicação seguro e é criptografada.</p>
                    <p>Se, a nosso critério, sua compra constituir uma transação de alto risco, solicitaremos que você nos forneça uma cópia da sua identificação com foto emitida pelo governo e possivelmente uma cópia de um extrato bancário recente do cartão de crédito ou débito usado na compra.</p>
                    <p>Reservamo-nos o direito de alterar produtos e preços de produtos a qualquer momento.</p>
                    <p>Também nos reservamos o direito de recusar qualquer pedido que você fizer conosco.</p>
                    <p>Podemos, a nosso exclusivo critério, limitar ou cancelar as quantidades compradas por pessoa, por família ou por pedido.</p>
                    <p>Essas restrições podem incluir pedidos feitos por ou sob a mesma conta de cliente, o mesmo cartão de crédito e / ou pedidos que usam o mesmo endereço de cobrança e / ou entrega.</p>
                    <p>Caso façamos uma alteração ou cancelemos um pedido, podemos tentar notificá-lo entrando em contato com o e-mail e / ou o endereço de cobrança / número de telefone fornecido no momento em que o pedido foi feito.</p>
                    <h3>Precisão das informações</h3>
                    <p>Ocasionalmente, pode haver informações no sistema que contenham erros tipográficos, imprecisões ou omissões que possam estar relacionadas a promoções e ofertas.</p>
                    <p>Reservamo-nos o direito de corrigir quaisquer erros, imprecisões ou omissões e de alterar ou atualizar informações ou cancelar pedidos se alguma informação no Sistema ou em qualquer Serviço relacionado for imprecisa a qualquer momento, sem aviso prévio (inclusive após o envio do pedido).</p>
                    <p>Não assumimos nenhuma obrigação de atualizar, alterar ou esclarecer informações no Sistema, incluindo, sem limitação, informações sobre preços, exceto conforme exigido por lei.</p>
                    <p>Nenhuma data de atualização ou atualização especificada aplicada no Sistema deve ser tomada para indicar que todas as informações no Sistema ou em qualquer Serviço relacionado foram modificadas ou atualizadas.</p>
                    <h3>Serviços terceirizados</h3>
                    <p>Se você decidir ativar, acessar ou usar serviços de terceiros, saiba que seu acesso e uso de outros serviços são regidos apenas pelos termos e condições de tais outros serviços, e nós não apoiamos, não somos responsáveis por, e não se responsabiliza por nenhum aspecto de outros serviços, incluindo, sem limitação, seu conteúdo ou a maneira como eles lidam com dados (incluindo seus dados) ou qualquer interação entre você e o provedor de outros serviços.</p>
                    <p>Você renuncia irrevogavelmente a qualquer reclamação contra a MultiVendas Tecnologia de Software em relação a outros serviços.</p>
                    <p>MultiVendas Tecnologia de Software não se responsabiliza por qualquer dano ou perda causada ou supostamente causada por ou em conexão com a sua ativação, acesso ou uso de quaisquer outros serviços ou sua confiança nas práticas de privacidade, processos de segurança de dados ou outras políticas desses outros serviços.</p>
                    <p>Pode ser necessário que você se registre ou faça login em outros serviços em seus respectivos aplicativos móveis. Ao ativar outros serviços, você está permitindo expressamente a MultiVendas Tecnologia de Software divulgar seus dados conforme necessário para facilitar o uso ou a habilitação de outro serviço.</p>
                    <h3>Utilizações Proibidas</h3>
                    <p>Além de outros termos estabelecidos no Contrato, você está proibido de usar o Sistema ou seu Conteúdo: (a) para qualquer finalidade ilegal; (b) solicitar a terceiros que realizem ou participem de atos ilegais; (c) violar quaisquer regulamentos, regras, leis ou ordenanças locais, internacionais, federais, provinciais ou estaduais; (d) infringir ou violar nossos direitos de propriedade intelectual ou direitos de propriedade intelectual de terceiros; (e) assediar, abusar, insultar, prejudicar, difamar, caluniar, depreciar, intimidar ou discriminar com base em gênero, orientação sexual, religião, etnia, raça, idade, nacionalidade ou deficiência; (f) enviar informações falsas ou enganosas; (g) carregar ou transmitir vírus ou qualquer outro tipo de código malicioso que possa ou possa ser usado de qualquer maneira que afete a funcionalidade ou operação do Serviço ou de qualquer aplicativo móvel relacionado, outros aplicativos móveis ou a Internet; (h) coletar ou rastrear as informações pessoais de terceiros; (i) enviar spam, phishing, pharm, pretexto, aranha, rastejar ou raspar; (j) para qualquer finalidade obscena ou imoral; ou (k) interferir ou contornar os recursos de segurança do Serviço ou qualquer aplicativo móvel relacionado, outros aplicativos móveis ou a Internet. </p>
                    <p>Reservamo-nos o direito de encerrar o uso do Serviço ou qualquer aplicativo móvel relacionado por violar qualquer um dos usos proibidos. phish, pharm, pretexto, aranha, rastejar ou raspar; (j) para qualquer finalidade obscena ou imoral; ou (k) interferir ou contornar os recursos de segurança do Serviço ou qualquer aplicativo móvel relacionado, outros aplicativos móveis ou a Internet. </p>
                    <p>Reservamo-nos o direito de encerrar o uso do Serviço ou qualquer aplicativo móvel relacionado por violar qualquer um dos usos proibidos. phish, pharm, pretexto, aranha, rastejar ou raspar; (j) para qualquer finalidade obscena ou imoral; ou (k) interferir ou contornar os recursos de segurança do Serviço ou qualquer aplicativo móvel relacionado, outros aplicativos móveis ou a Internet.</p>
                    <p>Reservamo-nos o direito de encerrar o uso do Serviço ou qualquer aplicativo móvel relacionado por violar qualquer um dos usos proibidos.</p>
                    <h3>Direito de Propriedade Intelectual</h3>
                    <p>Este Contrato não transfere para você nenhuma propriedade intelectual de propriedade da MultiVendas Tecnologia de Software ou terceiros, e todos os direitos, títulos e interesses de e para tais propriedades permanecerão (como entre as partes) unicamente com a MultiVendas Tecnologia de Software.</p>
                    <p>Todas as marcas comerciais, marcas de serviço, gráficos e logotipos usados em conexão com nossos Aplicativos ou Serviços Móveis são marcas comerciais ou marcas registradas da MultiVendas Tecnologia de Software ou MultiVendas Tecnologia de Software licenciadores.</p>
                    <p>Outras marcas comerciais, marcas de serviço, gráficos e logotipos usadas em conexão com nosso Sistema podem ser marcas comerciais de outros terceiros. O uso de nosso Sistema não concede a você direito ou licença para reproduzir ou usar qualquer MultiVendas Tecnologia de Software ou marcas comerciais de terceiros.</p>
                    <h3>Divisibilidade</h3>
                    <p>Todos os direitos e restrições contidos neste Contrato podem ser exercidos e devem ser aplicáveis e vinculativos somente na medida em que não violem nenhuma lei aplicável e se destinem a ser limitados na extensão necessária para que não tornem este Contrato ilegal, inválido ou inexequível.</p>
                    <p>Se qualquer disposição ou parte de qualquer disposição deste Contrato for considerada ilegal, inválida ou inexequível por um tribunal de jurisdição competente, é intenção das partes que as demais disposições ou partes dele constituam seu acordo com relação ao objeto deste e todas as demais disposições ou partes delas permanecerão em pleno vigor e efeito.</p>
                    <h3>Alterações e alterações</h3>
                    <p>Reservamo-nos o direito de modificar este Contrato ou suas políticas relacionadas ao Sistema ou Serviços a qualquer momento, a partir da publicação de uma versão atualizada deste Contrato no Sistema.</p>
                    <p>Quando o fizermos, revisaremos a data atualizada na parte inferior desta página. O uso continuado do Sistema após essas alterações constituirá seu consentimento para tais alterações.</p>
                    <h3>Aceitação Desses Termos</h3>
                    <p>Você reconhece que leu este Contrato e concorda com todos os seus termos e condições. Ao usar o Sistema ou seus Serviços, você concorda em ficar vinculado por este Contrato.</p>
                    <p>Se você não concordar com os termos deste Contrato, não está autorizado a usar ou acessar o Sistema e seus Serviços.</p>
                    <h3>Contatando-nos</h3>
                    <p>Se você tiver alguma dúvida sobre este Contrato, entre em contato conosco pelo e-mail: multivendastec@gmail.com ou WhatsApp de um de nossos membros: </p>
                    <p>(24) 99884-6612 – Everton L. Medeiros </p>
                    <p>(24) 99999-7401 – Gabriel H. M. G. Romera</p>
                    <p>(24) 99220-9461 – Jonathan P. da Cruz </p>
                    <p>(24) 99884-2664 – Matheus de A. Moreira</p>
                </div>

                <!-- RECOVERY -->
                <div class="recovery">
                    <h2>Recuperar Senha</h2>
                    <p>Digite o <strong>endereço de email</strong> da conta e <strong>clique em enviar</strong></p>
                    <form class="recovery-form" action="recuperar-senha.php" method="post">
                        <input type="email" class="input" name="email" id="email-recuperar" placeholder="Insira email aqui" required>
                        <input type="submit" class="button" value="Enviar">
                        <input type="hidden" name="env" value="form">
                    </form>
                    <p class="mssg"></p>
                    <?php
                        // Incluir a função
                        require_once "recuperar-senha.php";
                        // Verificar se o formulário foi enviado
                        if (isset($_POST["env"]) && $_POST["env"] == "form") {
                            // Chamar a função passando o email do usuário como parâmetro
                            recuperar_senha($_POST["email"]);
                        }
                    ?>
                </div>

                <!-- SLIDER -->
                <div class="content">
                    <!-- LOGO -->
                    <div class="logo">
                        <a href="#"><img src="img/logo-login.png" alt=""></a>
                    </div>
                    <!-- SLIDESHOW -->
                    <div id="slideshow">
                        <div class="one">
                            <h2><span>EVENTS</span></h2>
                            <p>Sign up to attend any of hundreds of events nationwide</p>
                        </div>
                        <div class="two">
                            <h2><span>LEARNING</span></h2>
                            <p>Thousands of instant online classes/tutorials included</p>
                        </div>
                        <div class="three">
                            <h2><span>GROUPS</span></h2>
                            <p>Create your own groups and connect with others that share your interests</p>
                        </div>
                        <div class="four">
                            <h2><span>SHARING</span></h2>
                            <p>Share your works and knowledge with the community on the public showcase section</p>
                        </div>
                    </div>
                </div>
                <!-- LOGIN FORM -->
                <div class="user">
                    <!-- ACTIONS
                    <div class="actions">
                        <a class="help" href="#signup-tab-content">Sign Up</a><a class="faq" href="#login-tab-content">Login</a>
                    </div>
                    -->
                    <div class="form-wrap">
                        <!-- TABS -->
                    	<div class="tabs">
                            <h3 class="login-tab"><a class="log-in active" href="#login-tab-content"><span>Entrar<span></a></h3>
                    		<h3 class="signup-tab"><a class="sign-up" href="#signup-tab-content"><span>Cadastre-se</span></a></h3>
                    	</div>
                        <!-- TABS CONTENT -->
                    	<div class="tabs-content">
                            <!-- TABS CONTENT LOGIN -->
                    		<div id="login-tab-content" class="active">
                    			<form class="login-form" action="autenticar.php" method="post">
                    				<input type="text" class="input" name="usuario" id="user_login" placeholder="Email ou CPF">
                    				<input type="password" class="input" name="senha" id="user_pass"  placeholder="Senha">
                    				<!--<input type="checkbox" class="checkbox" checked id="remember_me"> -->
                    				<!-- <label for="remember_me">Remember me</label> -->
                    				<input type="submit" class="buton" value="Login">
                    			</form>
                    			<div class="help-action">
                    				<p><i class="fa fa-arrow-left" aria-hidden="true"></i><a class="forgot" href="#">Esqueceu sua senha?</a></p>
                    			</div>
                    		</div>
                            <!-- TABS CONTENT SIGNUP -->
                    		<div id="signup-tab-content">
                    			<form class="signup-form" action="cadastro.php" method="post">
                    				<input type="text" class="input" name="nome" id="user" autocomplete="off" placeholder="Usuário" required>
                                    <input type="text" class="input" name="cpf" id="user_cpf" autocomplete="off" placeholder="CPF/CNPJ" maxlength="14" required>
                    				<input type="email" class="input" name="email" id="user_email" autocomplete="off" placeholder="E-mail" required>
                    				<input type="password" class="input" name="senha" id="user_pass" autocomplete="off" placeholder="Senha" required>
                    				<input type="submit" class="buton" value="Cadastrar">
                    			</form>
                    			<div class="help-action">
                    				<p>Ao se inscrever, você concorda com nossos</p>
                    				<p><i class="fa fa-arrow-left" aria-hidden="true"></i><a class="agree" href="#">Termos de serviço</a></p>
                    			</div>
                    		</div>
                    	</div>
                	</div>
                </div>
            </div>
        </div>

<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script >/* LOGIN - MAIN.JS - dp 2017 */



// LOGIN TABS
$(function() {
	var tab = $('.tabs h3 a');
	tab.on('click', function(event) {
		event.preventDefault();
		tab.removeClass('active');
		$(this).addClass('active');
		tab_content = $(this).attr('href');
		$('div[id$="tab-content"]').removeClass('active');
		$(tab_content).addClass('active');
	});
});

// SLIDESHOW
$(function() {
	$('#slideshow > div:gt(0)').hide();
	setInterval(function() {
		$('#slideshow > div:first')
		.fadeOut(1000)
		.next()
		.fadeIn(1000)
		.end()
		.appendTo('#slideshow');
	}, 3850);
});

// CUSTOM JQUERY FUNCTION FOR SWAPPING CLASSES
(function($) {
	'use strict';
	$.fn.swapClass = function(remove, add) {
		this.removeClass(remove).addClass(add);
		return this;
	};
}(jQuery));

// SHOW/HIDE PANEL ROUTINE
$(function() {
	$('.agree,.forgot, #toggle-terms, .log-in, .sign-up').on('click', function(event) {
		event.preventDefault();
		var terms = $('.terms'),
        recovery = $('.recovery'),
        close = $('#toggle-terms'),
        arrow = $('.tabs-content .fa');
		if ($(this).hasClass('agree') || $(this).hasClass('log-in') || ($(this).is('#toggle-terms')) && terms.hasClass('open')) {
			if (terms.hasClass('open')) {
				terms.swapClass('open', 'closed');
				close.swapClass('open', 'closed');
				arrow.swapClass('active', 'inactive');
			} else {
				if ($(this).hasClass('log-in')) {
					return;
				}
				terms.swapClass('closed', 'open').scrollTop(0);
				close.swapClass('closed', 'open');
				arrow.swapClass('inactive', 'active');
			}
		}
		else if ($(this).hasClass('forgot') || $(this).hasClass('sign-up') || $(this).is('#toggle-terms')) {
			if (recovery.hasClass('open')) {
				recovery.swapClass('open', 'closed');
				close.swapClass('open', 'closed');
				arrow.swapClass('active', 'inactive');
			} else {
				if ($(this).hasClass('sign-up')) {
					return;
				}
				recovery.swapClass('closed', 'open');
				close.swapClass('closed', 'open');
				arrow.swapClass('inactive', 'active');
			}
		}
	});
});

// DISPLAY MSSG
$(function() {
	$('.recovery .button').on('click', function(event) {
		event.preventDefault();
		$('.recovery .mssg').addClass('animate');
		setTimeout(function() {
			$('.recovery').swapClass('open', 'closed');
			$('#toggle-terms').swapClass('open', 'closed');
			$('.tabs-content .fa').swapClass('active', 'inactive');
			$('.recovery .mssg').removeClass('animate');
		}, 2500);
	});
});

// DISABLE SUBMIT FOR DEMO
$(function() {
	$('.button').on('click', function(event) {
		$(this).stop();
		event.preventDefault();
		return false;
	});
});
//# sourceURL=pen.js
</script>



<script type="text/javascript">
  $("#form-recuperar").submit(function () {

    event.preventDefault();
    var formData = new FormData(this);

    $.ajax({
      url: "recuperar-senha.php",
      type: 'POST',
      data: formData,

      success: function (mensagem) {
        $('#mensagem-recuperar').text('');
        $('#mensagem-recuperar').removeClass()
        if (mensagem.trim() == "Recuperado com Sucesso") {
          //$('#btn-fechar-rec').click();         
          $('#email-recuperar').val('');
          $('#mensagem-recuperar').addClass('text-success')
          $('#mensagem-recuperar').text('Sua Senha foi enviada para o Email')     

        } else {

          $('#mensagem-recuperar').addClass('text-danger')
          $('#mensagem-recuperar').text(mensagem)
        }


      },

      cache: false,
      contentType: false,
      processData: false,

    });

  });
</script>
</body>
</html>
