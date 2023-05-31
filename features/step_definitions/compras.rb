E ('clico na opcao do carrinho') do
    compra.btn_carrinho.click
    sleep(5)
end

E ('clico em checkout') do 
    click_button('Checkout')
    sleep(5)
end

E ('preencho alguns campos para seguir com a compra {string}') do |campos|
    compra.preencher_campos_compra(campos)
end

Entao ('valido que não é possível continuar devido as informacoes nao ter sido preenchidas {string}') do |campos|
    case campos
        when "first_name"
            expect(compra.msg_erro).to be_truthy
        when "last_name"
            expect(compra.msg_erro).to be_truthy
        when "postal_code"
            expect(compra.msg_erro).to be_truthy
    end
end

E ('adiciono um item ao carrinho') do
    compra.btn_add.click
    expect(compra.remove_products).to be_truthy
    sleep(5)
end

E ('preencho os campos para seguir com a compra') do
    compra.preencher_campos_compra
end

E ('valido as informações da compra') do 
    expect(compra.finish_valor_total).to be_truthy
    expect(compra.finish_cancelar).to be_truthy
    expect(compra.titulo_pagina.text).to eql("Swag Labs")
    sleep(5)
    compra.btn_finish.click
end

Entao ('finalizo a compra e valido que o pedido foi realizado') do
    expect(compra.btn_back_home).to be_truthy
    expect(compra.titulo_compra_finalizada.text).to eql("Thank you for your order!")
end