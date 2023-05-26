Dado('acessar a home do Marketplace') do 
    visit('/')
    home.load
    products.load
end

Quando('visualizar os elementos') do 
    sleep(5)
    expect(page).to have_current_path('https://www.saucedemo.com', url:true)
end

Entao('validar que os elementos estao aparecendo') do
    texto = home.texto_acesso
    expect(texto.text).to eql('Swag Labs')
    sleep 5
end

Quando('efetuo o cadastro') do 
    home.preencher_user_and_password
end

Quando('efetuo o login') do 
    home.efetuar_login
end

Entao('validar redirecionamento') do 
    expect(products.texto_produtos.text).to eql('Products')
    expect(page).to have_current_path('https://www.saucedemo.com/inventory.html', url: true)
end