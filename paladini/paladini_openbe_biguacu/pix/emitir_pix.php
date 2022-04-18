<?php

require __DIR__ . '/../vendor/autoload.php';

use Gerencianet\Exception\GerencianetException;
use Gerencianet\Gerencianet;

// Lê o arquivo json com suas credenciais
$file = file_get_contents(__DIR__ . '/../credentials.json');
$options = json_decode($file, true);

if (isset($_POST)) {

    $body = [
        "calendario" => [
            "expiracao" => (int) $_POST["expiracao"]
        ],
        "devedor" => [
            "cpf" => $_POST["cpf"],
            "nome" => $_POST["nome_cliente"]
        ],
        "valor" => [
            "original" => $_POST["valor"]
        ],
        "chave" => "SuaChavePixGerencianet", // Chave pix da conta Gerencianet do recebedor
        "infoAdicionais" => [
            [
                "nome" => "Produto/Serviço", // Nome do campo string (Nome) ≤ 50 characters
                "valor" => $_POST["descricao"] // Dados do campo string (Valor) ≤ 200 characters
            ]
        ]
    ];

    try {
        $api = Gerencianet::getInstance($options);
        $pix = $api->pixCreateImmediateCharge([], $body);

        if ($pix['txid']) {

            $params = [
                'id' => $pix['loc']['id']
            ];

            // Gera QRCode
            $qrcode = $api->pixGenerateQRCode($params);

            $return = [
                "code" => 200,
                "pix" => $pix,
                "qrcode" => $qrcode
            ];

            echo json_encode($return);
        } else {
            echo json_encode($pix);
        }
    } catch (GerencianetException $e) {
        print_r($e->code);
        print_r($e->error);
        print_r($e->errorDescription);
    } catch (Exception $e) {
        print_r($e->getMessage());
    }
}
