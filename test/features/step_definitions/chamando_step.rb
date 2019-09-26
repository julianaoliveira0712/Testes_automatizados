Dado("eu tenho {int} laranjas no estoque.") do |valor1|
    @laranjas = valor1
end
  
Quando("eu amasso {int} laranjas") do |amassei|
    @total = @laranjas - amassei
end
  
Entao("eu verifico quantas laranjas sobraram no estoque.") do
    expect(@total).to eq 8
end
  
Quando("eu revendo {int} laranjas") do |qtd|
    steps %Q{
        Dado que eu tenho 10 laranjas no estoque.
    }
   @resultado = @laranjas - qtd
end
  
Entao("eu verifico com quantas laranjas eu fiquei.") do
    expect(@total).to eq 8

end