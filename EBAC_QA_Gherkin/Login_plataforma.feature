
Feature: Login plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Background: US-0002 – Login na plataforma
Given que sou um cliente da EBAC-SHOP

Scenario Outline: 1. Autentificação válida
When eu inserir o <usuario> And <senha>
Then deve ser direcionado para a tela de checkout

Scenario Outline: 2. Autenticação inválida
When eu inserir o <usuario> And <senha> 
Then deve exibir uma mensagem de alerta: “Usuário ou senha inválidos”

