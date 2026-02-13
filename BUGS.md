# 🏠 Página Inicial — home.feature

Nenhum bug funcional identificado durante a exploração da funcionalidade.

Observações:
- Página carrega corretamente
- Seletor de nível de ensino visível
- Navegação inicial funcionando conforme esperado
- Opções de tema acessíveis
- Link de privacidade acessível





# Seleção de Curso — selecao_curso_graduacao_educacao.feature

Nenhum bug funcional identificado durante a exploração da funcionalidade.

Observações:
- Fluxo de seleção funcionando corretamente
- Validação ao avançar sem curso implementada
- Campo de busca disponível




 
- # Formulário — Formulario_inscricao.feature

BUG 001 — Campo CPF aceita texto excessivo sem validação

Severidade: Crítica

Descrição:
O campo CPF permite inserir texto extremamente longo contendo letras, números e caracteres especiais, sem bloqueio ou validação.

Passos para reproduzir:
1.Acessar o formulário de inscrição
2.Inserir texto extremamente longo no campo CPF ex: 111.111.111-11 + espaço + texto exagerado (111.111.111-11    abcdefghijklmnopqrstuvwxiz)
3.Avançar no fluxo

Resultado esperado:
-Campo deveria aceitar apenas CPF válido
-Limitar quantidade de caracteres
-Exibir mensagem de erro

Resultado obtido:
-Campo aceita texto ilimitado
-Nenhuma validação exibida
-Fluxo continua normalmente





BUG 002 — Campos Nome, Sobrenome e Nome Social aceitam texto excessivo sem validação

Severidade: Alta

Descrição:
Os campos Nome, Sobrenome e Nome Social permitem inserir textos extremamente longos contendo números e caracteres especiais sem validação.

Passos para reproduzir:
1.Acessar o formulário de inscrição
2.Inserir texto extremamente longo nos campos Nome, Sobrenome e Nome Social
3.Avançar no fluxo

Resultado esperado:
-Campos deveriam limitar quantidade de caracteres
-Aceitar apenas caracteres válidos para nomes
-Exibir mensagem de validação

Resultado obtido:
-Campos aceitam texto ilimitado
-Aceitam números e caracteres especiais
-Nenhuma validação exibida





BUG 003 — Campos textuais permitem texto excessivo e caracteres especiais sem validação

Severidade: Alta

Descrição:
Os campos Nome, Sobrenome, Nome Social, Qual deficiência, Endereço, Complemento, Bairro, Cidade, Estado e País permitem inserir textos extremamente longos contendo números e caracteres especiais sem validação de tamanho ou restrição de conteúdo.

Passos para reproduzir:
1.Acessar o formulário de inscrição
2.Inserir texto extremamente longo nos campos Nome, Sobrenome e Nome Social
3.Marcar opção possui deficiência
4.Inserir texto extremamente longo no campo Qual deficiência
5.Inserir texto extremamente longo nos campos de endereço
6.Inserir caracteres especiais nos campos textuais
7.Avançar no fluxo

Resultado esperado:
-Campos deveriam limitar quantidade de caracteres
-Validar tamanho máximo permitido
-Restringir caracteres especiais quando não aplicável
-Exibir mensagens de validação ao usuário

Resultado obtido:
-Campos aceitam texto ilimitado
-Aceitam números e caracteres especiais sem restrição
-Nenhuma validação exibida pelo sistema





BUG 004 — Campo Email aceita texto excessivo sem validação de tamanho

Severidade: Alta

Descrição:
O campo Email aceita endereços extremamente longos sem validação de limite de caracteres.

Passos para reproduzir:
1.Acessar o formulário de inscrição
2.Inserir email extremamente longo no campo Email
3.Avançar no fluxo

Resultado esperado:
-Campo deveria limitar quantidade de caracteres
-Validar tamanho máximo de email
-Exibir mensagem de erro

Resultado obtido:
-Campo aceita email extremamente longo
-Nenhuma validação exibida





BUG 005 — Campos Celular e Telefone aceitam letras

