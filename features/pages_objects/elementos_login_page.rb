class PageObject < SitePrism::Page
    set_url('/') #carrega a url que ja esta sendo usada, toda vez que ela for estanciada
    element :texto_acesso,         '.login_logo'  #pegando os elementos da tela, como se fossem variaveis
    element :user,                 '#user-name'   #ai passo o seu valor sendo . para classes e # para id
    element :password,             '#password'
    element :botao_login,          '#login-button'
    element :msg_password, :xpath, '//*[@id="login_button_container"]/div/form/div[3]/h3'
    element :msg_user,     :xpath, '//*[@id="login_button_container"]/div/form/div[3]/h3'

    def preencher_user_and_password(parametro = nil)
        user.send_keys('standard_user') unless parametro.eql?("sem_user")
        password.send_keys('secret_sauce') unless parametro.eql?("sem_password")
    end

    def efetuar_login
        sleep 3            #sleep serve para fazer com que o programa aguarde antes de ser executado e
        botao_login.click  #chamamos o elemento botao_login e passamos um .click para que seja clicado na tela
        sleep 3
    end
end