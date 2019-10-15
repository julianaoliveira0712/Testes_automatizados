#classe de acesso ao endereço inicial, onde se pega os ids dos elementos do codigo e se coloca numa variavel
class HomePage < SitePrism::Page
    set_url 'http://moodle.bandtec.com.br/login/index.php'
    element :campo_username, '#username'
    element :campo_senha, '#password'
    element :botao_logar, '#loginbtn'

    #Função para logar o usuário
    def logar_usuario(username, senha)
        campo_email.set username
        campo_senha.set senha
        botao_logar.click
    end

end


 
