Quando("acesso a url de botoes") do
    visit 'https://github.com'

end
  
Então("verifico se encontrei os elementos") do
    page.all("#username")
end