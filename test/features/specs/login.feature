# language: pt

Funcionalidade: Fazer login

-Eu como usuario.
-Eu quero fazer login na plataforma.

@deslogarUsuario
Cenario: Fazer login com sucesso.
Dado que eu tenho um usuario
|user       |01182101|
|senha      |#Gf23785534809|
Quando eu faço login
Entao eu verifico se estou logado
