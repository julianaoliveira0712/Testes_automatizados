
Quando("acesso a url") do
    #visita uma parte da url inicial informada no app_host
    visit '/login/index.php'
    sleep(5)
end
  
Entao("eu verifico se estou na pagina correta") do
    #verifica se está realmente na url informada em app_host
    expect(page).to have_current_path('http://moodle.bandtec.com.br/login/index.php', url: true)
    sleep(5)
end
