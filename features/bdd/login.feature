#language: pt
#encoding: utf-8

@login
Funcionalidade: Sistema de Login
Para ter acesso ao sistema
O usuario do Linkedin
Deseja logar no site

@cenario_login_sucesso
Cenario: Login com sucesso
Dado que o usuario queira se logar
Quando ele digitar as credenciais validas
Entao deve acessar o site com sucesso

@cenario_login_sem_senha
Cenario: Login sem digitar senha
Dado que o usuario tente logar sem senha
Quando ele digitar as credenciais invalidas
Entao uma mensagem informando o erro deve aparecer
