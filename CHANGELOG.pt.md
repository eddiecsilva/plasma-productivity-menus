# Changelog

Todas as alterações notáveis para este projeto serão documentadas neste arquivo.

O formato segue o [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), e este projeto adere ao [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

> **Aviso:** As traduções são automáticas e podem conter erros.

## [v1.1.0] - 2026-07-22

### Alterado
- Renomeados todos os arquivos `.desktop` para usar a convenção de nomeação kebab-case para consistência.
- Atualizados todos os arquivos `.desktop` para incluir comentários em inglês antes dos comentários em português para clareza.
- Padronizados os nomes dos scripts para kebab-case para consistência e melhor leitura.
- Atualizados todos os arquivos `.desktop` para usar `Name[<idioma>]` para nomes de menu multilíngues, garantindo a exibição correta em ambientes brasileiros de português.

### Corrigido
- Corrigidas as traduções nos arquivos `.desktop` para garantir mensagens precisas em português brasileiro.
- Corrigidos os entries incorretos `Name[pt]` nos arquivos `.desktop` para usar `Name[pt_BR]`.

## [v1.0.0] - 2026-07-22

### Adicionado
- Lançamento inicial com funcionalidades principais para edição de vídeo e gerenciamento de projetos.
- Adicionados `README.md` e `README.pt.md` para documentação bilingual.
- Adicionados `convert-multichannel-to-stereo.desktop`, `remove-audio-tracks.desktop`, `generate-video-proxy.desktop`, `extract-audio-pcm.desktop`, `create-project-structure.desktop` e `export-focus-frames.desktop` para tarefas de processamento de mídia.

### Alterado
- Atualizados todos os arquivos `.desktop` para usar `Name[<idioma>]` para nomes de menu multilíngues.
- Padronizados todos os scripts `.sh` para usar `konsole` para execução consistente.

### Corrigido
- Resolvidos problemas com caminhos de arquivo incorretos e dependências ausentes.

## [v0.1.0] - 2026-07-20

### Adicionado
- Configuração inicial do projeto com scripts `.desktop` e `.sh` básicos.
- Adicionado `README.md` com descrição inicial do projeto.

### Alterado
- Refatorado a estrutura do projeto para melhorar organização e legibilidade.

### Corrigido
- Resolvidos problemas com caminhos `Exec` incorretos nos arquivos `.desktop`.

## [v0.0.1] - 2026-07-19

### Adicionado
- Commit inicial com estrutura do projeto e scripts básicos.

### Alterado
- Configuração inicial do repositório com `.gitignore` e `LICENSE`.

### Corrigido
- Resolvidos problemas iniciais com configuração do projeto.

