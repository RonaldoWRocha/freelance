## **Requisitos**
* PHP >= 7.2
* Guzzle >= 7.0
* Extensão ext-simplexml


## **Configurando o exemplo**
Para começar, você deve configurar os parâmetros no arquivo `credentials.json`. Instancie as informações `client_id`, `client_secret` para autenticação e `sandbox` igual a `true`, se seu ambiente for Homologação, ou `false`, se for Produção.

Se você usa cobrança Pix, informe no atributo `pix_cert` o diretório relativo e o nome do seu certificado no formato .pem.

## **Documentação Adicional**

A documentação completa com todos os endpoints e detalhes da API está disponível em https://dev.gerencianet.com.br/.
Veje também mais detalhes de nossa SDK de PHP em https://github.com/gerencianet/gn-api-sdk-php

Se você ainda não tem uma conta digital da Gerencianet, [abra a sua agora](https://sistema.gerencianet.com.br/)!
