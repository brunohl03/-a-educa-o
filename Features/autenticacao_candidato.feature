#language: pt

@chrome @edge @firefox
Funcionalidade: Autenticação do candidato

  Como candidato
  Eu quero realizar login na área do candidato
  Para acessar minha inscrição

  Cenário: Visualizar tela de autenticação
    Dado que o usuário acessa a tela de login
    Então deve visualizar o campo "Usuário"
    E deve visualizar o campo "Senha"
    E deve visualizar o botão "Login"
    E deve visualizar a opção "Recuperar usuário"
    E deve visualizar a opção "Redefinir senha"
    E botão Privacidade
    E botão home
    E opções de tema
    E logotipo +a
    E botão Portal de inscrições

  Cenário: Tentar realizar login com campos vazios
    Dado que o usuário está na tela de login
    Quando clica no botão "Login" sem preencher os campos
    Então deve visualizar mensagens de validação

  Cenário: Realizar login com credenciais inválidas
    Dado que o usuário está na tela de login
    Quando informa usuário ou senha inválidos
    E clica no botão "Login"
    Então deve visualizar mensagem de erro de autenticação

  Cenário: Realizar login com sucesso
    Dado que o usuário está na tela de login
    Quando informa usuário e senha válidos
    E clica no botão "Login"
    Então deve acessar a área do candidato

  Cenário: Acessar recuperação de usuário
    Dado que o usuário está na tela de login
    Quando clica em "Recuperar usuário"
    Então deve enviado email com instruções para recuperação

  Cenário: Acessar redefinição de senha
    Dado que o usuário está na tela de login
    Quando clica em "Redefinir senha"
    Então deve enviado email com instruções para recuperação
