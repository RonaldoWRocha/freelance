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

    $repasses = [
        $repass_1,
        $repass_2
    ];

    $item_1 = [
        'name' => $_POST["descricao"],
        'amount' => (int) $_POST["quantidade"],
        'value' => (int) $_POST["valor"],
        'marketplace' => array('repasses' => $repasses)
    ];

    $items = [
        $item_1
    ];


    $customer = [
        'name' => $_POST["nome_cliente"],
        'cpf' => $_POST["cpf"],
        'phone_number' => $_POST["telefone"],
        'email' => $_POST["email"],
        'birth' => $_POST["nascimento"]
    ];

    $paymentToken = $_POST["payament_token"];

    $billingAddress = [
        'street' => $_POST["rua"],
        'number' => $_POST["numero"],
        'neighborhood' => $_POST["bairro"],
        'zipcode' => $_POST["cep"],
        'city' => $_POST["cidade"],
        'state' => $_POST["estado"],
    ];

    $creditCard = [
        'installments' => (int) $_POST["installments"],
        'billing_address' => $billingAddress,
        'payment_token' => $paymentToken,
        'customer' => $customer
    ];

    $payment = [
        'credit_card' => $creditCard
    ];

    $body = [
        'items' => $items,
        'payment' => $payment
    ];


    try {
        $api = new Gerencianet($options);
        $charge = $api->oneStep([], $body);

        echo json_encode($charge);
    } catch (GerencianetException $e) {
        print_r($e->code);
        print_r($e->error);
        print_r($e->errorDescription);
    } catch (Exception $e) {
        print_r($e->getMessage());
    }
}
