# Challenge QA 

## Descrição

Este repositório contém a análise funcional, documentação de cenários de teste em Gherkin, identificação de bugs e preparação estrutural para automação e testes de performance da aplicação Subscriptions, conforme proposto no desafio técnico de QA.

O projeto foi estruturado utilizando .NET 8 com Reqnroll e NUnit, seguindo boas práticas de organização, escrita de cenários e separação de responsabilidades.

O foco principal desta entrega é a análise dos fluxos da aplicação, documentação dos cenários, validações funcionais e report de bugs encontrados durante a exploração do sistema.

------------------------------------------------------------

## Estrutura do Projeto

/Features  
   home.feature  
   selecao_curso.feature  
   formulario_inscricao.feature  
   autenticacao_candidato.feature  
   area_candidato_dashboard.feature  

/Pages  
/Steps  
/Support  

BUGS.md  
DATA.md  
COMMENTS.md  
README.md  

------------------------------------------------------------

## Tecnologias Utilizadas

- .NET 8
- Reqnroll
- NUnit
- Selenium (estrutura preparada para automação futura)
- Git e GitHub para versionamento

------------------------------------------------------------

## Objetivo da Estrutura

A organização do projeto foi definida para permitir evolução futura em automação de testes e execução paralela em múltiplos navegadores.

Separação adotada:

Features: definição dos cenários em Gherkin  
Steps: implementação das ações e validações  
Pages: abstração dos elementos das páginas (Page Object Model)  
Support: configurações e suporte de execução  

------------------------------------------------------------

## Conteúdo Entregue

- Análise dos fluxos principais da aplicação
- Identificação de regras de negócio e validações
- Escrita de cenários utilizando Gherkin e padrão BRIEF
- Organização dos cenários em projeto .NET com Reqnroll
- Report detalhado de bugs em BUGS.md
- Estratégia de massa de dados em DATA.md
- Decisões técnicas e arquitetura documentadas em COMMENTS.md

------------------------------------------------------------

## Fluxos Analisados

- Navegação inicial (Home)
- Seleção de curso
- Preenchimento do formulário de inscrição
- Autenticação do candidato
- Área do candidato (dashboard)

------------------------------------------------------------

## Pré-requisitos

- .NET 8 SDK instalado
- Visual Studio ou Visual Studio Code
- Git

------------------------------------------------------------

## Como Executar o Projeto

1. Clonar o repositório:

git clone <url-do-repositorio>

2. Acessar a pasta do projeto:

cd nome-do-projeto

3. Restaurar dependências:

dotnet restore

4. Executar testes (quando houver automação implementada):

dotnet test

------------------------------------------------------------

## Estratégia de Testes

A abordagem adotada priorizou:

- Testes exploratórios para descoberta de regras e comportamentos
- Escrita de cenários orientados ao comportamento do usuário
- Validações de dados válidos, inválidos e de limite
- Identificação de inconsistências funcionais e de validação de entrada

------------------------------------------------------------

## Observações

A estrutura do projeto foi preparada para evolução futura incluindo:

- Automação completa dos cenários com Selenium
- Execução paralela em múltiplos navegadores
- Integração com Selenium Grid e Docker Compose
- Testes de performance com k6 em etapas posteriores do desafio

------------------------------------------------------------

## Autor

Bruno Henrique de Almeida Lima
