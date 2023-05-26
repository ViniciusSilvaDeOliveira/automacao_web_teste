#language

Funcionalidade: Buscar elementos

Contexto: 
Dados estar na pagina inicial

@buscando_elementos
Cenario: Buscar os elementos com sucesso
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