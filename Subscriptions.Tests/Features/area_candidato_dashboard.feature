#language: pt

@chrome @edge @firefox
Funcionalidade: Dashboard da área do candidato

  Como candidato autenticado
  Eu quero visualizar minhas informações
  Para acompanhar minha inscrição

  Cenário: Acessar dashboard após login
    Dado que o usuário realizou login com sucesso
    Então deve visualizar a mensagem de boas-vindas
    E deve visualizar o menu lateral
    E deve visualizar as opções "Minhas inscrições" e "Financeiro"

  Cenário: Visualizar campo de busca
    Dado que o usuário está no dashboard
    Então deve visualizar o campo de pesquisa

  Cenário: Navegar para Minhas inscrições
    Dado que o usuário está no dashboard
    Quando clica em "Minhas inscrições"
    Então deve acessar a área de inscrições
    E deve ter botão "voltar para home"
    Então deve ser possível retornar ao "home"

  Cenário: Navegar para Financeiro
    Dado que o usuário está no dashboard
    Quando clica em "Financeiro"
    Então deve acessar a área financeira
    E deve ter botão "voltar para home"
    Então deve ser possível retornar ao "home"

  Cenário: Utilizar campo de pesquisa
    Dado que o usuário está no dashboard
    Quando informa um termo no campo de pesquisa
    Então deve visualizar resultados relacionados

