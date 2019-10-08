class HomePage < SitePrism::Page
    set_url 'http://moodle.bandtec.com.br/login/index.php'
    element :campo_username, '#username'
    element :campo_senha, '#password'
    element :botao_logar, '#loginbtn'


end

 
