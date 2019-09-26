
Dado("que eu tenho {int} laranjas na bolsa.") do |valor|
@laranjas = valor
end
  
Quando("eu coloco {int} laranjas na bolsa") do |valor2|
@bolso = valor2
end
  
Entao("eu verifico se o total de laranjas na bolsa e {int}.") do |resultado|
@total = @laranjas + @bolso
expect(@total).to eq resultado
end
  
Quando("eu tiro {int} laranjas na bolsa") do |valor|
    @quantidade = valor
end
  
Entao("eu verifico com quantas laranjas eu fiquei na bolsa.") do
    @sobra = @laranjas - @quantidade
    expect(@sobra).to eq 8
end