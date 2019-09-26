Dado("eu tenho {int} laranjas.") do |valor1|
    @laranjas = valor1
end
  
Quando("eu como {int} laranjas.") do |valor2|
    @qtdLaranjasComidas = valor2
    @resultado = @laranjas - @qtdLaranjasComidas
end
  
Então("eu vejo quantas sobraram.") do
    puts @resultado
    expect(@resultado).to eq 8
end

Dado("eu possuo {int} laranjas.") do |valor|
    @laranjas = valor
end
  
Quando("eu compro {int} laranjas.") do |valor2|
    @compro = valor2
    @resultado = @laranjas + @compro
end
  
Então("eu vejo quantas tenho.") do
    puts @resultado
    expect(@resultado).to eq 15
end