class PageUser<SitePrism::Page
    element :div_curso, 'div[class="fa fa-warning"]'
    element :seta_sair, '#action-menu-toggle-0'
    element :botao_sair, '#actionmenuaction-6'
 

    def deslogarUsuario
        seta_sair.click
        sleep(5)
        botao_sair.click
    end
end