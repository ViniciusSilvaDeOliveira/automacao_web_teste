class PageAbout < SitePrism::Page
    set_url('/') #carrega a url que ja esta sendo usada, toda vez que ela for estanciada
    element :img_titulo, :xpath, '//*[@id="__next"]/header/div/div/div[1]/div[1]/a/div[1]/span/img'
end