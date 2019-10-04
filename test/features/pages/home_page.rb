class HomePage<SitePrism::Page
    set_url 'http://moodle.bandtec.com.br/login/index.php'
    element :campo_username, '#username'
    element :campo_senha, '#password'
    element :botao_logar, '#loginbtn'

    def logarUsuario(username,password)
        campo_username.set username
        campo_senha.set password
        botao_logar.click
    end
end
