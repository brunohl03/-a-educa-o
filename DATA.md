
## Objetivo

Definir a estratégia de criação, utilização e controle da massa de dados utilizada nos testes funcionais da aplicação Subscriptions, considerando futura persistência em PostgreSQL e execução automatizada com Reqnroll, Selenium e NUnit.

A estratégia prioriza previsibilidade, estabilidade dos testes, facilidade de reprodução de cenários e compatibilidade com execução paralela em múltiplos navegadores.

------------------------------------------------------------

##  Estratégia Geral de Dados

- Utilização de usuário fixo reutilizável em todos os testes
- Criação de novas inscrições durante a execução dos cenários
- Consumo de dados já existentes na aplicação (ex: cursos)
- Execução dos testes em paralelo em múltiplos navegadores (Chrome, Edge e Firefox)
- Utilização de dados válidos, inválidos e dados de limite (boundary testing)

Motivação:

- Garantir estabilidade dos testes
- Facilitar reprodução de bugs
- Reduzir dependência de criação dinâmica de usuários
- Aumentar previsibilidade do ambiente de execução

Riscos considerados:

- Estado do usuário pode variar entre execuções
- Conflitos em execuções paralelas
- Acúmulo de inscrições persistidas

Mitigações adotadas:

- Criação de novas inscrições em cada fluxo
- Cenários independentes entre si
- Reutilização controlada dos dados do usuário

------------------------------------------------------------

## Massa de Dados — Login e Autenticação

Natureza dos dados:

- Usuário fixo previamente existente no sistema
- Credenciais reutilizadas em todos os testes autenticados

Credenciais utilizadas:

- Usuário: candidato
- Senha: subscribe

Fluxos cobertos:

- Login
- Recuperação de senha
- Recuperação de usuário
- Acesso à área autenticada

Tipos de dados utilizados:

Dados válidos:
- Credenciais corretas
- Usuário existente

Dados inválidos:
- Email inexistente
- Email mal formatado
- Senha incorreta
- Campos vazios
- Email extremamente longo

Dados de limite:
- Tamanho máximo de campos de autenticação
- Solicitações repetidas de recuperação de acesso

------------------------------------------------------------

## Massa de Dados — Formulário de Inscrição

Natureza dos dados:

- Dados inseridos manualmente durante os testes
- Nova inscrição criada a cada execução de fluxo

Campos utilizados:

- CPF
- Nome
- Sobrenome
- Nome social
- Email
- Telefone
- Celular
- CEP
- Endereço
- Complemento
- Bairro
- Cidade
- Estado
- País
- Data de nascimento
- Deficiência

Tipos de dados utilizados:

Dados válidos:
- CPF válido
- Nome textual simples
- Email em formato correto
- Telefone numérico
- CEP com 8 números
- Data de nascimento a partir de 1880
- Endereço convencional

Dados inválidos:
- Texto extremamente longo
- Letras em campos numéricos
- Caracteres especiais indevidos
- Campos obrigatórios vazios
- Emails mal formatados

Dados de limite:
- Campos com excesso de caracteres
- Datas fora da faixa permitida
- Telefone fora do intervalo de tamanho
- CEP com tamanho incorreto
- Texto exagerado em campos textuais

------------------------------------------------------------

## Massa de Dados — Seleção de Cursos

Natureza dos dados:

- Cursos pré-existentes na aplicação
- Dados apenas consumidos pelos testes
- Não há criação ou alteração de cursos

Tipos de dados utilizados:

Dados válidos:
- Cursos existentes
- Cursos disponíveis para inscrição
- Cursos retornados pela busca

Dados inválidos:
- Termos inexistentes na busca
- Texto extremamente longo na pesquisa
- Caracteres especiais na busca

Dados de limite:
- Grande volume de cursos no dropdown
- Pesquisas com textos extensos

Objetivos:

- Validar navegação do fluxo de inscrição
- Validar comportamento do seletor de cursos
- Validar funcionalidade de busca

------------------------------------------------------------

## Massa de Dados — Área do Usuário (Dashboard)

Natureza dos dados:

- Dados derivados das inscrições realizadas
- Estados diferentes do candidato autenticado

Tipos de dados utilizados:

Dados válidos:
- Usuário autenticado
- Inscrição ativa
- Informações disponíveis na área financeira

Estados testados:
- Conteúdo vazio
- Ausência de dados financeiros
- Falhas de carregamento de conteúdo
- Exibição incorreta de mensagens ou textos técnicos

Objetivos:

- Validar comportamento da interface
- Validar navegação entre abas
- Validar tratamento de ausência de dados

------------------------------------------------------------

## Tipos de Massa de Dados Utilizados

- Dados válidos (fluxo feliz)
- Dados inválidos (validação de regras de negócio)
- Dados de limite (boundary testing)
- Estados do sistema
- Dados derivados de execuções anteriores

------------------------------------------------------------

## Considerações para Futuro Uso com PostgreSQL

- Separação entre dados de teste e dados reais
- Possibilidade de criação de seeds para ambiente de QA
- Uso de identificadores únicos para inscrições
- Estratégia futura de limpeza automatizada de dados
- Preparação para execução paralela com isolamento lógico

------------------------------------------------------------

## Conclusão

A estratégia adotada prioriza estabilidade dos testes, reprodutibilidade dos cenários, validação abrangente de entradas e facilidade de manutenção futura, mantendo compatibilidade com automação em múltiplos navegadores e possível persistência em banco PostgreSQL.
