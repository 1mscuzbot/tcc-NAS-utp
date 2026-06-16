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


