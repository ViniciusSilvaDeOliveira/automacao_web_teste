E ('clico na opcao do carrinho') do
    compra.btn_carrinho.click
    sleep(5)
end

E ('clico em checkout') do 
    compra.btn_checkout.click
    sleep(5)
end

E ('preencho alguns campos para seguir com a compra {string}') do |campos|
    compra.preencher_campos_compra(campos)
end

Entao ('valido que não é possível continuar devido as informacoes nao ter sido preenchidas {string}') do |campos|
    case cenario
        when "first_name"
            expect(compra.msg_erro).to be_truthy
        when "last_name"
            expect(compra.msg_erro).to be_truthy
        when "postal_code"
            expect(compra.msg_erro).to be_truthy
    end
end