class PageUser<SitePrism::Page
    element :div_curso, 'div[class="fa fa-warning"]'
    element :seta_sair, '#action-menu-toggle-0'
    element :botao_sair, '#actionmenuaction-6'

    def logarUsuario(username,password)
        campo_username.set username
        campo_senha.set password
        botao_logar.click
    end

    def deslogarUsuario
        seta_sair.click
        sleep(5)
        botao_sair.click
    end
    
end
