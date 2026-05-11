## 🔄 Rotina de Trabalho em Dupla

Para manter o projeto organizado, siga este fluxo sempre que for trabalhar:

### 📥 1. Atualizar (pegar mudanças da dupla)
```bash
git pull origin main
```

### ✏️ 2. Trabalhar
Edite os arquivos no VS Code:
- Capítulos em `conteudo/textuais/`
- Referências em `referencias/referencias.bib`
- Imagens em `assets/img/`

### 🔍 3. Verificar o que mudou
```bash
git status
git diff
```

### 📦 4. Preparar as mudanças
```bash
git add .
```
Ou adicione apenas arquivos específicos:
```bash
git add conteudo/textuais/01-introducao.tex
```

### 💾 5. Salvar (commit)
```bash
git commit -m "📝 Mensagem descritiva do que mudou"
```

### 🚀 6. Enviar para o GitHub
```bash
git push origin main
```

---

## 📋 Resumo dos Comandos

| Comando | O que faz |
|---------|-----------|
| `git status` | Mostra arquivos modificados |
| `git log --oneline` | Histórico de commits |
| `git diff` | Mostra alterações linha por linha |
| `git pull origin main` | Baixa mudanças da dupla |
| `git push origin main` | Envia suas mudanças |
| `git stash` | Guarda temporariamente alterações |
| `git stash pop` | Recupera alterações guardadas |


# :pencil: Projeto LaTeX - Trabalho Acadêmico UTP

Bem-vindo ao repositório do **Trabalho Acadêmico UTP**! :mortar_board:

Este projeto foi desenvolvido em **LaTeX**, seguindo as normas da **Universidade Tuiuti do Paraná (UTP)** e utilizando
o estilo **ABNT** com base no pacote **ABNTex**. Ele foi reorganizado para oferecer uma estrutura mais profissional,
modular e fácil de manter, servindo como template para **artigos, monografias, TCCs, dissertações e outros trabalhos
acadêmicos**.

## :file_folder: Estrutura do Projeto

Aqui está uma visão geral dos arquivos e diretórios presentes no projeto:

```text
.
├── Makefile                         # Script para compilar e limpar o projeto
├── README.md                        # Guia de uso do projeto
├── trabalho.tex                     # Arquivo principal do documento
├── trabalho.pdf                     # Arquivo PDF gerado após compilação
├── assets/                          # Diretório com arquivos visuais do projeto
│   └── img/                         # Imagens utilizadas no documento
│       ├── fig1.png
│       ├── fig2.png
│       ├── exemplo.png
│       └── ...
├── conteudo/                        # Conteúdo acadêmico separado por natureza
│   ├── pre-textuais/                # Elementos pré-textuais
│   │   ├── resumo.tex
│   │   ├── abstract.tex
│   │   ├── listas.tex
│   │   └── ...
│   ├── textuais/                    # Capítulos e seções principais do trabalho
│   │   ├── introducao.tex
│   │   ├── desenvolvimento.tex
│   │   ├── conclusao.tex
│   │   └── ...
│   └── pos-textuais/                # Elementos pós-textuais
│       ├── referencias.tex
│       ├── apendices.tex
│       ├── anexos.tex
│       └── ...
├── packages/                        # Pacotes e estilos customizados
│   └── abnt-UTP.sty                 # Estilo ABNT adaptado para a UTP
└── referencias/                     # Arquivos bibliográficos
    └── referencias.bib              # Base BibTeX do trabalho
```

### :open_file_folder: Diretório `assets/img/`

Contém todas as imagens inseridas no documento, como **figuras, gráficos, diagramas e elementos visuais** utilizados ao
longo do trabalho. Exemplos:

- `fig1.png`, `fig2.png`: figuras ilustrativas;
- `exemplo.png`: imagens de exemplo usadas no modelo;
- outros arquivos gráficos necessários para a composição do documento.

### :open_file_folder: Diretório `conteudo/`

Esse diretório concentra o conteúdo do trabalho, dividido em três grupos principais:

- `pre-textuais/`: elementos anteriores ao texto principal, como resumo, abstract, listas e outros componentes
  introdutórios;
- `textuais/`: capítulos e seções que compõem o desenvolvimento do trabalho;
- `pos-textuais/`: elementos finais, como referências, apêndices e anexos.

Essa organização facilita a manutenção do projeto, a leitura do código e a reutilização do template em trabalhos futuros.

### :open_file_folder: Diretório `packages/`

Aqui está o arquivo de estilo `abnt-UTP.sty`, responsável por adaptar as normas da **ABNT** ao padrão institucional da
**UTP**, garantindo maior padronização na formatação do documento.

### :open_file_folder: Diretório `referencias/`

Contém o arquivo `referencias.bib`, utilizado para armazenar e organizar as referências bibliográficas no formato
**BibTeX**, permitindo citação e geração automática da bibliografia.

## :wrench: Como Usar

### Pré-requisitos

Para compilar este projeto, você precisará de um ambiente **LaTeX**. Algumas opções recomendadas:

- [Overleaf](https://www.overleaf.com) — recomendado para uso online;
- instalação local do LaTeX, utilizando o `Makefile` para compilar de forma prática.

### Compilação Local

Para compilar o projeto no seu computador, certifique-se de ter uma distribuição LaTeX instalada. Depois, basta rodar:

```bash
make
```

Isso irá gerar o arquivo PDF `trabalho.pdf`.

### Limpeza de Arquivos Temporários

Para remover os arquivos auxiliares gerados durante a compilação, utilize:

```bash
make clean
```

Para remover também os arquivos finais gerados, utilize:

```bash
make rclean
```

## :books: Recursos Úteis

Aqui estão alguns links que podem ajudar no desenvolvimento do seu trabalho:

- :open_book: [Normas UTP - Manual de Trabalhos Acadêmicos](https://tuiuti.edu.br/wp-content/uploads/2025/02/e-book_NT_UTP_2024-1.pdf)

- :blue_book: [ABNTex](https://www.abntex.net.br/) — pacote LaTeX para formatação de trabalhos segundo as normas ABNT.

- :green_book: [Uma não tão pequena introdução ao LATEX 2ε](https://linorg.usp.br/CTAN/info/lshort/portuguese/pt-lshort.pdf) —
  material introdutório e de referência para uso do LaTeX.

- :globe_with_meridians: [Overleaf](https://www.overleaf.com) — editor LaTeX online colaborativo.

## :hammer_and_wrench: Contribuindo

Sinta-se à vontade para sugerir melhorias, reorganizações ou ajustes no template. Caso encontre algum problema, abra uma
_issue_ ou proponha uma melhoria diretamente no projeto.

Este modelo foi pensado para ser uma base reutilizável, limpa e organizada para produção acadêmica em LaTeX.
