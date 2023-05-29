#language: pt

@sut_mkp
@ACRS-795
@validar_acesso_pagina_principal_atraves_url_mkp
Funcionalidade: Home - Validar acesso as páginas do site através da url do mkp
    Como usuário da aplicacao
    Quero poder acessar as paginas do site por meio da url do mkp
    Para validar a integridade da mesma na home

    #testando os possíveis cenários
    Contexto: 
        * acessar a home do Marketplace

    @buscando_elementos
    Cenario: buscar os elementos com sucesso
        Quando visualizar os elementos
        Entao validar que os elementos estao aparecendo

    @preenchendo_elementos
    Cenario: Preencher os elementos com sucesso
        Quando efetuo o cadastro
        E efetuo o login
        Entao validar redirecionamento

    @cenario_de_teste_de_comandos_teclado
    Cenario: Utilizando comandos do teclado
        Quando preencho login com um segundo usuario
        E apago o user com comando no teclado
        Entao valido campo vazio

    @cenario_login_sem_usuario
    Cenario: Realizando o login sem preencher as informacoes
        Quando tento fazer login sem alguma dado preenchido
        Entao valido a mensagem de erro
        Exemplos: 
            | cenario       |
            | "semUser"     |
            | "semPassword" |
            | "semLogin"    |