
Feature: Tela de cadastro = Checkut
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background: US-0003 – Tela de cadastro - Checkout
        Given sou cliente da EBAC-SHOP

    Scenario Outline: 1. Preenchimento correto
        When eu cadastro todos os <dados_obrigatorios>
        And e-mail válido
        Then consigo finalizar a compra

            <dados_obrigatorios>
            | Nome      |
            | Sobrenome |
            | País      |
            | Endereço  |
            | Cidade    |
            | CEP       |
            | Telefone  |

    Scenario Outline: 2. Dados obrigatorios incorretos
        When eu preencher algum <dados_obrigatorios> errado
        Then o sistema deve exibir uma mensagem de alerta indicando o campo que está errado
            <dados_obrigatorios>
            | Nome      |
            | Sobrenome |
            | País      |
            | Endereço  |
            | Cidade    |
            | CEP       |
            | Telefone  |

    Scenario Outline: 3. E-mail inálido
        When eu preencho o endereço de e-mai em formato inválido
        Then o sistema deve inserir uma mensagem de erro

    Scenario Outline: 4. Campo Vazio
        When  tento concluir o cadasto com campo vazio
        Then deve exibir uma mensagem de alerta indicando que todos os campos obrigatórios devem ser preenchidos




