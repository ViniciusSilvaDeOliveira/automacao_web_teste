#language: pt

@sut_mkp
@ACRS-795
@validar_pagina_produtos
Funcionalidade: Acessar a pagina com produtos a venda
Eu como usuário
Quero acessar a pagina com produtos a venda

    Contexto: 
        * acessar a home do Marketplace
        * efetuo o cadastro
        * efetuo o login

    @cenario_de_teste_de_produtos
    Cenario: Utilizando filtros e adicionando itens
        Quando estar na pagina de produtos
        E selecionar um filtro de z/a 
        E adicionar produtos
        Entao validar produtos adicionados e filtro aplicado

    @cenario_de_teste_de_link
    Cenario: Validar link na tela
        Quando houver redirecionamento para a pagina inicial
        Entao valido o link na tela 