Severidade: Alta

Descrição:
Os campos Celular e Telefone permitem inserir letras, mesmo sendo campos destinados apenas a números.

Passos para reproduzir:
1.Acessar o formulário de inscrição
2.Inserir letras nos campos Celular e Telefone
3.Sair do campo ou avançar

Resultado esperado:
-Campos deveriam aceitar apenas números
-Exibir validação ao inserir letras

Resultado obtido:
-Campos aceitam letras normalmente
-Nenhuma validação exibida





BUG 006 — Campo CEP aceita letras

Severidade: Média

Descrição:
O campo CEP aceita letras mesmo devendo permitir apenas números, apesar de limitar corretamente a quantidade de caracteres.

Passos para reproduzir:
1.Acessar o formulário de inscrição
2.Inserir letras no campo CEP
3.Sair do campo

Resultado esperado:
-Campo deveria aceitar apenas números
-Exibir mensagem de validação

Resultado obtido:
-Campo aceita letras
-Nenhuma validação exibida





# Acessar Área do Candidato — acessar_area_candidato.feature

Nenhum bug funcional identificado durante a exploração da funcionalidade.

Observações:
-Fluxo de acesso funcionando corretamente.
-Validações de campos implementadas.
-Página carregando e navegando sem inconsistências.





# Formulário — Formulario_inscricao.feature

BUG 007 — Redefinição de senha ou usuário não envia email

Severidade: Crítica

Descrição:
Ao solicitar redefinição de senha ou recuperação de usuário na tela de autenticação do candidato, o sistema não envia o email de redefinição para o usuário.

Passos para reproduzir:
1.Acessar a tela de autenticação do candidato
2.Clicar em redefinir senha ou recuperar usuário
3.Informar email válido cadastrado
4.Solicitar redefinição

Resultado esperado:
-Email de redefinição deveria ser enviado ao usuário
-Usuário deveria conseguir prosseguir com a recuperação de acesso
-Exibir confirmação de envio do email

Resultado obtido:
-Nenhum email de redefinição é recebido
-Usuário não consegue recuperar acesso
-Sem evidência de envio do email




# Área do Candidato — area_candidato_dashboard.feature

BUG 008 — Aba Financeiro exibe conteúdo incorreto e não possui navegação de retorno

Severidade: Alta

Descrição:
Ao acessar a aba Financeiro dentro da área do candidato, a tela não apresenta conteúdo funcional ou mensagem amigável ao usuário. Em vez disso, é exibido apenas o texto técnico "content" e não existe botão de retorno ou navegação visível. O problema ocorre nos navegadores Chrome, Edge e Firefox.

Passos para reproduzir:
1.Acessar a área do candidato
2.Clicar na aba Financeiro
3.Observar o conteúdo exibido

Resultado esperado:
-Exibir conteúdo financeiro válido ou mensagem amigável como "não encontrado" ou equivalente
-Disponibilizar botão ou opção clara de retorno
-Apresentar interface consistente e funcional

Resultado obtido:
-Tela exibe apenas o texto "content"
-Nenhum botão de retorno disponível
-Ausência de mensagem amigável ao usuário
-Problema reproduzido em Chrome, Edge e Firefox




BUG 009 — Área do candidato não possui botão de logout

Severidade: Média

Descrição:
A área do candidato não apresenta opção visível de logout, impedindo que o usuário finalize a sessão de forma segura e controlada dentro da interface do sistema.

Passos para reproduzir:
1.Realizar login com usuário válido
2.Acessar a área do candidato
3.Procurar opção de logout ou sair da conta

Resultado esperado:
-Deveria existir botão ou opção de logout visível
-Usuário deveria conseguir encerrar a sessão manualmente
-Sistema deveria redirecionar para tela inicial ou login após logout

Resultado obtido:
-Não existe botão ou opção de logout disponível
-Usuário permanece autenticado sem opção de saída pela interface
-Encerramento da sessão só é possível fechando o navegador ou limpando sessão