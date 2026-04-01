# ERP TSM Web Core - Tela de Login (Saúde)

Este repositório contém um **exemplo inicial** de tela de login para um ERP da área de saúde usando **Delphi 13 Florence + TMS WEB Core** (template Bootstrap).

## Arquivos

- `src/LoginView.pas`: lógica da tela de login (clique no botão e Enter na senha, com validações básicas).
- `src/LoginView.html`: estrutura visual inspirada no layout de referência (painel esquerdo + área informativa à direita), sem imagem de fundo.
- `src/LoginView.css`: tema escuro/azul com identidade voltada para saúde.

## Próximos passos no seu projeto Delphi

1. Criar um projeto **TMS Web Bootstrap Application**.
2. Adicionar um novo formulário web e usar os arquivos de exemplo como base.
3. Registrar rota `/login` e definir essa tela como rota inicial.
4. Integrar o botão **Entrar** ao backend de autenticação (JWT/session).
