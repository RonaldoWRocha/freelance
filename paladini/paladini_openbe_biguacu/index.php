<html lang="pt-br">

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/style.css">
	<script type="text/javascript" src="assets/js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.js"></script>
	<script type="text/javascript" src="assets/js/jquery.mask.js"></script>
	<title>Exemplos Oficiais da API Gerencianet | Gerencianet</title>
	<link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">
</head>

<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="./">
					<img src="./assets/img/marca-gerencianet.svg" alt="Gerencianet - Conceito em Pagamentos" width="218" height="31">
				</a>
			</div>


			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">

					<li class=""><a href="https://dev.gerencianet.com.br/docs" target="_blank" title="Documentação Oficial da API Gerencianet">Documentação Oficial da API Gerencianet</a></li>

				</ul>

				<ul class="nav navbar-nav pull-right">
					<li><a target="blank" href="https://gerencianet.com.br/#login">Entrar</a>
					</li>
					<li><a target="blank" class="destaque" href="https://gerencianet.com.br/#abrirconta">Abra sua conta</a>
					</li>
				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="container-fluid">

		<section class="text-center">
			<h3>Repositório de exemplos de integrações com a API da Gerencianet</h3>
			<p class="lead">Se você é um desenvolvedor e pretende integrar seu site a um sistema completo de gestão de cobranças, você está no lugar certo!</p>
			<p class="lead">Para utilizar os exemplos abaixo, basta ter ou <a href="https://login.gerencianet.com.br" target="_blank">abrir uma conta gratuita na Gerencianet</a>. Em seguida, <a href="https://sistema.gerencianet.com.br/login" target="_blank">logue em sua conta</a> e acesse <b>Minhas Aplicações</b> (<a href="https://s3-sa-east-1.amazonaws.com/pe85007/portal/wp-content/uploads/2018/07/api-nova-aplicacao-02.png" target="_blank" title="Menu Minhas Aplicações">?</a>) para criar sua aplicação. Você precisará informar o <b>Client_Id</b> e <b>Client_Secret</b> de sua aplicação (<a href="https://s3.amazonaws.com/gerencianet-pub-prod-1/printscreen/2021/02/25/matheus.rodrigues/95259b-d6f94497-7d4b-4317-8546-f8a2f24d9ac3.png" target="_blank" title="Veja onde localizar o Client_Id e Client_Secret">?</a>), de acordo com o ambiente que for utilizar (Produção ou Homologação). Para maiores detalhes, inclusive dos recursos oferecidos pela API, acesse a <a href="https://dev.gerencianet.com.br/docs" target="_blank" title="Documentação Oficial API Gerencianet">documentação oficial</a> da API Gerencianet.</p>
			<p class="lead">Por se tratar de exemplos meramente ilustrativos e de cunho educativo, é necessário que você adapte à sua necessidade. <strong>Não nos responsabilizamos pela utilização dos exemplos disponibilizados sem os ajustes necessários para o seu ambiente de produção.</strong></p>
			<p>
				<a href="./download/exemplos-integracoes.zip" class="btn btn-secondary">Baixar todos os exemplos <img style="width: 20px;" src="assets/img/cloud-computing.png"></a>
				<a href="https://github.com/gerencianet" target="_blank" class="btn btn-primary">Acessar repositório de SDKs <img style="width: 20px;" src="https://github.githubassets.com/pinned-octocat.svg"></a>
			</p>
		</section>

		<br>

		<div class="col-lg-12 col-md-12 col-sm-12">
			<h4 class="text-center">Selecione o exemplo desejado</h4>
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="well well-sm card ">
						<img class="card-img-top" width="100%" height="225" style="object-fit: cover;" src="assets/img/boleto.jpg">
						<div class="card-body">
							<h5 class="card-title">Boletos</h5>
							<p class="card-text">Neste exemplo você consegue emitir um boleto com o produto que você definir!</p>
							<a href="boleto" class="btn btn-primary btn-full btn-full btn-full">Visualizar Exemplo</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="well well-sm card ">
						<img class="card-img-top" width="100%" height="225" style="object-fit: cover;" src="assets/img/cartao.jpg">
						<div class="card-body">
							<h5 class="card-title">Cartão</h5>
							<p class="card-text">Neste exemplo você consegue emitir uma cobrança de cartão com o produto que você definir!</p>
							<a href="cartao" class="btn btn-primary btn-full btn-full">Visualizar Exemplo</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="well well-sm card ">
						<img class="card-img-top" width="100%" height="225" style="object-fit: cover;" src="assets/img/pix.png">
						<div class="card-body">
							<h5 class="card-title">Pix</h5>
							<p class="card-text">Neste exemplo você consegue emitir um QrCode Pix e o Pix Copia e Cola!</p>
							<a href="pix" class="btn btn-primary btn-full btn-full">Visualizar Exemplo</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="well well-sm card ">
						<img class="card-img-top" width="100%" height="225" style="object-fit: cover;" src="assets/img/assinatura.jpg">
						<div class="card-body">
							<h5 class="card-title">Assinaturas</h5>
							<p class="card-text">Neste exemplo você consegue criar um plano e realizar uma assinatura!</p>
							<a href="assinatura" class="btn btn-primary btn-full btn-full">Visualizar Exemplo</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="well well-sm card ">
						<img class="card-img-top" width="100%" height="225" style="object-fit: cover;" src="assets/img/carne.jpg">
						<div class="card-body">
							<h5 class="card-title">Carnê</h5>
							<p class="card-text">Neste exemplo você consegue emitir um carnê com quantas parcelas desejar!</p>
							<a href="carne" class="btn btn-primary btn-full btn-full">Visualizar Exemplo</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="well well-sm card ">
						<img class="card-img-top" width="100%" height="225" style="object-fit: cover;" src="assets/img/link.png">
						<div class="card-body">
							<h5 class="card-title">Link de Pagamento</h5>
							<p class="card-text">Neste exemplo você consegue emitir um link de pagamento para ser pago via Boleto ou Cartão!</p>
							<a href="link" class="btn btn-primary btn-full btn-full">Visualizar Exemplo</a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="well well-sm card ">
						<img class="card-img-top" width="100%" height="225" style="object-fit: cover;" src="assets/img/marketplace.jpg">
						<div class="card-body">
							<h5 class="card-title">Marketplace (Split)</h5>
							<p class="card-text">Neste exemplo você consegue emitir uma cobrança e realizar o split do pagamento para outras contas Gerencianet!</p>
							<a href="marketplace" class="btn btn-primary btn-full btn-full">Visualizar Exemplo</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer>
		<img src="./assets/img/marca-gerencianet.svg" alt="Gerencianet - Conceito em Pagamentos" width="218" height="27">
		<div class="content-footer">
			© 2007-2016 Gerencianet. Todos os direitos reservados.<br />
			Gerencianet Pagamentos do Brasil Ltda. • CNPJ: 09.089.356/0001-18<br />
			Avenida Juscelino Kubitschek, 909 - Ouro Preto, Minas Gerais<br />
		</div>
	</footer>
</body>

</html>