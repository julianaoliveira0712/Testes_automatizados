Dado("que eu tenho um usuario") do |table|
    @usuario = table.rows_hash['user']
    @senha = table.rows_hash['senha']
    #visit('http://moodle.bandtec.com.br/login/index.php')
    home.load 
end

Quando("eu faço login") do
    home.logarUsuario('01182101','#Gf23785534809')     
=begin
fill_in 'username', with: @usuario
fill_in 'password', with: @senha
find('#loginbtn').click   
=end 
    #find (:css,'input[value="Acessar"]').click
end
  
Entao("eu verifico se estou logado") do
    expect(page).to have_current_path('http://moodle.bandtec.com.br/', url: true)
    #@div_curso = find('div[class="fa fa-warning"]')
    #expect(@div_curso.text).to eql''

    sleep(10)
end