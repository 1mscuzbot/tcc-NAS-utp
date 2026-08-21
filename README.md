# Análise da Viabilidade Técnica de um Servidor NAS Doméstico de Baixo Custo

**Trabalho de Conclusão de Curso** — Ciência da Computação  
Universidade Tuiuti do Paraná (UTP)

**Autores:** Davi Emannoel Lopes de Souza, Lucas Müller Scuzziato  
**Orientador:** Prof. Luiz Altamir Correa Junior

---

Pré-projeto que analisa a viabilidade técnica de um servidor NAS doméstico de baixo custo baseado em Radxa ROCK 4B+, OpenMediaVault, Nextcloud e Tailscale.

## Estrutura do Projeto

```
.
├── Makefile                              # Compilação e limpeza
├── trabalho.tex                          # Arquivo principal
├── assets/img/                           # Imagens e diagramas
│   ├── arquitetura.png
│   ├── fluxos.png
│   └── gargalos.png
├── conteudo/
│   ├── pre-textuais/                     # Resumo, listas, siglas, sumário
│   │   ├── resumo.tex
│   │   ├── listas.tex
│   │   ├── siglas.tex
│   │   └── sumario.tex
│   ├── textuais/                         # Capítulos
│   │   ├── 01-introducao.tex
│   │   ├── 02-fundamentacao.tex
│   │   └── 03-trabalhos-relacionados.tex
│   └── pos-textuais/                     # Referências
│       └── referencias.tex
├── packages/
│   └── abnt-UTP.sty                      # Estilo ABNT adaptado para a UTP
└── referencias/
    └── referencias.bib                   # Base BibTeX
```

## Compilação

```bash
make        # Gera trabalho.pdf
make clean  # Remove arquivos auxiliares
```

Sem `make` (ex.: Windows), rode na ordem:

```bat
pdflatex -interaction=nonstopmode trabalho.tex
bibtex trabalho
pdflatex -interaction=nonstopmode trabalho.tex
pdflatex -interaction=nonstopmode trabalho.tex
```

## Requisitos / Instalação do Ambiente

Pacotes LaTeX necessários: `abntex2` (classe + citações ABNT), `memoir`, `babel-portuges`,
`pgf`/`pgfplots` (diagramas TikZ), `psnfss` com fontes `times`/`helvetic`/`courier`,
`listings`, `algorithmicx`, `enumitem`, `textcase`, `xpatch`, `colortbl`, `multirow`,
`setspace`, `caption`, `subfig`, `geometry`, `tools` (tabularx, indentfirst), `cmap`,
`microtype`, `xcolor`, `etoolbox`.

### Linux — AlmaLinux 10 (testado)

**Opção A — TinyTeX, sem root (recomendada; é a que validamos nesta máquina):**

```bash
wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh
~/.TinyTeX/bin/x86_64-linux/tlmgr install \
  abntex2 memoir babel-portuges pgf pgfplots psnfss listings algorithmicx \
  colortbl multirow setspace etoolbox xcolor caption subfig geometry \
  textcase xpatch enumitem cmap microtype courier helvetic symbol
```

Reabra o terminal para o `pdflatex` entrar no `PATH` (`~/.local/bin`) e rode `make`.

**Opção B — pacotes do sistema (requer sudo):**

```bash
sudo dnf install texlive-scheme-basic texlive-memoir texlive-pgf texlive-pgfplots \
  texlive-psnfss texlive-times texlive-helvetic texlive-courier texlive-listings \
  texlive-enumitem texlive-xpatch texlive-textcase texlive-colortbl texlive-multirow \
  texlive-setspace texlive-caption texlive-subfig texlive-geometry texlive-tools \
  texlive-cmap texlive-microtype texlive-xcolor texlive-etoolbox
```

Atenção: os repositórios do EL10 **não têm** `texlive-abntex2`, `texlive-babel-portuges`
nem `texlive-algorithmicx`. Se precisar dessa rota, baixe os três do CTAN e extraia em
`~/texmf/tex/latex/` seguido de `texhash ~/texmf` — ou simplesmente use a Opção A.

### Windows

O projeto é baseado em TeX Live — no Windows dos autores usamos o TeX Live.

1. Instale o [TeX Live](https://tug.org/texlive/) (installer `install-tl-windows`;
   esquema *full* traz tudo; o esquema *medium* já cobre os pacotes listados acima).
2. Compile pelo terminal (PowerShell) com a sequência de 4 comandos da seção
   [Compilação](#compilação), ou instale o
   [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
   no VS Code. Para usar `make`, instale via [Chocolatey](https://chocolatey.org/): `choco install make`.
3. Alternativa mais leve: [MiKTeX](https://miktex.org/download) (Basic Installer) —
   na primeira compilação, deixe-o instalar os pacotes que faltam
   (marcar *"Always install missing packages on-the-fly"* nas configurações,
   ou aceitar os pop-ups: abntex2, babel-portuges, pgfplots etc.).
4. Outra opção sem instalar nada: compilar no [Overleaf](https://www.overleaf.com)
   (fazer upload do projeto; o compilador pdfLaTeX resolve os pacotes sozinho).

> Nota: o Makefile usava `bibtex.original` como padrão (específico da máquina de um dos
> autores); agora o padrão é `bibtex`. Se necessário, sobrescreva com `make BIBTEX=bibtex`.


## Rotina de Trabalho em Dupla

```bash
git pull origin main        # Atualizar
git add .                   # Preparar mudancas
git commit -m "mensagem"    # Salvar
git push origin main        # Enviar
```

## Recursos

- [Normas UTP - Manual de Trabalhos Academicos](https://tuiuti.edu.br/wp-content/uploads/2025/02/e-book_NT_UTP_2024-1.pdf)
- [ABNTex](https://www.abntex.net.br/)
- [Overleaf](https://www.overleaf.com)


