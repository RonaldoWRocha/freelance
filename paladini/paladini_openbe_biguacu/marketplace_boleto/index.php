<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <script type="text/javascript" src="../assets/js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap.js"></script>

    <script type="text/javascript" src="../assets/js/jquery.mask.js"></script>
    <script type="text/javascript" src="../assets/js/script-marketplace_boleto.js"></script>
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
        <h4>Exemplo de Integração: Emissão de Boleto</h4>
    </div>

    <div class="container-fluid">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-9 well">
                <form id="form" method="POST" action="pagar-marketplace_boleto.php" class="">
                    <div class="col-lg-5">
                        <h5>Informações do produto/serviço</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Descrição do produto/serviço: (<em class="atributo">name</em>)<br><strong class="ex">Ex: MENSALIDADES ESCOLARES</strong></label>

                            <input required type="text" class="form-control" id="descricao" placeholder="Descrição do produto">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Valor do produto/serviço: (<em class="atributo">value</em>)<br><strong class="ex">Ex: informar sem pontos ou vírgulas (13995 equivale a R$ 139,95) (int)</strong></label>
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
                        <h5>Informações do cliente</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Nome do cliente: (<em class="atributo">name</em>) <br><strong class="ex">Ex: MANOEL JOSÉ INÁCIO</strong></label>
                            <input required type="text" class="form-control" id="nome_cliente" placeholder="Nome do cliente">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">CPF: (<em class="atributo">cpf</em>) <br><strong class="ex">Ex: 94271564656 (sem formatação)</strong> </label>
                            <input required type="text" class="form-control" id="cpf" placeholder="CPF">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Telefone: (<em class="atributo">phone_number</em>)<br><strong class="ex">Ex: 5144916523 (sem formatação)</strong></label>
                            <input required type="text" class="form-control" id="telefone" placeholder="Telefone">
                        </div>

                    </div>
                    <div class="col-lg-2">
                        <h5>Vencimento</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Data de vencimento: (<em class="atributo">expire_at</em>) <br><strong class="ex">Ex: 2021-12-15 (yyyy-mm-dd)</strong></label>
                            <input required type="text" class="form-control" id="vencimento" placeholder="Data de vencimento">
                        </div>

                    </div>

                    <div class="col-lg-2">
                        <h5>Informações dos repasses</h5>
                        <h6>Cliente 1</h6>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Identificador da conta: (<em class="atributo">payee_code</em>) <br><strong class="ex">CLAUDINEI: 70c22baf756ad50097bbb75e91912a0d (<a href="https://cdn.discordapp.com/attachments/652136190006525955/809138574549188618/identificador-conta.jpg" target="_blank">onde localizar?</a>)</strong></label>
                            <input required type="text" class="form-control" id="codigo_usuario1" placeholder="Código Usuário 1">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Porcentagem: (<em class="atributo">percentage</em>) <br><strong class="ex">Ex: 2000 (2000 = 20%)</strong></label>
                            <input required type="text" class="form-control" id="porcentagem1" placeholder="1200">
                        </div>
                        <h6>Cliente 2</h6>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Identificador da conta: (<em class="atributo">payee_code</em>) <br><strong class="ex">SR. SÉRGIO: 559b1b326e10a8e9a13e8d5cf62c61d0 (<a href="https://cdn.discordapp.com/attachments/652136190006525955/809138574549188618/identificador-conta.jpg" target="_blank">onde localizar?</a>)</strong></label>
                            <input required type="text" class="form-control" id="codigo_usuario2" placeholder="Código Usuário 2">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Porcentagem: (<em class="atributo">percentage</em>) <br><strong class="ex">Ex: 0500 (0500 = 5%)</strong></label>
                            <input required type="text" class="form-control" id="porcentagem2" placeholder="0900">
                        </div>
                        <h6>Cliente 3</h6>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Identificador da conta: (<em class="atributo">payee_code</em>) <br><strong class="ex">MAURY: 97c49d34defb17b1961026f83271d8f3 (<a href="https://cdn.discordapp.com/attachments/652136190006525955/809138574549188618/identificador-conta.jpg" target="_blank">onde localizar?</a>)</strong></label>
                            <input required type="text" class="form-control" id="codigo_usuario3" placeholder="Código Usuário 3">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Porcentagem: (<em class="atributo">percentage</em>) <br><strong class="ex">Ex: 1500 (1500 = 15%)</strong></label>
                            <input required type="text" class="form-control" id="porcentagem3" placeholder="0900">
                        </div>

                    </div>
                  

                    <div class="col-lg-12">
                        <button id="btn_emitir_boleto" type="button" class="btn btn-success">Emitir boleto <img src="../assets/img/ok-mark.png"></button>
                    </div>
                </form>
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
                    <h4 class="modal-title" id="myModalLabel">Retorno da emissão de boleto.</h4>
                </div>
                <div class="modal-body">

                    <!--div responsável por exibir o resultado da emissão do boleto-->
                    <div id="boleto" class="hide">
                        <div class="panel panel-success">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table">

                                        <caption></caption>
                                        <thead>
                                            <tr>
                                                <th>ID da transação(<em>charge_id</em>)</th>
                                                <th>Código de Barras (<em>barcode</em>)</th>
                                                <th>Link (<em>link</em>)</th>
                                                <th>Vencimento (<em>expire_at</em>)</th>
                                                <th>Status (<em>status</em>)</th>
                                                <th>Total (<em>total</em>)</th>
                                                <th>Método de pagamento (<em>payment</em>)</th>
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