<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <script type="text/javascript" src="../assets/js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap.js"></script>

    <script type="text/javascript" src="../assets/js/jquery.mask.js"></script>
    <script type="text/javascript" src="../assets/js/scripts_link_pag.js"></script>
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
                            <li><a href="../marketplace/">Marketplace (Split - Cartão)</a></li>
                            <li><a href="../marketplace_boleto/">Marketplace (Split -  Boleto)</a></li>
                        </ul>
                    </li>
                    <li role="separator" class="divider"></li>

                    <li><a target="blank" href="https://gerencianet.com.br/#login">Entrar</a>
                    </li>
                    <li><a target="blank" class="destaque" href="https://gerencianet.com.br/#abrirconta">Abra sua conta</a>
                    </li>
                </ul>


            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <div class="col-lg-12 col-md-12 col-sm-12">
        <h4>Exemplo de Integração: Link de Pagamento</h4>
    </div>

    <div class="container-fluid">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-9 well">
                <form id="form" method="POST" action="emitir_com_link.php" class="">
                    <div class="col-lg-5">
                        <h5>Informações do produto/serviço</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Descrição do produto/serviço: (<em class="atributo">name</em>)<br><strong class="ex">Ex: Monitor LCD</strong></label>

                            <input required type="text" class="form-control" id="descricao" placeholder="Descrição do produto">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Valor do produto/serviço: (<em class="atributo">value</em>)<br><strong class="ex">Ex: informar sem pontos ou vírgulas (5000 equivale a R$ 50,00) (int)</strong></label>
                            <input required type="text" class="form-control" id="valor" placeholder="Valor do Produto">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Quantidade de itens: (<em class="atributo">amount</em>) <br><strong class="ex">Ex: 1 (int)</strong></label>
                            <select required id="quantidade" class="form-control">
                                <?php for ($i = 1; $i < 20; $i++) : ?>
                                    <option><?= $i ?></option>
                                <?php endfor; ?>
                            </select>
                        </div>

                    </div>

                    <div class="col-lg-5">
                        <h5>Configurações</h5>

                        <label for="exampleInputEmail1">Mensagem ao Pagador (<a href="http://screencast.com/t/IaBJOxKiEWUo" target="_blank">onde aparece?</a>): (<em class="atributo">message</em>) <br><strong class="ex">Ex: Define uma mensagem para o pagador (mínimo 3 e máximo de 80 caracteres)</strong></label>
                        <div class="form-group">
                            <input required type="text" class="form-control" id="message" placeholder="Mensagem para o cliente">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Endereço de Entrega: (<em class="atributo">request_delivery_address</em>) <br><strong class="ex">Solicitar endereço de entrega ao pagador? (informe 'true' p/ SIM ou 'false' p/ NÃO) </strong> </label>
                            <select id="request" class="form-control" required>
                                <option value="" selected>Solicitar endereço ao comprador?</option>
                                <option value="1">true ("sim")</option>
                                <option value="0">false ("não")</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Métodos de pagamento disponíveis para o pagador: (<em class="atributo">payment_method</em>)<br><strong class="ex">Ex: boleto e cartão ('all') | só boleto ('banking_billet') | só cartão ('credit_card')</strong></label>
                            <select id="method" class="form-control" required>
                                <option value="" selected>Selecione a(s) forma(s) de pagamento</option>
                                <option value="all">all (boleto + cartão)</option>
                                <option value="banking_billet">banking_billet (só boleto)</option>
                                <option value="credit_card">credit_card (só cartão)</option>
                            </select>
                        </div>

                    </div>

                    <div class="col-lg-2">
                        <h5>Vencimento</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Data de vencimento: (<em class="atributo">expire_at</em>) <br><strong class="ex">Ex: 2021-12-15 (yyyy-mm-dd)</strong></label>
                            <input required type="text" class="form-control" id="vencimento" placeholder="Data de vencimento">
                            <em class="atributo"><b>Obs 1:</b> Esse atributo <code>expire_at</code> define a data de vencimento da tela de pagamento e do próprio boleto, caso esta seja a forma de pagamento escolhida</em>
                            <br>
                            <em class="atributo"><b>Obs 2:</b> Descontos também podem ser concedidos, de acordo com a forma de pagamento escolhida pelo pagador. Caso deseje utilizar, <a href="https://dev.gerencianet.com.br/docs/link-pagamento-criando#section-2-criando-um-link-de-pagamento" target="_blank">consulte a documentação</a>.</em>
                        </div>

                    </div>
                    <div class="col-lg-12">
                        <button id="btn_emitir_link" type="button" class="btn btn-success">Criar Link Pagamento <img src="../assets/img/ok-mark.png"></button>
                    </div>
                </form>
            </div>

            <div class="col-lg-3">

                <div class="col-lg-12">
                    <a href="../download/exemplo-link.zip" class="btn btn-block btn-default">Baixar este exemplo <br> <img src="../assets/img/cloud-computing.png"></a>
                </div>

                <div style="margin-top: 20px;" class="col-lg-12 content-guidelines">
                    <div class="alert alert-warning" role="alert">
                        <strong>ATENÇÃO:</strong><br />
                        <p>Para funcionamento deste exemplo, você deverá informar seu <a style="font-weight: bold;" href="http://content.screencast.com/users/tiagogerencianet/folders/Jing/media/78747741-cb11-44e3-9342-54cd7e5a2fd0/2016-08-02_1359.png" target="_blank">Client_Id</a> e <a style="font-weight: bold;" href="http://content.screencast.com/users/tiagogerencianet/folders/Jing/media/78747741-cb11-44e3-9342-54cd7e5a2fd0/2016-08-02_1359.png" target="_blank">Client_Secret</a> no arquivo "credentials.json", além de alterar o parâmetro "sandbox", de acordo com o ambiente utilizado ("sandbox => true" para desenvolvimento e "sandbox => false" para produção).</p>
                    </div>
                </div>

                <div class="col-lg-12 content-guidelines">
                    <div class="panel panel-default">
                        <div class="panel-heading">Dicas</div>
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
    </footer>

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
                    <h4 class="modal-title" id="myModalLabel">Retorno da criação do link.</h4>
                </div>
                <div class="modal-body">

                    <!--div responsável por exibir o resultado da emissão do link-->
                    <div id="link" class="hide">
                        <div class="panel panel-success">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table">

                                        <caption></caption>
                                        <thead>
                                            <tr>
                                                <th>ID da transação(<em>charge_id</em>)</th>
                                                <th>Link (<em>payment_url</em>)</th>
                                                <th>Método de pagamento (<em>payment_method</em>)</th>
                                                <th>Status da transação (<em>status</em>)</th>
                                                <th>Total (<em>total</em>)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr id="result_table">
                                            </tr>
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