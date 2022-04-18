$(document).ready(function () {
    //Aplicando as mascaras nos inputs cpf, valor e vencimento.
    $("#btn_emitir_boleto").click(function () {
        if ($('#form')[0].checkValidity()) {

            $("#myModal").modal('show');
            $("#boleto").addClass("hide");
            var descricao = $("#descricao").val();


            var valor = $("#valor").val();
            var quantidade = $("#quantidade").val();
            var nome_cliente = $("#nome_cliente").val();
            var cpf = $("#cpf").val();
            var telefone = $("#telefone").val();
            var vencimento = $("#vencimento").val();
   var codigo_usuario1 = $("#codigo_usuario1").val();
            var porcentagem1 = $("#porcentagem1").val();
            var codigo_usuario2 = $("#codigo_usuario2").val();
            var porcentagem2 = $("#porcentagem2").val();
            var codigo_usuario3 = $("#codigo_usuario3").val();
            var porcentagem3 = $("#porcentagem3").val();
            console.log(parseInt(nome_cliente))
            console.log(parseInt(valor))
            if (parseInt(nome_cliente) == "NaN" || parseInt(valor) == "NaN") {
                $("#myModal").modal('hide');

                alert("Dados inválidos.");

                return false;
            }


            $.ajax({
                url: "../boleto/emitir_boleto.php",
                data: { descricao: descricao, valor: valor, quantidade: quantidade, nome_cliente: nome_cliente, cpf: cpf, telefone: telefone, vencimento: vencimento, codigo_usuario1: codigo_usuario1, codigo_usuario2: codigo_usuario2, codigo_usuario3: codigo_usuario3, porcentagem1: porcentagem1, porcentagem2: porcentagem2, porcentagem3: porcentagem3},
                type: 'post',
                dataType: 'json',
                success: function (resposta) {
                    $("#myModal").modal('hide');
                    console.log(resposta)
                    if (resposta.code == 200) {
                        $("#myModalResult").modal('show');
                        $("#boleto").removeClass("hide");
                        //"code":200,"data":{"barcode":"03399.32766 55400.000000 60348.101027 6 69020000009000","link":"https:\/\/visualizacaosandbox.gerencianet.com.br\/emissao\/59808_79_FORAA2\/A4XB-59808-60348-HIMA4","expire_at":"2016-08-30","charge_id":76777,"status":"waiting","total":9000,"payment":"banking_billet"-->
                        var html = "<th>" + resposta.data.charge_id + "</th>"
                        html += "<th>" + resposta.data.barcode + "</th>"
                        html += "<th><a target='blank' href='" + resposta.data.link + "'> clique aqui para acessar o boleto </a></a></th>"
                        html += "<th>" + resposta.data.expire_at + "</th>"
                        html += "<th>" + resposta.data.status + "</th>"
                        html += "<th>" + resposta.data.total + "</th>"
                        html += "<th>" + resposta.data.payment + "</th>";
                        $("#result_table").html(html);


                    } else {
                        $("#myModal").modal('hide');
                        alert("Code: " + resposta.code + '\n' + 'Property: ' + resposta.error_description.property + '\n' + 'Message: ' + resposta.error_description.message)
                    }
                },
                error: function (resposta) {
                    $("#myModal").modal('hide');
                    alert("Ocorreu um erro - Mensagem: " + resposta.responseText)
                }
            });
        } //endif
        else {
            alert("Você deverá preencher todos dados do formulário.")
        }
    })


})