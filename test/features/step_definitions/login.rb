#Passa os parametros da tabela de "login.feature" para as variaveis respectivas e inicia o objeto home
Dado("que eu tenho um usuario") do |table|
  @username = table.rows_hash['username']
  @senha = table.rows_hash['senha']
  home.load
end

#passa os parametros para o metodo logar_usuario do objeto home
Quando("eu faco login") do
  @home.logar_usuario('01182101', '#Gf23785534809')
end

#Verifica se page tem a url informada abaixo
Entao("eu verifico se estou logado") do
  expect(page).to have_current_path('http://moodle.bandtec.com.br/login/index.php', url: true)
end
 