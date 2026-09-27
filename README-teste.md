# Creator Toolkit

[![License](https://img.shields.io/github/license/eddiecsilva/plasma-productivity-menus)](LICENSE)
![Linux](https://img.shields.io/badge/platform-Linux-FCC624?logo=linux&logoColor=black)
![KDE Plasma](https://img.shields.io/badge/KDE%20Plasma-4285F4?logo=kde&logoColor=white)
![Shell Script](https://img.shields.io/badge/shell-Bash-4EAA25?logo=gnu-bash&logoColor=white)
![FFmpeg](https://img.shields.io/badge/FFmpeg-007808?logo=ffmpeg&logoColor=white)
![CUDA](https://img.shields.io/badge/CUDA-NVIDIA%20NVENC-76B900?logo=nvidia&logoColor=white)

Ações personalizadas para o menu de contexto do KDE Dolphin, criadas para agilizar tarefas de produção audiovisual, conversão de arquivos e criação de estruturas de projetos no Linux.

O projeto combina scripts Shell com arquivos `.desktop` para disponibilizar funções diretamente no menu de contexto do gerenciador de arquivos.

> O nome de cada função representa um recurso completo. Em geral, o par formado por um arquivo `.sh` e um arquivo `.desktop` deve ser mantido junto: o script executa a tarefa e o arquivo `.desktop` integra essa tarefa ao Dolphin.

## Visão geral

O Creator Toolkit reúne utilitários para tarefas recorrentes, como:

- conversão e processamento de áudio;
- codificação de vídeo em H.265 usando NVIDIA NVENC;
- geração de proxies para edição;
- extração de áudio de vídeos;
- exportação de quadros;
- conversão de imagens;
- criação de estruturas iniciais de projetos;
- processamento paralelo de arquivos.

Os scripts preservam os arquivos originais. Entretanto, arquivos de saída que já existam podem ser sobrescritos quando uma função for executada novamente.

Faça testes com cópias dos arquivos antes de realizar processamentos em lote.

## Recursos disponíveis

### Áudio

| Função | Arquivos | Utilidade |
| --- | --- | --- |
| Converter áudio multicanal para estéreo | `convert-multichannel-to-stereo.sh`<br>`convert-multichannel-to-stereo.desktop` | Converte arquivos de áudio multicanal para estéreo. |
| Codificar áudio para ALAC | `encode-audio-alac.sh`<br>`encode-audio-alac.desktop` | Converte arquivos de áudio para Apple Lossless Audio Codec. |
| Codificar áudio para ALAC em paralelo | `encode-audio-alac-parallel.sh`<br>`encode-audio-alac-parallel.desktop` | Processa vários arquivos de áudio simultaneamente. |
| Extrair áudio em MP3 | `extract-audio-mp3.sh`<br>`extract-audio-mp3.desktop` | Extrai o áudio de arquivos de vídeo e gera arquivos MP3. |
| Extrair áudio em PCM | `extract-audio-pcm.sh`<br>`extract-audio-pcm.desktop` | Extrai áudio sem compressão em formato PCM. |
| Remover faixas de áudio | `remove-audio-tracks.sh`<br>`remove-audio-tracks.desktop` | Remove faixas de áudio de arquivos de vídeo. |

### Vídeo

| Função | Arquivos | Utilidade |
| --- | --- | --- |
| Codificar vídeo para H.265 com CUDA | `encode-video-h265.sh`<br>`encode-video-h265.desktop` | Recodifica vídeos usando `hevc_nvenc`, o encoder H.265 da NVIDIA. |
| Codificar vídeo para H.265 em paralelo | `encode-video-h265-parallel.sh`<br>`encode-video-h265-parallel.desktop` | Processa vários vídeos simultaneamente usando codificação H.265 acelerada por GPU, quando configurada no script e no sistema. |
| Gerar proxy de vídeo | `generate-video-proxy-parallel.sh`<br>`generate-video-proxy.desktop` | Gera arquivos proxy para facilitar a edição de vídeos pesados. |
| Exportar quadros de foco | `export-focus-frames.sh`<br>`export-focus-frames.desktop` | Exporta quadros selecionados a partir de arquivos de vídeo. |

### Imagens

| Função | Arquivos | Utilidade |
| --- | --- | --- |
| Converter PNG para JPEG otimizado | `convert-png-to-jpeg-optimized.sh`<br>`convert-png-to-jpeg-optimized.desktop` | Converte imagens PNG para JPEG com foco na redução do tamanho do arquivo. |

### Projetos

| Função | Arquivos | Utilidade |
| --- | --- | --- |
| Criar estrutura de projeto | `create-project-structure.sh`<br>`create-project-structure.desktop` | Cria uma estrutura inicial de diretórios para novos projetos. |

## Requisitos

Para usar os menus, é necessário ter:

- Linux;
- KDE Plasma;
- KDE Dolphin;
- Bash;
- FFmpeg e FFprobe;
- GNU Parallel para as funções paralelas;
- utilitários padrão do ambiente GNU/Linux.

Para usar a codificação H.265 com CUDA/NVENC, também são necessários:

- uma GPU NVIDIA compatível com NVENC;
- drivers NVIDIA instalados e funcionando;
- FFmpeg compilado com suporte a `hevc_nvenc`;
- `nvidia-smi` funcionando corretamente.

Em distribuições baseadas em Debian ou Ubuntu, alguns requisitos podem ser instalados com:

```bash
sudo apt install ffmpeg parallel
```

Consulte o gerenciador de pacotes da sua distribuição para instalar os equivalentes em outros sistemas.

Confirme o suporte do FFmpeg ao encoder NVIDIA com:

```bash
ffmpeg -hide_banner -encoders | grep -E 'hevc_nvenc|h264_nvenc'
```

O resultado deve conter uma entrada semelhante a:

```text
V..... hevc_nvenc           NVIDIA NVENC hevc encoder
```

## Instalação

Clone o repositório:

```bash
git clone https://github.com/eddiecsilva/plasma-productivity-menus.git
cd plasma-productivity-menus
```

Dê permissão de execução aos scripts:

```bash
chmod +x *.sh
```

Instale os arquivos `.desktop` no diretório de menus de serviço do KDE:

```bash
mkdir -p ~/.local/share/kio/servicemenus
cp *.desktop ~/.local/share/kio/servicemenus/
```

Os arquivos `.sh` também precisam estar no caminho esperado pelos arquivos `.desktop`. Se os arquivos `.desktop` utilizarem caminhos absolutos, ajuste esses caminhos de acordo com o local em que o repositório foi instalado.

Depois da instalação, reinicie o Dolphin. Se os novos itens não aparecerem, encerre e inicie novamente a sessão do KDE Plasma.

> O diretório utilizado pelos menus de serviço pode variar conforme a versão do KDE Plasma e a distribuição. Se os itens não aparecerem no Dolphin, verifique também os diretórios de serviços do KDE utilizados pelo seu sistema.

## Como usar

1. Abra o Dolphin.
2. Selecione um ou mais arquivos.
3. Clique com o botão direito sobre a seleção.
4. Localize a ação correspondente no menu de contexto.
5. Execute a função desejada.

Os scripts preservam os arquivos originais, mas podem sobrescrever arquivos gerados anteriormente quando o nome de saída for o mesmo. Antes de repetir uma conversão ou executar um processamento em lote, confira os arquivos de destino.

As funções com `parallel` no nome podem iniciar vários processos simultaneamente. O processamento paralelo pode aumentar o consumo de CPU, memória, armazenamento temporário e, no caso de codificação NVENC, a utilização da GPU.

## Solução de problemas

### A ação não aparece no Dolphin

Verifique:

- se os arquivos `.desktop` foram copiados para o diretório correto;
- se os scripts `.sh` estão no caminho esperado pelos arquivos `.desktop`;
- se o Dolphin foi reiniciado;
- se os arquivos `.desktop` possuem permissão de leitura;
- se a sessão do KDE foi reiniciada após a instalação.

### O script não é executado

Confira se o script possui permissão de execução:

```bash
chmod +x nome-do-script.sh
```

Também verifique se as dependências estão instaladas:

```bash
command -v ffmpeg
command -v ffprobe
command -v parallel
```

### A janela do Konsole fecha rapidamente

Durante os testes, adicione `--keep` à linha `Exec` do arquivo `.desktop`. Isso mantém a janela do Konsole aberta depois da execução e facilita a visualização de mensagens do FFmpeg, erros e informações de debug.

Exemplo:

```ini
Exec=konsole --keep -e ~/.local/share/kio/servicemenus/encode-audio-alac-parallel.sh %F
```

Depois da depuração, a opção pode ser removida para voltar ao comportamento normal.

### A codificação H.265 não usa a GPU

Confirme se:

- a GPU NVIDIA é compatível com NVENC;
- os drivers estão instalados;
- `nvidia-smi` reconhece a GPU;
- o FFmpeg lista o encoder `hevc_nvenc`;
- o script contém `-c:v hevc_nvenc`;
- o arquivo `.desktop` chama o script correto.

Durante um teste, acompanhe o uso da GPU com:

```bash
watch -n 1 nvidia-smi
```

A opção `-hwaccel cuda` auxilia na decodificação acelerada, enquanto `-c:v hevc_nvenc` seleciona o encoder H.265 da NVIDIA. A presença de CUDA no sistema, por si só, não garante que o FFmpeg esteja usando a GPU.

### O processamento falha

Execute o script diretamente pelo terminal para visualizar as mensagens de erro:

```bash
./nome-do-script.sh arquivo-de-teste
```

Use arquivos de teste antes de aplicar a função em grandes quantidades de material.

## Estrutura do repositório

```text
.
├── CHANGELOG.md
├── DOCS/
├── LICENSE
├── README.md
├── img/
├── *.desktop
└── *.sh
```

### Tipos de arquivo

| Tipo | Finalidade |
| --- | --- |
| `.sh` | Implementa a lógica da função. |
| `.desktop` | Adiciona a função ao menu de contexto do KDE Dolphin. |
| `CHANGELOG.md` | Registra as alterações realizadas no projeto. |
| `DOCS/` | Armazena documentação complementar. |
| `img/` | Contém imagens utilizadas na documentação. |
| `LICENSE` | Define os termos de distribuição e uso do projeto. |

## Processamento paralelo

As funções com `parallel` no nome podem processar mais de um arquivo ao mesmo tempo. Isso pode reduzir o tempo total de execução, mas também aumenta o consumo de CPU, memória, armazenamento e recursos da GPU.

No caso dos scripts de vídeo com NVENC, executar muitos processos simultaneamente pode saturar o encoder da GPU, aumentar o uso de VRAM e reduzir o desempenho total. Ajuste a quantidade de processos de acordo com o hardware disponível.

## Contribuição

Sugestões, correções e melhorias são bem-vindas.

Para contribuir:

1. faça um fork do projeto;
2. crie uma branch para sua alteração;
3. faça as modificações;
4. teste a função no KDE Dolphin;
5. abra um pull request descrevendo o que foi alterado.

Ao adicionar uma nova função, inclua:

- o script `.sh`;
- o arquivo `.desktop` correspondente;
- uma descrição no README;
- uma entrada no `CHANGELOG.md`;
- instruções adicionais em `DOCS/`, quando necessário.

## Licença

Consulte o arquivo [`LICENSE`](LICENSE) para conhecer os termos de uso, modificação e distribuição do projeto.
