#language: pt

@chrome @edge @firefox
Funcionalidade: Acesso à área do candidato

  Como candidato inscrito
  Eu quero acessar a área do candidato
  Para acompanhar minha inscrição

  Cenário: Visualizar tela de início da jornada
    Dado que o usuário concluiu o preenchimento do formulário de inscrição
    Então deve visualizar a mensagem "Sua jornada começa aqui!"
    E deve visualizar as instruções de acesso do candidato
    E deve visualizar o botão "Acessar área do candidato"
    E deve visualizar botão Privacidade
    E deve visualizar botão home
    E deve visualizar opções de tema
    E deve visualizar logotipo +a
    E deve visualizar botão Portal de inscrições

  Cenário: Visualizar credenciais de acesso
    Dado que o usuário está na tela de início da jornada
    Então deve visualizar o usuário de acesso
    E deve visualizar a senha de acesso

  Cenário: Acessar área do candidato
    Dado que o usuário está na tela de início da jornada
    Quando clica no botão "Acessar área do candidato"
    Então deve ser redirecionado para a área do candidato
