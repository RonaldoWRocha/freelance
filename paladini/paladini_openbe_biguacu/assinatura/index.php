<html lang="pt-br">

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../assets/css/bootstrap.css">
	<link rel="stylesheet" href="../assets/css/style.css">
	<script type="text/javascript" src="../assets/js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript" src="../assets/js/bootstrap.js"></script>
	<script type="text/javascript" src="../assets/js/jquery.mask.js"></script>
	<script type="text/javascript" src="../assets/js/payment-token.js"></script>
	<script type="text/javascript" src="../assets/js/script-assinatura.js"></script>
	<title>Exemplos Oficiais da API Gerencianet | Gerencianet</title>
	<link rel="shortcut icon" href="../assets/img/favicon.png" type="image/x-icon">
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
				<a class="navbar-brand" href="../">
					<img src="../assets/img/marca-gerencianet.svg" alt="Gerencianet - Conceito em Pagamentos" width="218" height="31">
				</a>
			</div>


			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">

					<li class=""><a href="https://dev.gerencianet.com.br/docs" target="_blank" title="Documentação Oficial da API Gerencianet">Documentação Oficial da API Gerencianet</a></li>

				</ul>

				<ul class="nav navbar-nav pull-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Exemplos <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="../boleto/">Boletos</a></li>
							<li><a href="../cartao/">Cartão</a></li>
							<li><a href="../pix/">Pix</a></li>
							<li><a href="../assinatura/">Assinaturas</a></li>
							<li><a href="../carne/">Carnê</a></li>
							<li><a href="../link/">Link de Pagamento</a></li>
							<li><a href="../marketplace/">Marketplace (Split)</a></li>
						</ul>
					</li>
					<li role="separator" class="divider"></li>

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

	<div class="col-lg-6 col-md-6 col-sm-6">
		<h4>Exemplo de Integração: Emissão de Assinaturas</h4>
	</div>
	<div class="container-fluid">
		<div class="col-lg-4 col-md-4 col-sm-4">
			<h5>Forma de Pagamento</h5>
			<ul class="nav nav-tabs">
				<li role="presentation" class="active" id="boleto"><a href="#" class="boleto">Boleto</a></li>
				<li role="presentation" id="cartao"><a href="#" class="cartao">Cartão</a></li>
			</ul>
		</div>
		<div class="col-lg-12 col-md-12 col-sm-12">
			<div class="col-lg-9 well">
				<form id="form-info" method="post">
					<div class="col-lg-3">
						<h5>Informações da Assinatura</h5>
						<div class="form-group">
							<label for="assinatura-descricao">Nome do Plano de Assinatura: (<em class="atributo">name</em>)<br><strong class="ex">Ex: Plano de Internet</strong></label>
							<input type="text" id="assinatura-descricao" class="form-control" placeholder="Descrição do plano" required>
						</div>
						<div class="form-group">
							<label for="assinatura-interval">Intervalo (periodicidade) da cobrança: (<em class="atributo">interval</em>)<br><strong class="ex">Ex: Informe 1 para assinatura mensal</strong></label>
							<input type="text" id="assinatura-interval" class="form-control" required placeholder="Intervalo (em meses) da cobrança gerada">
						</div>
						<div class="form-group">
							<label for="assinatura-repeats">Quantas cobranças devem ser geradas: (<em class="atributo">repeats</em>)<br><strong class="ex">Ex: Este atributo "repeats" é opcional e neste exemplo optamos por não utilizá-lo. Caso queira utilizá-lo, veja <a href="https://dev.gerencianet.com.br/docs/criando-assinaturas#section-b-atributos-que-podem-ser-utilizados-para-criar-plano-de-assinatura-" target="_blank">neste link</a> como usar. Se nada for enviado, a cobrança é gerada por tempo indeterminado ou até que o plano seja cancelado.</strong></label>
						</div>
					</div>
					<div class="col-lg-3">
						<h5>Informações do produto/serviço</h5>
						<div class="form-group">
							<label for="item-name">Descrição do produto/serviço: (<em class="atributo">name</em>)<br><strong class="ex">Ex: 5 Mb de velocidade</strong></label>
							<input type="text" id="item-name" class="form-control" placeholder="Descrição do produto ou serviço" required>
						</div>
						<div class="form-group">
							<label for="item-value">Valor do produto/serviço: (<em class="atributo">value</em>)<br><strong class="ex">Ex: informar sem pontos ou vírgula (5000 equivale a R$ 50,00) (int) </strong></label>
							<input type="text" id="item-value" class="form-control" placeholder="Valor do produto " required>
						</div>
						<div class="form-group">
							<label for="item-amount">Quantidade de itens: (<em class="atributo">amount</em>)<br><strong class="ex">Ex: 1 (int)</strong></label>
							<input type="text" id="item-amount" class="form-control" required placeholder="Quantidade de itens">
						</div>
					</div>
				</form>
				<div class="col-lg-6">
					<form id="form-cartao" class="hide">
						<div class="col-lg-4">
							<h5 style="margin-top:0px;">Informações do Cliente</h5>
							<div class="form-group">
								<label for="customer-name">Nome do cliente: (<em class="atributo">name</em>)<br><strong class="ex">Ex: Gorbadoc Oldbuck</strong></label>
								<input type="text" id="customer-name" class="form-control" placeholder="Nome do cliente" required>
							</div>
							<div class="form-group">
								<label for="customer-cpf">CPF: (<em class="atributo">cpf</em>)<br><strong class="ex">Ex: 94271564656 (sem formatação) </strong></label>
								<input type="text" id="customer-cpf" class="form-control" placeholder="CPF " required>
							</div>
							<div class="form-group">
								<label for="customer-email">E-mail: (<em class="atributo">email</em>)<br><strong class="ex">Ex: gorbadoc.oldbuck@oldbuck.com.br</strong></label>
								<input type="email" id="customer-email" class="form-control" placeholder="E-mail" required>
							</div>
							<div class="form-group">
								<label for="customer-phone_number">Telefone: (<em class="atributo">phone_number</em>)<br><strong class="ex">Ex: 5144916523 (sem formatação)</strong></label>
								<input type="text" id="customer-phone_number" class="form-control" placeholder="Telefone" required>
							</div>
							<div class="form-group">
								<label for="customer-birth">Data de Nascimento: (<em class="atributo">birth</em>)<br><strong class="ex">Ex: 1990-01-01 (yyyy-mm-dd)</strong></label>
								<input type="text" id="customer-birth" class="form-control" placeholder="Data de nascimento" required>
							</div>
						</div>
						<div class="col-lg-4">
							<h5 style="margin-top:0px;">Informações do Endereço</h5>
							<div class="form-group">
								<label for="street">Endereço: (<em class="atributo">street</em>)<br><strong class="ex">Ex: Rua das Primaveras</strong></label>
								<input type="text" id="street" class="form-control" placeholder="Rua ou Av." required>
							</div>
							<div class="form-group">
								<label for="number">Número: (<em class="atributo">number</em>)<br><strong class="ex">Ex: 10</strong></label>
								<input type="text" id="number" class="form-control" placeholder="Número">
							</div>
							<div class="form-group">
								<label for="neighborhood">Bairro: (<em class="atributo">neighborhood</em>)<br><strong class="ex">Ex: Bauxita</strong></label>
								<input type="text" id="neighborhood" class="form-control" placeholder="Bairro">
							</div>
							<div class="form-group">
								<label for="zipcode">CEP: (<em class="atributo">zipcode</em>)<br><strong class="ex">Ex: 35400000</strong></label>
								<input type="text" id="zipcode" class="form-control" placeholder="CEP">
							</div>
							<div class="form-group">
								<label for="city">Cidade: (<em class="atributo">city</em>)<br><strong class="ex">Ex: Ouro Preto</strong></label>
								<input type="text" id="city" class="form-control" placeholder="Cidade">
							</div>
							<div class="form-group">
								<label for="state">Estado: (<em class="atributo">state</em>)<br><strong class="ex">Ex: MG</strong></label>
								<input type="text" id="state" class="form-control" placeholder="Estado">
							</div>
						</div>
						<div class="col-lg-4">
							<h5 style="margin-top:0px;">Informações do Cartão</h5>
							<div class="form-group">
								<label for="brand">Bandeira do Cartão: (<em class="atributo">brand</em>)<br><strong class="ex">Ex: Visa</strong></label>
								<select id="brand" class="form-control" required>
									<option value="" selected>Selecione um bandeira</option>
									<option value="visa">Visa</option>
									<option value="mastercard">MasterCard</option>
									<option value="amex">Amex</option>
									<option value="elo">Elo</option>
									<option value="hipercard">Hipercard</option>
								</select>
							</div>
							<div class="form-group">
								<label for="number">Número: (<em class="atributo">number</em>)<br><strong class="ex">Ex: 4012001038443335</strong></label>
								<input type="text" class="form-control atr-card" id="numero" name="number" required>
							</div>
							<div class="form-group">
								<label for="cvv">Código de segurança: (<em class="atributo">cvv</em>)<br><strong class="ex">Ex: 123</strong></label>
								<input type="text" class="form-control" id="cvv" max="3" required>
							</div>
							<div class="form-group">
								<label for="expiration_month">Mês de validade: (<em class="atributo">expiration_month</em>)<br><strong class="ex">Ex: 05</strong></label>
								<input type="text" class="form-control" id="expiration_month">
							</div>
							<div class="form-group">
								<label for="expiration_year">Ano de validade: (<em class="atributo">expiration_year</em>)<br><strong class="ex">Ex: 2022</strong></label>
								<input type="text" class="form-control" id="expiration_year" required>
							</div>
							<input type="hidden" id="token">
						</div>
					</form>

					<form id="form-boleto">
						<div class="col-lg-6">
							<h5 style="margin-top:0px;">Informações do Cliente</h5>
							<div class="form-group">
								<label for="customer-name-b">Nome do cliente: (<em class="atributo">name</em>)<br><strong class="ex">Ex: Gorbadoc Oldbuck</strong></label>
								<input type="text" id="customer-name-b" class="form-control" placeholder="Nome do cliente" required>
							</div>
							<div class="form-group">
								<label for="customer-cpf-b">CPF: (<em class="atributo">cpf</em>)<br><strong class="ex">Ex: 94271564656 (sem formatação) </strong></label>
								<input type="text" id="customer-cpf-b" class="form-control" placeholder="CPF " required>
							</div>
							<div class="form-group">
								<label for="customer-phoneNumber-b">Telefone: (<em class="atributo">phone_number</em>)<br><strong class="ex">Ex: 5144916523 (sem formatação)</strong></label>
								<input type="text" id="customer-phoneNumber-b" class="form-control" placeholder="Telefone" required>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="form-group">
								<label for="customer-birth">Data de vencimento: (<em class="atributo">expire_at</em>)<br><strong class="ex">Ex: 2021-12-15 (yyyy-mm-dd)</strong></label>
								<input type="text" id="expire_at" class="form-control" placeholder="Data de vencimento" required>
							</div>
						</div>
					</form>
				</div>
				<div class="col-lg-12">
					<button id="btn_emitir_assinatura" type="submit" class="btn btn-success">Emitir assinatura <img src="../assets/img/ok-mark.png"></button>
				</div>
			</div>

			<div class="col-lg-3">

				<div class="col-lg-12">
					<a href="../download/exemplo-assinatura.zip" class="btn btn-block btn-default">Baixar este exemplo <br> <img src="../assets/img/cloud-computing.png"></a>
				</div>

				<div style="margin-top: 20px;" class="col-lg-12 content-guidelines">
					<div class="alert alert-warning" role="alert">
						<strong>ATENÇÃO:</strong><br />
						<p>Para funcionamento deste exemplo, você deverá informar seu <a style="font-weight: bold;" href="http://content.screencast.com/users/tiagogerencianet/folders/Jing/media/78747741-cb11-44e3-9342-54cd7e5a2fd0/2016-08-02_1359.png" target="_blank">Client_Id</a> e <a style="font-weight: bold;" href="http://content.screencast.com/users/tiagogerencianet/folders/Jing/media/78747741-cb11-44e3-9342-54cd7e5a2fd0/2016-08-02_1359.png" target="_blank">Client_Secret</a> no arquivo "credentials.json", além de alterar o parâmetro "sandbox", de acordo com o ambiente utilizado ("sandbox => true" para desenvolvimento e "sandbox => false" para produção).</p>
					</div>
				</div>

				<div class="col-lg-12 content-guidelines">
					<div class="alert alert-warning" role="alert">
						<strong>ATENÇÃO:</strong><br />
						<p>Para funcionamento deste exemplo, você deverá informar seu <b>Identificador de Conta</b> (<a target="_blank" href="https://cdn.discordapp.com/attachments/652136190006525955/809138574549188618/identificador-conta.jpg">?</a>) na <b>linha 1</b> do script contido no arquivo <b>"./assets/js/payment-token.js"</b>.</p>
					</div>
				</div>

				<div class="col-lg-12 content-guidelines">
					<div class="panel panel-default">
						<div class="panel-heading">Links Úteis</div>
						<div class="panel-body">
							<ul>
								<li>Utilização de máscaras (<a target="blank" href="https://github.com/igorescobar/jQuery-Mask-Plugin" title="Utilização de máscaras">jQuery Mask Plugin</a>)</li>
								<li>Utilização PHP classe "DateTime" (<a target="blank" href="http://php.net/manual/pt_BR/class.datetime.php" title="Utilização em PHP da classe DateTime">documentação</a>)</li>
								<li>Como utilizar Ajax (<a target="blank" href="http://api.jquery.com/jquery.ajax/" title="Como utilizar Ajax">exemplo</a>)</li>
								<li>Documentação Oficial da API Gerencianet (<a href="https://dev.gerencianet.com.br/docs" target="_blank" title="Documentação Oficial da API Gerencianet">link</a>)</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<img src="../assets/img/marca-gerencianet.svg" alt="Gerencianet - Conceito em Pagamentos" width="218" height="27">
		<div class="content-footer">
			© 2007-2016 Gerencianet. Todos os direitos reservados.<br />
			Gerencianet Pagamentos do Brasil Ltda. • CNPJ: 09.089.356/0001-18<br />
			Avenida Juscelino Kubitschek, 909 - Ouro Preto, Minas Gerais<br />
		</div>
	</footer><!-- /.container-fluid -->

	<!-- Este componente é utilizando para exibir um alerta(modal) para o usuário aguardar as consultas via API.  -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Um momento.</h4>
				</div>
				<div class="modal-body">
					Estamos processando a requisição <img src="../assets/img/ajax-loader.gif">.
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Fechar</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Este componente é utilizando para exibir um alerta(modal) para o usuário aguardar as consultas via API.  -->
	<div class="modal fade" id="myModalResult" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Retorno da emissão da Assinatura.</h4>
				</div>
				<div class="modal-body">

					<!--div responsável por exibir o resultado da emissão do boleto-->
					<div>
						<div class="panel panel-success">
							<div class="panel-body">
								<div class="table-responsive">
									<strong>Dados da Assinatura</strong>
									<table class="table table-bordered">
										<thead>
											<tr>
												<th># ("subscription_id")</th>
												<th>Status</th>
												<th>Código de Barras</th>
												<th>Link</th>
											</tr>
										</thead>
										<tbody id="table-geral">
										</tbody>
									</table>
									<strong>Dados do Plano</strong>
									<table class="table table-bordered">
										<thead>
											<tr>
												<th># ("plan_id")</th>
												<th>Intervalo (periodicidade) das cobranças (1 = mensal)</th>
												<th>Data. Exp.</th>
												<th>Valor Total</th>
											</tr>
										</thead>
										<tbody id="table-info">

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Este componente é utilizando para exibir um alerta(modal) para o usuário aguardar as consultas via API.  -->
	<div class="modal fade" id="myModalResultCard" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Retorno da emissão da Assinatura.</h4>
				</div>
				<div class="modal-body">

					<!--div responsável por exibir o resultado da emissão do boleto-->
					<div>
						<div class="panel panel-success">
							<div class="panel-body">
								<div class="table-responsive">
									<strong>Dados da Assinatura</strong>
									<table class="table table-bordered">
										<thead>
											<tr>
												<th># ("subscription_id")</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody id="table-geral-card">
										</tbody>
									</table>
									<strong>Dados do Plano</strong>
									<table class="table table-bordered">
										<thead>
											<tr>
												<th># ("plan_id")</th>
												<th>Intervalo (periodicidade) das cobranças (1 = mensal)</th>
												<th>Valor Total</th>
											</tr>
										</thead>
										<tbody id="table-info-card">

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>