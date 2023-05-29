Quando('estar na pagina de produtos') do 
    #validar no quando que a URL mudou de fato e entrou na página que queremos
    expect(page).to have_current_path('https://www.saucedemo.com/inventory.html', url: true)
end

E('selecionar um filtro de z\/a') do 
    products.filtros.click   #estamos chamando o elemento filtro para fazer uma ação nele
    select('Name (Z to A)') #o select vai mapear uma lista e selecionar o tipo de filtro
end

E('adicionar produtos') do 
    sleep(10)
    products.add_products.click #vai chamar o elemento produto e dar um clique nele
end

Entao('validar produtos adicionados e filtro aplicado') do
    sleep(10)
    expect(products.filtros.value).to eql('za') #pegando o elemento do filtro e vendo se o valor dele é za
    expect(products.has_remove_products?)       #validar que tem aquele elemento na nossa tela
    sleep(10)
end

Quando('houver redirecionamento para a pagina inicial') do 
    step 'estar na pagina de produtos' #eu chamo o step estar na pagina de produtos
    products.menu_lateral.click        #chamo a classe produto, chamo o elemento que mapiei e do um click nele
end

E('seleciono a opcao About no item hamburguer') do 
    sleep(5)
    click_link('About') #ele vai dar um click no elemento da tela de about e vai direcionar para outra tela
end

Entao ('valido o direcionamento para o sobre do site') do 
    sleep(5)
    expect(about.img_titulo).to be_truthy()
end