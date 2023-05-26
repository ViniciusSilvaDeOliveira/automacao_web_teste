class PageObject < SitePrism::Page
    set_url('/') #carrega a url que ja esta sendo usada, toda vez que ela for estanciada
    element :texto_acesso, '.login_logo'  #pegando os elementos da tela, como se fossem variaveis
    element :user,         '#user-name'   #ai passo o seu valor sendo . para classes e # para id
    element :password,     '#password'
    element :botao_login,  '#login-button'

    def preencher_user_and_password         #funcao onde chamamos na step para preencher os campos e fazer o 
        user.send_keys('standard_user')     #login, send_keys envia os dados para o elemento User com uma string
        password.send_keys('secret_sauce')  #e envia outra string para o elemento password
    end

    def efetuar_login
        sleep 3            #sleep serve para fazer com que o programa aguarde antes de ser executado e
        botao_login.click  #chamamos o elemento botao_login e passamos um .click para que seja clicado na tela
        sleep 3
    end
end