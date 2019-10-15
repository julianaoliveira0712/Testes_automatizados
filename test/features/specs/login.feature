# language: pt

#Funcionalidade desejada
Funcionalidade: Fazer login

-Eu como usuario.
-Eu quero fazer login na plataforma.

#Roda a função de deslogar após o termino do cenário
@deslogarUsuario
#Cenário a ser feito
Cenario: Fazer login com sucesso.
Dado que eu tenho um usuario
#Parametros passado
|username   |01182101      |
|senha      |#Gf23785534809|
Quando eu faço login
Entao eu verifico se estou logado
