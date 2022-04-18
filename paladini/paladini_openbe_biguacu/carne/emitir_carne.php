<?php

require __DIR__ . '/../vendor/autoload.php';

use Gerencianet\Exception\GerencianetException;
use Gerencianet\Gerencianet;

// Lê o arquivo json com suas credenciais
$file = file_get_contents(__DIR__ . '/../credentials.json');
$options = json_decode($file, true);

unset($options['pix_cert']);


if (isset($_POST)) {

    $repass_1 = [
        'payee_code' => $_POST["codigo_usuario1"], // identificador da conta Gerencianet (repasse 1)
        'percentage' => (int)$_POST["porcentagem1"] // porcentagem de repasse (2500 = 25%)
    ];

    $repass_2 = [
        'payee_code' => $_POST["codigo_usuario2"], // identificador da conta Gerencianet (repasse 2)
        'percentage' => (int)$_POST["porcentagem2"] // porcentagem de repasse (15 = 15%)
    ];

    $repass_3 = [
        'payee_code' => $_POST["codigo_usuario3"], // identificador da conta Gerencianet (repasse 2)
        'percentage' => (int)$_POST["porcentagem3"] // porcentagem de repasse (15 = 15%)
    ];

    $repasses = [
        $repass_1,
        $repass_2,
        $repass_3
    ];

$instructions = [$_POST["instrucao1"], $_POST["instrucao2"], $_POST["instrucao3"], $_POST["instrucao4"]];

$item_1 = [
    'name' => $_POST["descricao"],
    'amount' => (int) $_POST["quantidade"],
    'value' => (int) $_POST["valor"]
];

$items = [
    $item_1
];

$customer = [
    'name' => $_POST["nome_cliente"],
    'cpf' => $_POST["cpf"],
    'phone_number' => $_POST["telefone"],
    'email' => $_POST["email"],
];

$body = [
    'items' => $items,
    'repeats' => (int)$_POST["repeticoes"],
    'split_items' => false,
    'expire_at' => $_POST["vencimento"],
    'customer' => $customer,
    'instructions' => $instructions
];

try {
    $api = new Gerencianet($options);
    $charge = $api->createCarnet([], $body);
    
    echo json_encode($charge);
} catch (GerencianetException $e) {
    print_r($e->code);
    print_r($e->error);
    print_r($e->errorDescription);
} catch (Exception $e) {
    print_r($e->getMessage());
}
}