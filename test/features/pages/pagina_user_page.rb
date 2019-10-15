# Classe onde pega os ids dos elementos da pagina do usuário e armazena numa variavel para identificar 
#os elementos da tela
class PageUser<SitePrism::Page
    element :div_curso, 'div[class="fa fa-warning"]'
    element :seta_sair, '#action-menu-toggle-0'
    element :botao_sair, '#actionmenuaction-6'

    #função de deslogar o usuario
    def deslogarUsuario
        seta_sair.click
        sleep(5)
        botao_sair.click
    end
    
end

  



