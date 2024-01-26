
Feature: Configurar produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho


    Background: US-001 - Configurar produto

        Given que sou um cliente da EBAC-SHOP

    Scenario Outline: 1. CARRINHO CHEIO
        When eu seleciono um produto
        And seleciono a cor do produto
        And seleciono o tamanho do produto
        And defino a quantidade desejada
        And até 10 produtos
        Then devo ser capaz de inserir no carrinho com sucesso

    Scenario Outline: 2. CARRINHO VAZIO
        When tenho produtos no carrinho
        And cliclo no botão limpar
        Then a configuração do carrinho deve ser restaurada ao estado original

    Scenario Outline: 3. Seleção de produtos inválida
        When escolho um produto
        And não seleciona o <criterio1> ou <criterio2> ou <criterio3> produto
        Then não devo ser capaz de adicionar o produto no carrinho

        Examples:
            | criterio1 | criterio2 | criterio3  |
            | cor       | tamanho   | quantidade |
    
    Scenario Outline: 4. Quantidade inválida
        When eu tenho 10 produtos no carrinho
        And tento adicionar mais produtos
        Then não devo ser capaz de adicionar mais produtos no carinho