
Quando("acesso a url") do
    #visita uma parte da url inicial informada no app_host
    visit '/login'
    sleep(5)
end
  
Entao("eu verifico se estou na pagina correta") do
    #verifica se está realmente na url informada em app_host
    expect(page).to have_current_path('https://github.com/login', url: true)
    sleep(5)
end
