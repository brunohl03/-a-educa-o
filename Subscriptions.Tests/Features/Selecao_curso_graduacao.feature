#language: pt

@chrome @edge @firefox
Funcionalidade: Seleção de curso de Graduação
 
  Como usuário do portal de inscrições
  Eu quero selecionar um curso de Graduação
  Para continuar minha inscrição

  Cenário: Visualizar tela de seleção de curso de Graduação
    Dado que o usuário selecionou o nível "Graduação"
    Então deve visualizar o título "Selecione seu curso de Graduação"
    E deve visualizar o seletor de cursos
    E deve visualizar o botão "Voltar"
    E deve visualizar o botão "Avançar"
    E deve visualizar botão Privacidade
    E deve visualizar botão home
    E deve visualizar opções de tema
    E deve visualizar logotipo +a
    E deve visualizar botão Portal de inscrições

  Cenário: Visualizar opções de cursos disponíveis
    Dado que o usuário está na tela de seleção de curso de Graduação
    Quando expande o seletor de cursos
    Então deve visualizar a lista de cursos disponíveis

  Cenário: Avançar sem selecionar curso
    Dado que o usuário está na tela de seleção de curso de Graduação
    Quando clica no botão "Avançar"
    Então não deve avançar para o próximo passo

  Cenário: Selecionar curso e avançar
    Dado que o usuário está na tela de seleção de curso de Graduação
    Quando seleciona um curso
    E clica no botão "Avançar"
    Então deve avançar para a próxima etapa da inscrição

  Cenário: Voltar para seleção de nível
    Dado que o usuário está na tela de seleção de curso de Graduação
    Quando clica no botão "Voltar"
    Então deve retornar para a seleção de nível de ensino

  Cenário: Exibir mensagem ao tentar avançar sem selecionar curso
    Dado que o usuário está na tela de seleção de curso de Graduação
    Quando clica no botão "Avançar" sem selecionar um curso
    Então deve visualizar uma mensagem informando que é necessário selecionar um curso

  Cenário: Selecionar curso válido
    Dado que o usuário está na tela de seleção de curso de Graduação
    Quando seleciona um curso válido
    Então o curso selecionado deve ser exibido no seletor

  Cenário: Pesquisar curso existente
    Dado que o usuário está na tela de seleção de curso de Graduação
    Quando digita o nome de um curso existente no campo de pesquisa
    Então deve visualizar cursos correspondentes ao termo pesquisado

  Cenário: Pesquisar curso inexistente
    Dado que o usuário está na tela de seleção de curso de Graduação
    Quando digita um curso inexistente no campo de pesquisa
    Então não deve visualizar resultados na lista

  Cenário: Limpar campo de pesquisa
    Dado que o usuário realizou uma busca por curso
    Quando limpa o campo de pesquisa
    Então deve visualizar novamente todos os cursos disponíveis
