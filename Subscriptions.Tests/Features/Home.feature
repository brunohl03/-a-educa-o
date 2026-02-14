#language: pt

@chrome @edge @firefox
Funcionalidade: Página inicial do portal de inscrições
 
  Como visitante do portal
  Eu quero visualizar as opções de ensino
  Para iniciar minha inscrição

  Cenário: Acessar página inicial
    Dado que o usuário acessa o portal de inscrições
    Então deve visualizar o seletor de nível de ensino
    E botão Privacidade
    E botão home
    E opções de tema
    E logotipo +a
    E botão Portal de inscrições

  Cenário: Visualizar níveis de ensino disponíveis
    Dado que o usuário está na página inicial
    Quando expande o seletor de nível de ensino
    Então deve visualizar a opção "Graduação"
    E deve visualizar a opção "Pós-graduação"

  Cenário: Acessar política de privacidade
    Dado que o usuário está na página inicial
    Quando clica em "Privacidade"
    Então deve visualizar a página de privacidade

  Cenário: Alterar para tema escuro
    Dado que o usuário está na página inicial
    Quando seleciona o tema "Escuro"
    Então a interface deve ser exibida em modo escuro

  Cenário: Alterar para tema claro
    Dado que o usuário está na página inicial
    Quando seleciona o tema "Claro"
    Então a interface deve ser exibida em modo claro

  Cenário: Alterar para tema do sistema
    Dado que o usuário está na página inicial
    Quando seleciona o tema "Sistema"
    Então a interface deve seguir o tema do sistema operacional

  Cenário: Selecionar nível Graduação
    Dado que o usuário está na página inicial
    Quando expande o seletor de nível de ensino
    E seleciona o nível "Graduação"
    Então deve avançar para o fluxo de inscrição de Graduação

  Cenário: Selecionar nível Pós-graduação
    Dado que o usuário está na página inicial
    Quando expande o seletor de nível de ensino
    E seleciona o nível "Pós-graduação"
    Então deve avançar para o fluxo de inscrição de Pós-graduação
