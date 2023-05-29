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

    @cenario_produtos_ordem_alfabetica
    Cenario: Utilizando o filtro da pagina
        Quando estar na pagina de produtos
        E selecionar um filtro de z/a
        Entao valido que os produtos estao em ordem alfabetica

    @cenario_de_teste_de_link
    Cenario: Validar link na tela
        Quando houver redirecionamento para a pagina inicial
        E seleciono a opcao About no item hamburguer
        Entao valido o direcionamento para o sobre do site