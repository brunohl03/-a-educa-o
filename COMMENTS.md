

## Decisões de Arquitetura

O projeto foi estruturado utilizando .NET 8 com Reqnroll e NUnit para documentação e futura automação dos cenários de testes.

A organização foi separada por responsabilidade visando escalabilidade e manutenção:

- Features: arquivos Gherkin contendo regras de negócio e cenários de teste
- Steps: implementação das ações e validações dos cenários
- Pages: abstração dos elementos das páginas seguindo o padrão Page Object Model
- Support: configurações gerais, hooks e suporte de execução

Os cenários foram escritos com foco em:

- Clareza funcional
- Independência entre cenários
- Reutilização de passos
- Escrita orientada ao comportamento do usuário

------------------------------------------------------------

## Estratégia de Testes

A abordagem adotada considerou:

- Testes exploratórios para identificação de regras e comportamentos
- Escrita de cenários utilizando sintaxe completa do Gherkin
- Aplicação do padrão BRIEF na construção dos cenários
- Validação com dados válidos, inválidos e de limite

Fluxos principais analisados:

- Seleção de curso
- Preenchimento do formulário de inscrição
- Autenticação do candidato
- Área autenticada do usuário

------------------------------------------------------------

## Estratégia de Dados

Foi adotado o uso de um usuário fixo para execução dos testes, com criação de novas inscrições durante os cenários para garantir isolamento funcional entre execuções.

Credenciais utilizadas:

- Usuário: candidato
- Senha: subscribe

Motivações:

- Reprodutibilidade dos testes
- Estabilidade das execuções
- Facilidade na análise de falhas

------------------------------------------------------------

## Bibliotecas e Ferramentas Utilizadas

- .NET 8
- Reqnroll
- NUnit
- Selenium (estrutura preparada para automação)
- Git e GitHub para versionamento

------------------------------------------------------------

## Decisões Técnicas Relevantes

- Estrutura preparada para execução em múltiplos navegadores
- Planejamento para execução paralela dos testes
- Uso do padrão Page Object Model para organização dos elementos
- Separação clara entre definição de cenários e implementação técnica

------------------------------------------------------------

## Melhorias Futuras

Se houvesse mais tempo disponível, seriam implementadas as seguintes melhorias:

- Automação completa dos cenários com Selenium
- Execução utilizando Selenium Grid com Docker Compose
- Integração contínua para execução automática dos testes
- Estratégia automatizada de limpeza e preparação de dados
- Testes adicionais focados em validações visuais
- Monitoramento da estabilidade dos testes automatizados

------------------------------------------------------------

## Requisitos Não Implementados

Até o momento não foram implementados:

- Automação completa dos cenários
- Execução em Selenium Grid
- Scripts de performance com k6
- Geração automática de relatórios de execução

Esses itens fazem parte das etapas diferenciais do desafio.

------------------------------------------------------------

## Considerações Finais

O projeto foi estruturado com foco em organização, clareza e preparação para evolução futura em automação e testes de performance, mantendo aderência às boas práticas de qualidade de software e escrita de cenários orientados ao comportamento do usuário.
