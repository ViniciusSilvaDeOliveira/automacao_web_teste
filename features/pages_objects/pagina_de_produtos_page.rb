class Prod_Objects < SitePrism::Page
    set_url('/inventory.html') #carrega a url que já está sendo usada, toda vez que ela for estanciada
    element :texto_produtos, '.title'
    element :filtros, '.product_sort_container'
    element :add_products, :xpath, '//*[@id="add-to-cart-sauce-labs-backpack"]'
    element :remove_products, :xpath, '//*[@id="remove-sauce-labs-backpack"]'
    element :menu_lateral, :xpath, '//*[@id="react-burger-menu-btn"]'
end