class PageObject < SitePrism::Page
    set_url('/') #carrega a url que ja esta sendo usada, toda vez que ela for estanciada
    element :texto_acesso, '.login_logo'
    element :user, '#user-name'
    element :password, '#password'
    element :botao_login, '#login-button'

    def preencher_user_and_password
        user.send_keys('standard_user')
        password.send_keys('secret_sauce')
    end

    def efetuar_login
        sleep 3
        botao_login.click
        sleep 3
    end
end