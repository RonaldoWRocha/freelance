<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <script type="text/javascript" src="../assets/js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap.js"></script>

    <script type="text/javascript" src="../assets/js/jquery.mask.js"></script>
    <script type="text/javascript" src="../assets/js/script-carne.js"></script>
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
        <h4>Exemplo de Integração: Emissão de Carnê</h4>
    </div>

    <div class="container-fluid">
        <div class="col-lg-12 col-md-12 col-sm-12">

            <div class="col-lg-9 well">
                <form id="form" method="POST" action="emitir_boleto.php" class="">
                    <div class="col-lg-3">
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
                    <div class="col-lg-3">
                        <h5>Informações do cliente</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Nome do cliente: (<em class="atributo">name</em>) <br><strong class="ex">Ex: Gorbadoc Oldbuck</strong></label>
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

                        <div class="form-group">
                            <label for="exampleInputPassword1">Email: (<em class="atributo">email</em>)<br><strong class="ex">Ex: email_cliente@servidor.com.br (string)</strong></label>
                            <input required type="email" class="form-control" id="email" placeholder="Email">
                        </div>

                    </div>
                    <div class="col-lg-3">
                        <h5>Vencimento</h5>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Data de vencimento: (<em class="atributo">expire_at</em>) <br><strong class="ex">Ex: 2021-12-15 (yyyy-mm-dd)</strong></label>
                            <input required type="text" class="form-control" id="vencimento" placeholder="Data de vencimento">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Número de parcelas: (<em class="atributo">repeats</em>) <br><strong class="ex">Ex: 5 (int)</strong></label>
                            <select required id="repeticoes" class="form-control">
                                <?php for ($i = 1; $i < 20; $i++) : ?>
                                    <option><?= $i ?></option>
                                <?php endfor; ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <h5>Instruções (opcional)</h5>
                        <div class="form-group">
                            <label for="exampleInputEmail1">1<sup>a</sup> linha de instrução: (<em class="atributo">instructions</em>) <br><strong class="ex">Ex: Instrução 1 (string)</strong></label>
                            <input required type="text" class="form-control" id="instrucao1" placeholder="Instrução 1">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">2<sup>a</sup> linha de instrução: (<em class="atributo">instructions</em>) <br><strong class="ex">Ex: Instrução 2 (string)</strong></label>
                            <input required type="text" class="form-control" id="instrucao2" placeholder="Instrução 2">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">3<sup>a</sup> linha de instrução: (<em class="atributo">instructions</em>) <br><strong class="ex">Ex: Instrução 3 (string)</strong></label>
                            <input required type="text" class="form-control" id="instrucao3" placeholder="Instrução 3">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">4<sup>a</sup> linha de instrução: (<em class="atributo">instructions</em>) <br><strong class="ex">Ex: Instrução 4 (string)</strong></label>
                            <input required type="text" class="form-control" id="instrucao4" placeholder="Instrução 4">
                        </div>                      

                    </div>

                    <div class="col-lg-2">
                        <h5>Informações dos repasses</h5>
                        <h6>Cliente 1</h6>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Identificador da conta: (<em class="atributo">payee_code</em>) <br><strong class="ex">I. GOURMET: 943f75ac58f2cefcf2ea87f3f8e4604d (<a href="https://cdn.discordapp.com/attachments/652136190006525955/809138574549188618/identificador-conta.jpg" target="_blank">onde localizar?</a>)</strong></label>
                            <input required type="text" class="form-control" id="codigo_usuario1" placeholder="Código Usuário 1">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Porcentagem: (<em class="atributo">percentage</em>) <br><strong class="ex">Ex: 7000 (7000 = 70%)</strong></label>
                            <input required type="text" class="form-control" id="porcentagem1" placeholder="1500">
                        </div>
                        <h6>Cliente 2</h6>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Identificador da conta: (<em class="atributo">payee_code</em>) <br><strong class="ex">SR. SÉRGIO: 559b1b326e10a8e9a13e8d5cf62c61d0 (<a href="https://cdn.discordapp.com/attachments/652136190006525955/809138574549188618/identificador-conta.jpg" target="_blank">onde localizar?</a>)</strong></label>
                            <input required type="text" class="form-control" id="codigo_usuario2" placeholder="Código Usuário 2">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Porcentagem: (<em class="atributo">percentage</em>) <br><strong class="ex">Ex: 0800 (0800 = 9%)</strong></label>
                            <input required type="text" class="form-control" id="porcentagem2" placeholder="2000">
                        </div>
                        <h6>Cliente 3</h6>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Identificador da conta: (<em class="atributo">payee_code</em>) <br><strong class="ex">RAFAEL: e2d5d5959767e46f530d7bc250314893 (<a href="https://cdn.discordapp.com/attachments/652136190006525955/809138574549188618/identificador-conta.jpg" target="_blank">onde localizar?</a>)</strong></label>
                            <input required type="text" class="form-control" id="codigo_usuario3" placeholder="Código Usuário 3">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Porcentagem: (<em class="atributo">percentage</em>) <br><strong class="ex">Ex: 08000 (08000 = 9%)</strong></label>
                            <input required type="text" class="form-control" id="porcentagem3" placeholder="2000">
                        </div>

                    </div>
                    <div class="col-lg-12">
                        <button id="btn_emitir_boleto" type="button" class="btn btn-success">Emitir carnê <img src="../assets/img/ok-mark.png"></button>
                    </div>
                </form>
            </div>

            <div class="col-lg-3">

                <div class="col-lg-12">
                    <a href="../download/exemplo-carne.zip" class="btn btn-block btn-default">Baixar este exemplo <br> <img src="../assets/img/cloud-computing.png"></a>
                </div>

                <div style="margin-top: 20px;" class="col-lg-12 content-guidelines">
                    <div class="alert alert-warning" role="alert">
                        <strong>ATENÇÃO:</strong><br />
                        <p>Para funcionamento deste exemplo, você deverá informar seu <a style="font-weight: bold;" href="http://content.screencast.com/users/tiagogerencianet/folders/Jing/media/78747741-cb11-44e3-9342-54cd7e5a2fd0/2016-08-02_1359.png" target="_blank">Client_Id</a> e <a style="font-weight: bold;" href="http://content.screencast.com/users/tiagogerencianet/folders/Jing/media/78747741-cb11-44e3-9342-54cd7e5a2fd0/2016-08-02_1359.png" target="_blank">Client_Secret</a> no arquivo "credentials.json", além de alterar o parâmetro "sandbox", de acordo com o ambiente utilizado ("sandbox => true" para desenvolvimento e "sandbox => false" para produção).</p>
                    </div>
                </div>

                <div style="margin-top: 20px;" class="col-lg-12 content-guidelines">
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
                    <h4 class="modal-title" id="myModalLabel">Retorno da emissão do Carnê.</h4>
                </div>
                <div class="modal-body">

                    <!--div responsável por exibir o resultado da emissão do boleto-->
                    <div id="boleto" class="hide">
                        <div class="panel panel-success">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <strong>Dados do Carnê</strong>
                                    <table class="table table-bordered">
                                        <thead>

                                            <tr>
                                                <th>Código da carnê</th>
                                                <th>Status</th>
                                                <th>Link</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th id="table_id_ass"></th>
                                                <th id="table_status"></th>
                                                <td id="table_link"></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <strong>Valores</strong>

                                    <table class="table table-bordered">
                                        <thead>

                                            <tr>
                                                <th>#</th>
                                                <th>N° Parc.</th>
                                                <th>Valor</th>
                                                <th>Data. Exp.</th>
                                                <th>Link</th>
                                            </tr>
                                        </thead>
                                        <tbody id="charges_tb">

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