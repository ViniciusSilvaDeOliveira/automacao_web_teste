Dado('acessar a home do Marketplace') do 
    visit('/')      #comando visit para indicar qual lugar da nossa url padrão queremos ir
    home.load       #antes de todo nosso projeto rodar vai ser carregado o home e o products que essa no 
    products.load   #arquivo mapa_de_elementos, onde estanciamos as classes para serem global
end

Quando('visualizar os elementos') do 
    sleep(5)
    expect(page).to have_current_path('https://www.saucedemo.com', url:true) 
    #esperamos que a nossa pagina seja igual a URL, que seja verdadeira
end

Entao('validar que os elementos estao aparecendo') do
    texto = home.texto_acesso #cria uma variavel que recebe o elemento que iremos buscar na tela
    expect(texto.text).to eql('Swag Labs') #então a variavel texto a gente espera que seja igual a comparação que realizamos
    expect(home.botao_login.value).to eql('Login')
    sleep 5
end

Quando('efetuo o cadastro') do 
    home.preencher_user_and_password #funcao para preencher os campos de usuario e senha
end

E('efetuo o login') do 
    home.efetuar_login #funcao para clicar no botão de login
end

Entao('validar redirecionamento') do 
    expect(products.texto_produtos.text).to eql('Products')
    expect(products.titulo_pagina.text).to eql('Swag Labs')
    expect(products.btn_carrinho).to be_truthy()
    expect(products.btn_burger.text).to eql('Open Menu')
    expect(page).to have_current_path('https://www.saucedemo.com/inventory.html', url: true)
end

Quando('preencho login com um segundo usuario') do 
    home.user.send_keys('fulano')    #passamos para o campo as informações de um usuario e uma senha invalida
    home.password.send_keys('fulano')
end

E('apago o user com comando no teclado') do 
    until home.user.value.eql?('') do home.user.send_keys(:backspace) end
    sleep(5) #enquanto o campo user não for vazio 
end

Entao('valido campo vazio') do
    sleep(5)
    expect(home.user.has_no_text?).to eql(true)
end