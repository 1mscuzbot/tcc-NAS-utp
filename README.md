# Análise da Viabilidade Técnica de um Servidor NAS Doméstico de Baixo Custo

**Trabalho de Conclusão de Curso** — Ciência da Computação  
Universidade Tuiuti do Paraná (UTP)

**Autores:** Davi Emannoel Lopes de Souza, Lucas Müller Scuzziato  
**Orientador:** Prof. Luiz Altamir Correa Junior

---

Este repositório contém o pré-projeto de TCC que propõe analisar a viabilidade técnica de um servidor NAS doméstico de baixo custo baseado em Radxa ROCK 4B+, OpenMediaVault, Nextcloud e Tailscale.

## Estrutura do Projeto

```
.
├── Makefile                              # Compilação e limpeza do projeto
├── README.md
├── trabalho.tex                          # Arquivo principal do documento
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
│   ├── textuais/                         # Capítulos do trabalho
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

## GitHub

Repositório: [github.com/1mscuzbot/tcc-NAS-utp](https://github.com/1mscuzbot/tcc-NAS-utp)
