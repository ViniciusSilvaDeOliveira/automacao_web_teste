Dados ('estar na pagina inicial') do 
    visit('/')
    home.load
    products.load
end

Quando ('visualizar os elementos') do 
    sleep(5)
    expect(page).to have_current_path('https://www.saucedemo.com', url:true)
end

Entao ('validar que os elementos estao aparecendo') do
    texto = home.texto_acesso
    expect(texto.text).to eql('Swag Labs')
    sleep 5
end