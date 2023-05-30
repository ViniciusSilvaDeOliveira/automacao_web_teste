class CompraProdutos < SitePrism::Page
    set_url('/')
    element :first_name,           '#first-name'
    element :last_name,            '#last-name'
    element :postal_code,          '#postal-code'
    element :btn_continue,         '#continue'
    element :btn_carrinho,         '.shopping_cart_link'
    element :btn_checkout,         '#checkout'
    element :msg_erro,     :xpath, '//*[@id="checkout_info_container"]/div/form/div[1]/div[4]'

    def preencher_campos_compra(parametro = nil)
        first_name.send_keys('Teste Teste') unless parametro.eql?("first_name")
        last_name.send_keys('Teste Teste') unless parametro.eql?("last_name")
        postal_code.send_keys('09807050') unless parametro.eql?("postal_code")
        sleep(5)
        btn_continue.click
        sleep(5)
    end
end