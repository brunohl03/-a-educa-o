#language: pt

@chrome @edge @firefox
Funcionalidade: Preenchimento do formulário de inscrição

  Como candidato
  Eu quero preencher meus dados pessoais e de contato
  Para prosseguir com minha inscrição

  Cenário: Visualizar formulário de inscrição
    Dado que o usuário avançou após selecionar um curso
    Então deve visualizar a seção "Dados pessoais"
    E deve visualizar os campos CPF, Nome, Sobrenome e Data de nascimento
    E deve visualizar a seção "Contato"
    E deve visualizar os campos Email, Celular e Telefone
    E deve visualizar a seção "Endereço"
    E deve visualizar campos de endereço
    E deve visualizar o botão "Voltar"
    E deve visualizar o botão "Avançar"
    E deve visualizar botão Privacidade
    E deve visualizar botão home
    E deve visualizar opções de tema
    E deve visualizar logotipo +a
    E deve visualizar botão Portal de inscrições

  Cenário: Tentar avançar com formulário vazio
    Dado que o usuário está no formulário de inscrição
    Quando clica em "Avançar" sem preencher os campos obrigatórios
    Então deve visualizar mensagens de validação nos campos obrigatórios

  Cenário: Preencher formulário com dados válidos
    Dado que o usuário está no formulário de inscrição
    Quando preenche todos os campos obrigatórios corretamente
    E clica em "Avançar"
    Então deve avançar para a próxima etapa da inscrição

  Cenário: Preencher CPF em formato inválido
    Dado que o usuário está no formulário de inscrição
    Quando informa um CPF em formato inválido
    Então deve visualizar mensagem de erro no campo CPF

  Cenário: Preencher email inválido
    Dado que o usuário está no formulário de inscrição
    Quando informa um email em formato inválido
    Então deve visualizar mensagem de erro no campo Email

  Cenário: Preencher telefone em formato inválido
    Dado que o usuário está no formulário de inscrição
    Quando informa um telefone em formato inválido
    Então deve visualizar mensagem de erro no campo Telefone

  Cenário: Preencher data de nascimento inválida
    Dado que o usuário está no formulário de inscrição
    Quando informa uma data de nascimento inválida
    Então deve visualizar mensagem de erro no campo Data de nascimento

  Cenário: Preencher CEP em formato inválido
    Dado que o usuário está no formulário de inscrição
    Quando informa um CEP em formato inválido
    Então deve visualizar mensagem de erro no campo CEP

  Cenário: Marcar opção possui deficiência
    Dado que o usuário está no formulário de inscrição
    Quando marca a opção "Possui alguma deficiência?"
    Então o sistema deve registrar a escolha do usuário

  Cenário: Navegar para tela anterior
    Dado que o usuário está no formulário de inscrição
    Quando clica no botão "Voltar"
    Então deve retornar para a tela anterior da inscrição

  Cenário: Preencher parcialmente o formulário
    Dado que o usuário está no formulário de inscrição
    Quando preenche apenas alguns campos obrigatórios
    E tenta avançar
    Então deve visualizar quais campos obrigatórios não foram preenchidos

  Cenário: Inserir caracteres especiais em campos de texto
    Dado que o usuário está no formulário de inscrição
    Quando insere caracteres inválidos em campos de texto
    Então deve visualizar mensagem de validação

  Cenário: Informar CPF com mais de 12 caracteres
    Dado que o usuário está no formulário de inscrição
    Quando informa um CPF com mais de 12 caracteres
    Então o sistema deve impedir a digitação adicional ou exibir validação de limite máximo

  Cenário: Informar CPF com quantidade máxima permitida
    Dado que o usuário está no formulário de inscrição
    Quando informa um CPF com até 12 caracteres
    Então o sistema deve aceitar o valor informado

  Cenário: Informar telefone com menos de 10 caracteres
    Dado que o usuário está no formulário de inscrição
    Quando informa um telefone com menos de 10 caracteres
    E tenta avançar
    Então deve visualizar mensagem informando quantidade mínima inválida

  Cenário: Informar telefone com mais de 15 caracteres
    Dado que o usuário está no formulário de inscrição
    Quando informa um telefone com mais de 15 caracteres
    Então o sistema deve impedir a digitação adicional ou exibir validação de limite máximo

  Cenário: Informar telefone dentro do limite permitido
    Dado que o usuário está no formulário de inscrição
    Quando informa um telefone entre 10 e 15 caracteres
    Então o sistema deve aceitar o valor informado

  Cenário: Informar telefone com letras
    Dado que o usuário está no formulário de inscrição
    Quando informa letras no campo Telefone
    Então deve visualizar mensagem de validação informando que apenas números são permitidos

  Cenário: Informar telefone com caracteres especiais
    Dado que o usuário está no formulário de inscrição
    Quando informa caracteres especiais no campo Telefone
    Então deve visualizar mensagem de validação informando que apenas números são permitidos

  Cenário: Informar telefone contendo números e letras
    Dado que o usuário está no formulário de inscrição
    Quando informa números e letras no campo Telefone
    Então deve visualizar mensagem de validação no campo Telefone

  Cenário: Informar telefone apenas com números
    Dado que o usuário está no formulário de inscrição
    Quando informa um telefone contendo apenas números
    Então o sistema deve aceitar o valor informado

  Cenário: Informar CEP com menos de 8 números
    Dado que o usuário está no formulário de inscrição
    Quando informa um CEP com menos de 8 números
    E tenta avançar
    Então deve visualizar mensagem de validação de quantidade inválida

  Cenário: Informar CEP com mais de 8 números
    Dado que o usuário está no formulário de inscrição
    Quando informa um CEP com mais de 8 números
    Então o sistema deve impedir a digitação adicional ou exibir validação de limite máximo

  Cenário: Informar CEP com exatamente 8 números
    Dado que o usuário está no formulário de inscrição
    Quando informa um CEP com 8 números
    Então o sistema deve aceitar o valor informado

  Cenário: Informar CEP com caracteres não numéricos
    Dado que o usuário está no formulário de inscrição
    Quando informa letras ou caracteres especiais no campo CEP
    Então deve visualizar mensagem de validação informando que apenas números são permitidos

  Cenário: Informar data de nascimento exatamente em 1880
    Dado que o usuário está no formulário de inscrição
    Quando informa uma data de nascimento no ano de 1880
    Então o sistema deve aceitar a data informada

  Cenário: Selecionar data inválida pelo calendário
    Dado que o usuário está no formulário de inscrição
    Quando tenta selecionar uma data anterior a 1880 pelo calendário
    Então o sistema não deve permitir a seleção da data

  Cenário: Digitar manualmente data anterior a 1880
    Dado que o usuário está no formulário de inscrição
    Quando digita manualmente uma data anterior a 1880
    E tenta avançar
    Então deve visualizar mensagem de validação no campo Data de nascimento
