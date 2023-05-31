class CompraProdutos < SitePrism::Page
    set_url('/')
    element :first_name,                       '#first-name'
    element :last_name,                        '#last-name'
    element :postal_code,                      '#postal-code'
    element :btn_carrinho,                     '.shopping_cart_link'
    element :msg_erro,                 :xpath, '//*[@id="checkout_info_container"]/div/form/div[1]/div[4]'
    element :btn_add,                  :xpath, '//*[@id="add-to-cart-sauce-labs-backpack"]'
    element :remove_products,          :xpath, '//*[@id="remove-sauce-labs-backpack"]'
    element :finish_valor_total,       :xpath, '//*[@id="checkout_summary_container"]/div/div[2]/div[8]'
    element :finish_cancelar,          :xpath, '//*[@id="cancel"]'
    element :titulo_pagina,                    '.app_logo'
    element :btn_finish,                       '#finish'
    element :btn_back_home,            :xpath, '//*[@id="back-to-products"]'
    element :titulo_compra_finalizada, :xpath, '//*[@id="checkout_complete_container"]/h2'

    def preencher_campos_compra(parametro = nil)
        first_name.send_keys('Teste Teste') unless parametro.eql?("first_name")
        last_name.send_keys('Teste Teste') unless parametro.eql?("last_name")
        postal_code.send_keys('09807050') unless parametro.eql?("postal_code")
        sleep(5)
        click_button('Continue')
        sleep(5)
    end

    def preencher_campos_compra_diferente
        fill_in 'First Name', with: 'Fulano'
        fill_in 'Last Name', with: 'Fulano'
        fill_in 'Zip/Postal Code', with: '09807050'
        sleep(5)
        click_button('Continue')
        sleep(5)
    end
end