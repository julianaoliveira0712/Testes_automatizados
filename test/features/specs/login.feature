# language: pt

Funcionalidade: Fazer login

-Eu como usuario.
-Eu quero fazer login na plataforma.

Cenario: Fazer login com sucesso.
Dado que eu tenho um usuario
|user       |api-pagamentos|
|senha      |apipagamentos |
Quando eu faço login
Entao eu verifico se estou logado