<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <script type="text/javascript" src="../assets/js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap.js"></script>

    <script type="text/javascript" src="../assets/js/jquery.mask.js"></script>
    <script type="text/javascript" src="../assets/js/script-pix.js"></script>
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


            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <div class="col-lg-12 col-md-12 col-sm-12">
        <h4>Exemplo de Integração: Emissão de Pix</h4>
    </div>

    <div class="container-fluid">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-9 well">
                <form id="form" method="POST" action="emitir_pix.php" class="">
                    <div class="col-lg-5">
                        <h5>Informações do produto/serviço</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Descrição do produto/serviço: (<em class="atributo">infoAdicionais</em>)<br><strong class="ex">Ex: Monitor LCD</strong></label>

                            <input required type="text" class="form-control" id="descricao" placeholder="Descrição do produto">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Valor do produto/serviço: (<em class="atributo">original</em>)<br><strong class="ex">Ex: informar com ponto e duas casas decimais (50.00 equivale a R$ 50,00)</strong></label>
                            <input required type="text" class="form-control" id="valor" placeholder="Valor do Produto">
                        </div>

                    </div>
                    <div class="col-lg-5">
                        <h5>Informações do cliente</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Nome do cliente: (<em class="atributo">nome</em>) <br><strong class="ex">Ex: Gorbadoc Oldbuck</strong></label>
                            <input required type="text" class="form-control" id="nome_cliente" placeholder="Nome do cliente">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">CPF: (<em class="atributo">cpf</em>) <br><strong class="ex">Ex: 94271564656 (sem formatação)</strong> </label>
                            <input required type="text" class="form-control" id="cpf" placeholder="CPF">
                        </div>

                    </div>
                    <div class="col-lg-2">
                        <h5>Expiração</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Tempo de expiração: (<em class="atributo">expiracao</em>) <br><strong class="ex">Ex: 3600 (segundos)</strong></label>
                            <input required type="text" class="form-control" id="expiracao" placeholder="Tempo de expiração">
                        </div>

                    </div>
                    <div class="col-lg-12">
                        <button id="btn_emitir_pix" type="button" class="btn btn-success">Emitir pix <img src="../assets/img/ok-mark.png"></button>
                    </div>
                </form>
            </div>

            <div class="col-lg-3">
                <div class="col-lg-12">
                    <a href="../download/exemplo-pix.zip" class="btn btn-block btn-default">Baixar este exemplo <br> <img src="../assets/img/cloud-computing.png"></a>
                </div>

                <div style="margin-top: 20px;" class="col-lg-12 content-guidelines">
                    <div class="alert alert-warning" role="alert">
                        <strong>ATENÇÃO:</strong><br />
                        <p>Para funcionamento deste exemplo, você deverá informar seu <a style="font-weight: bold;" href="http://content.screencast.com/users/tiagogerencianet/folders/Jing/media/78747741-cb11-44e3-9342-54cd7e5a2fd0/2016-08-02_1359.png" target="_blank">Client_Id</a> e <a style="font-weight: bold;" href="http://content.screencast.com/users/tiagogerencianet/folders/Jing/media/78747741-cb11-44e3-9342-54cd7e5a2fd0/2016-08-02_1359.png" target="_blank">Client_Secret</a> no arquivo "./credentials.json", alterar o parâmetro "sandbox", de acordo com o ambiente utilizado ("sandbox => true" para desenvolvimento e "sandbox => false" para produção), além de informar no atributo "pix_cert" o diretório "./certs/", acrescentando o nome do seu certificado no formato .pem.</p>
                        <p>Aqui você encontra dicas para <a target="_blank" href="https://dev.gerencianet.com.br/docs/api-pix-autenticacao-e-seguranca#section-convers-o-de-certificado-p12-para-o-formato-pem">converter seu certificado .p12 para .pem</a>.</p>
                        <p>É necessário também, no arquivo "./pix/emitir_pix.php", na variável "$body" insira sua chave pix registrada na Gerencianet no parâmetro "chave".</p>
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
                    <h4 class="modal-title" id="myModalLabel">Retorno da emissão de Pix.</h4>
                </div>
                <div class="modal-body">

                    <!--div responsável por exibir o resultado da emissão do pix-->
                    <div id="pix" class="hide">
                        <div class="panel panel-success">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table">

                                        <caption></caption>
                                        <thead>
                                            <tr>
                                                <th>ID da transação (<em>txid</em>)</th>
                                                <th>Imagem QR Code (<em>imagemQrcode</em>)</th>
                                                <th>Pix Copia e Cola (<em>qrcode</em>)</th>
                                                <th>Descrição do produto (<em>infoAdicionais</em>)</th>
                                                <th>Valor total (<em>original</em>)</th>
                                                <th>Data da criação (<em>criacao</em>)</th>
                                                <th>Data de expiração (<em>expiracao</em>)</th>
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