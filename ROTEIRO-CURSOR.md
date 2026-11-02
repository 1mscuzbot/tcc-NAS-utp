# Roteiro para o Cursor — correções da Prof.ª Angela, imagens, fluxos e modelos

> **Para o Cursor:** este roteiro substitui as pendências antigas do `HANDOFF-CURSOR.md`
> (que ainda fala em 23/31 páginas e 5 figuras). A entrega final é o **LaTeX deste repositório**.
> Leia este arquivo inteiro antes de editar. Não altere nada em `correcoes/`.
> Caminhos: WSL `/mnt/c/8p-CC/tcc-NAS-utp` = Windows `C:\8p-CC\tcc-NAS-utp`.

## 0. Fontes de verdade

1. `correcoes/PG1-Davi_Lucas-SERVIDOR_NAS_correção Angela.pdf` — anotações da professora (transcritas na Seção 2).
2. `correcoes/Avaliação PG1_DAVI e LUCAS.xlsx` — notas e justificativas (transcritas na Seção 3).
3. `correcoes/checklist-correcoes.md` — checklist derivado dos dois anteriores.
4. `correcoes/TCC_NAS_ROCK4B_VERSAO_FINAL.docx` — conteúdo final consolidado (9 figuras, 15 quadros).
5. `conteudo/**/*.tex` + `assets/img/` — implementação atual.

**Estado verificado em 02/11/2026:** o `.tex` já está alinhado ao DOCX ROCK4B, compila com
**53 páginas**, sem erros, sem citações/refs indefinidas; 9 figuras, 11 quadros e 4 tabelas.
Não reescrever o conteúdo: o foco é **fechar as pendências da Angela e planejar os elementos visuais**.

---

## 1. Regras de ouro (não quebrar)

- **Fonte LaTeX é a entrega.** O `.docx` é só referência de conteúdo.
- `\usepackage{float}` fica em `trabalho.tex` **depois** de `\usepackage{packages/abnt-UTP}`.
  Não mover: o `memoir` define `quadro` antes.
- Todo float usa `[H]` (`figure`, `table`, `quadro`) e deve ficar **na mesma página** do texto que o cita.
- Legenda em caixa alta: `\legenda[label]{TEXTO}`; fonte: `\fonteautoria` ou `\fonte{...}`.
- Figuras próprias: `\fig{width=0.8\linewidth}{nome-sem-extensao}` (`assets/img/` já está no `\graphicspath`).
- Não reintroduzir “3 SSDs”/“480 GB”; são **2 SSDs SATA de ~240 GB**.
- Não commitar/push sem pedido explícito. Não editar `correcoes/**` nem PDFs de referência.
- Compilar com:
  ```bash
  pdflatex -interaction=nonstopmode trabalho.tex
  bibtex trabalho
  pdflatex -interaction=nonstopmode trabalho.tex
  pdflatex -interaction=nonstopmode trabalho.tex
  grep -iE "^!|undefined|warning.*citation" trabalho.log
  ```
  (`make` não existe no WSL; o `Makefile` serve para máquinas com `make`.)

---

## 2. Transcrição integral das anotações da Prof.ª Angela (PDF, 27 páginas)

> Texto **literal** das caixas de comentário. “Destaque” indica o trecho marcado.
> As páginas são as do **PDF**, não as numeradas no trabalho.

| Pág. | Tipo | Destaque no texto | Comentário literal | O que exige |
|---|---|---|---|---|
| 6 | Comentário | — | “Sugestão: colocar, ao lado dos termos estrangeiros, a sua respectiva tradução.” | Lista de siglas com tradução PT-BR ao lado do termo estrangeiro. |
| 7 | Comentário | — | “Me perdoem, me passou na 1a entrega, mas será necessário corrigir: não há subtítulos na introdução. Escrever em forma de texto corrido.” | Introdução sem `\section`/`\subsection`; texto único. |
| 9 | Destaque + comentário | `IDC,` | “escrever o extenso da sigla na 1a vez que aparece” | Expandir IDC na 1ª ocorrência no corpo: *International Data Corporation* (IDC). |
| 9 | Destaque + comentário | `GRANCE, 2011` | “Atentar para a norma atualizada: Somente a inicial é maiúscula nos sobrenomes das fontes da citação.” | Citações no padrão NBR 10520:2023: `(Mell; Grance, 2011)`, não `(MELL; GRANCE, 2011)`. |
| 10 | Comentário | — | “A introdução deve ser um texto corrido, sem subtítulos. Por favor, remover os subtópicos que estão na introdução e converter em um texto único. Não esquecer o Sumário, que também deverá ser ajustado.” | Remover subtópicos e conferir o Sumário (gerado automaticamente, mas validar). |
| 10 | Marcações sem texto | “Isso posto, se levanta o seguinte problema de pesquisa…”; “Como hipótese, tem-se que um servidor…”; “O objetivo geral desta pesquisa é analisar…”; “Como objetivos específicos, tem-se:” | — | São os blocos que devem virar parágrafos corridos (sem títulos). |
| 11 | Comentário | Quadro de custos | “Precisa de uma nota explicativa ou uma fonte complementar nesse quadro. Como se trata de informação de mercado e produto, vocês devem indicar as fontes consultadas, data da consulta e, se possível, links ou referências dos fabricantes e lojas.” | Fonte do quadro de custos com lojas/fabricantes, data da consulta e links/referências. |
| 13 | Comentário | — | “Não vou mais escrever, mas é preciso arrumar em todas as próximas: Somente a inicial é maiúscula nos sobrenomes das fontes da citação.” | Corrigir **todas** as citações do trabalho (não só a primeira). |
| 13 | Destaques sem texto | `rede (STALLINGS,` / `carga (TANENBAUM` / `terceiros (MELL; GRANCE,` / `(MARINESCU,` / `boot (UPTON; HALFACREE,` | — | Exemplos das citações em caixa alta a corrigir. |
| 17 | Comentário | Fluxograma | “Precisa consertar esse fluxograma, use as formas geométricas adequadas. Precisa das terminações e precisa colocar os processos em retângulos com os cantos retos (cantos arredondados são usados para processo alternativo). O losango é uma decisão, precisa haver uma pergunta com ponto de interrogação e deve haver um SIM e um NÃO.” | Redesenhar o fluxograma: terminadores (início/fim), processos em retângulo de canto reto, losango só para decisão com pergunta “?” e setas SIM/NÃO. |
| 25 | Comentário | Corpo do texto | “O trabalho continua com o espaçamento entre linhas menor, precisa ser de 1,5 entre linhas.” | Entrelinha 1,5 (o projeto usa `\OnehalfSpacing` + `\setSpacing{1.453}`; conferir no PDF). |

Observações:
- As anotações `/Popup` sem texto são apenas respostas vazias do leitor de PDF; não há conteúdo adicional.
- **Não há, no PDF da Angela, pedido sobre “imagens das empresas/fabricantes”**. Esse item é decisão nossa (Seção 5) e não deve ser atribuído à professora.

---

## 3. Transcrição integral da planilha de avaliação PG1

`correcoes/Avaliação PG1_DAVI e LUCAS.xlsx` → aba `Planilha1` (média **8,8**).

| Item | Critério | Avaliação | Justificativa | Nota |
|---|---|---|---|---|
| 1 | Justificativa (1,0) | 1 | A justificativa é pertinente e bem relacionada ao tema. | 1 |
| 2 | Definição dos objetivos (1,0) | 1 | O problema, a hipótese, o objetivo geral e os objetivos específicos estão claros, coerentes e compatíveis com a proposta técnica. | 1 |
| 3 | Clareza e pertinência da revisão da literatura (2,0) | 0,8 | A fundamentação aborda NAS, nuvem, SBC, OMV, Nextcloud e Tailscale de forma coerente. Precisa apenas fortalecer a relação entre alguns conceitos e fontes mais específicas. | 1,6 |
| 4 | Trabalhos relacionados (2,0) | 1 | O capítulo apresenta comparação organizada e pertinente, especialmente pelo Quadro 4. | 2 |
| 5 | Clareza e pertinência da metodologia proposta (1,0) | 1 | A metodologia está bem detalhada, com infraestrutura, instalação, ferramentas, cenários e métricas de teste. É um dos pontos fortes do trabalho. | 1 |
| 6 | Bibliografia consultada (1,0) | 1 | A bibliografia é compatível com o texto, mas há problema pontual de citação da IDC e necessidade de conferir fontes de mercado e trabalhos relacionados. | 1 |
| 7 | Obediência às normas (2,0) | 0,6 | O trabalho apresenta boa organização, listas, quadros, figuras, sumário e referências. Deve revisar padronização das fontes de figuras/quadros, referências online e alguns detalhes de formatação. | 1,2 |

---

## 4. Mapa de conformidade (verificado no `.tex` atual)

| # | Ponto da Angela | Status | Evidência / ação |
|---|---|---|---|
| 1 | Entrelinha 1,5 | ✅ configurado | `trabalho.tex` tem `\OnehalfSpacing` e `\setSpacing{1.453}`. **Conferir visualmente** e não reduzir. |
| 2 | Introdução sem subtítulos | ✅ feito | `01-introducao.tex` não tem `\section`/`\subsection`; conferir Sumário no PDF. |
| 3 | Siglas com tradução | ✅ feito | `siglas.tex` traz tradução em PT-BR em todas as entradas. |
| 4 | Extenso na 1ª aparição | ✅ feito (IDC e SSD) | `01-introducao.tex:6` expande IDC; `:10` expande SSD/NAS/OMV/SMB. Revisar demais siglas na 1ª ocorrência. |
| 5 | Sobrenomes só com inicial maiúscula | ✅ feito | `abntex2-alf.bst` local (NBR 10520:2023); PDF mostra `(Mell; Grance, 2011)`. Zero ocorrências em caixa alta. |
| 6 | Fonte do quadro de custos | ✅ feito | `01-introducao.tex:70` tem `\fonte{...}` com data 07/09/2026 e `\cite{kabum2026synology,kabum2026qnap}`. Conferir se os links aparecem nas referências. |
| 7 | Fluxograma com formas corretas | ⚠️ verificar | `assets/img/fluxograma-avaliacao.png` (atualizado 02/11 17:59) é imagem; **abrir e conferir** os 4 requisitos da Angela. Se falhar, redesenhar. |
| 8 | Fonte correta do dado da IDC | ✅ feito | `\cite{reinsel2018}` (Data Age 2025). |
| 9 | Conceitos ↔ fontes específicas | ✅ feito | Fundamentação com `stallings2018`, `tanenbaum2021`, `mell2011`, `marinescu2018`, `johnston2018`, `gamess2022` etc. |
| 10 | Padronizar fontes de figuras/quadros | ⚠️ parcial | Figuras próprias com `\fonteautoria`; quadros com dados de mercado com `\fonte{...}`. Ao inserir imagens externas, usar `\fonte{Fabricante (ano)}`. |
| 11 | Referências online / `.bib` | ✅ feito (conferir links) | Entradas reais, `[S. l.]` nas institucionais. Conferir URLs e datas de acesso (ver Seção 7). |

---

## 5. Imagens de empresas/fabricantes + fluxos + modelos

> Contexto: não há pedido da Angela sobre isso. É melhoria nossa para dar evidência visual e
> sustentar a comparação com NAS comerciais. **Toda imagem externa precisa de fonte e uso acadêmico.**

### 5.1 Inventário atual (9 figuras)

| Label | Arquivo | Onde |
|---|---|---|
| `fig:arquitetura` | `arquitetura-final.png` | 1 Introdução |
| `fig:resultados-custo` | `resultados-custo.png` | 1 Introdução |
| `fig:fluxos` | `fluxos.png` | 1 Introdução |
| `fig:gargalos` | `gargalos.png` | 2 Fundamentação |
| `fig:fluxograma` | `fluxograma-avaliacao.png` | 2 Fundamentação |
| `fig:resultados-rede` | `resultados-rede.png` | 5 Resultados |
| `fig:resultados-smb` | `resultados-smb.png` | 5 Resultados |
| `fig:resultados-nextcloud` | `resultados-nextcloud.png` | 5 Resultados |
| `fig:smb-referencia` | `resultados-smb-referencia.png` | 5 Resultados |

Sobra `assets/img/arquitetura.png` (585×329, antiga) — não usada no `.tex`. Não apagar sem confirmar.

### 5.2 Imagens de fabricantes/empresas (decisão a confirmar com os autores)

Objetivo: ilustrar a comparação de custo com os modelos reais, sem parecer endosso comercial.

- **Opção A — foto dos três equipamentos lado a lado** (recomendada):
  - `(a)` Radxa ROCK 4B+; `(b)` Synology DS223j; `(c)` QNAP TS-233.
  - Fonte: páginas oficiais/press kit dos fabricantes. Legenda:
    `EQUIPAMENTOS COMPARADOS: (A) RADXA ROCK 4B+; (B) SYNOLOGY DS223J; (C) QNAP TS-233`
    e `\fonte{Radxa; Synology; QNAP (2026). Fotos dos fabricantes, reproduzidas para fins acadêmicos.}`
  - Inserir em `01-introducao.tex`, próximo ao `quad:custo-intro`/`fig:resultados-custo`, citada no texto antes.
  - Escala apenas ilustrativa; não afirmar dimensões.
- **Opção B — foto do protótipo real** (também recomendada):
  - Placa + 2 adaptadores USB-SATA + SSDs + cooler + cabo de rede. `\fonteautoria`.
  - Inserir em `04-metodologia.tex` (4.1 Montagem) ou apêndice.
- **Opção C — sem fotos externas:** diagrama vetorial/TikZ comparando “NAS comercial de 2 baias” × “SBC + 2 adaptadores USB-SATA”, com chamadas de custo. Evita copyright e fica no padrão visual do trabalho.
- **Regras:** não usar logotipos isolados como decoração; não recortar/alterar fotos; não sugerir que os fabricantes endossam o trabalho; manter resolução ≤300 dpi e arquivos `.png`/`.jpg` otimizados.

### 5.3 Fluxos que ainda podem ser incluídos

1. **Fluxo de backup/restauração** (`assets/img/fluxo-backup.png`):
   `timer systemd (10 dias)` → coleta (`OMV`, `fstab`, Compose, Nextcloud, dump MariaDB, inventário) →
   `tar` → `SHA-256` → cópia nos **2 SSDs** → retenção de **6** → teste de restauração.
   Colocar em 5.6 (Estabilidade/recuperação) ou em 4.3.
2. **Fluxo de implantação Docker** (`assets/img/fluxo-docker.png`):
   `microSD (OS)` → `OMV` → `Docker/Compose` → `Nextcloud + MariaDB + Redis` → volumes no SSD 2;
   indicar portas (8081) e bind mounts.
3. **Topologia de rede** (`assets/img/topologia-rede.png`):
   cliente Wi-Fi / cliente Ethernet / celular em rede móvel → `Tailscale` (host, `netfilter-mode=off`) →
   `OMV`, `SMB`, `Nextcloud`; mostrar que **não há port forwarding**.
4. **Fluxo de acesso** (`fluxos.png`) já existe; só revisar se ainda representa a configuração final.

### 5.4 “Modelos” (diagramas/modelos visuais)

- **Modelo de implantação** (físico/lógico): microSD = SO; SSD 1 = dados SMB; SSD 2 = Nextcloud/MariaDB/Redis;
  USB 3.0 negociando 5 Gb/s; Ethernet 1 GbE. Pode substituir/complementar `quad:arquitetura-final`.
- **Modelo de medição**: `gargalos.png` já cobre; conferir se inclui cliente, Wi-Fi, Tailscale e USB.
- **Modelo de dados do backup**: quais arquivos entram no pacote e onde ficam as 6 versões.
- Se “modelo” significar o **template UTP**, ele é `packages/abnt-UTP.sty`: não alterar.

### 5.5 Onde inserir e como validar

- Cada figura nova precisa ser **citada no texto antes** (`A Figura~\ref{...} apresenta...`).
- Usar `[H]`, `\legenda` em caixa alta e `\fonte`/`\fonteautoria`.
- Atualizar a lista de figuras automaticamente (`\listadefiguras` em `listas.tex`) — não editar à mão.
- Se a figura for externa, adicionar a referência no `.bib` (ou `\fonte{...}` com URL e data) e conferir a lista de referências.

---

## 6. Backlog priorizado para o Cursor

### P0 — fechar a Angela (obrigatório)
1. **Conferir entrelinha 1,5** no PDF (distância entre linhas do corpo). Não reduzir.
2. **Conferir fluxograma** `fluxograma-avaliacao.png` contra os 4 requisitos (terminadores, retângulos retos, losango só decisão com “?” e SIM/NÃO, setas). Redesenhar se necessário.
3. **Revisar 1ª aparição de siglas** no corpo (IDC, SSD, NAS, OMV, SMB, SBC, VPN, TCP, USB, HTTP/HTTPS, WebDAV, SSH). Expandir onde faltar.
4. **Conferir citações** no PDF: nenhuma com sobrenome em caixa alta; `\citeonline` coerente.
5. **Conferir fonte do quadro de custos**: data 07/09/2026, lojas e links presentes; se possível, citar também as páginas dos fabricantes.
6. **Conferir Sumário** após a introdução corrida (sem entradas de subtópicos).

### P1 — qualidade e padronização
7. **Completar o quadro de custo** com a linha `Total & 625,48 & —` (o DOCX tem; o `.tex` não).
8. **Corrigir a fonte do `quad:preliminares`**: inclui dados de nov/2026, mas está “(out/2025 e mar/2026)”. Trocar para “(out/2025, mar/2026 e nov/2026)”.
9. **Restaurar a observação completa** do `tailscale ping` (nov/2026): “NAS em Ethernet (interface Wi-Fi do NAS também ativa, com rota de menor prioridade); PC em Wi-Fi 802.11ac, enlace de 433 Mbps”.
10. **Revisar fontes de todas as figuras/quadros**: própria × externa; padronizar `\fonteautoria` e `\fonte{...}`.
11. **Conferir links e datas** das referências de mercado/segurança (Seção 7).

### P2 — valor agregado (imagens/fluxos/modelos)
12. Inserir a **figura dos três equipamentos** (Opção A) ou o diagrama TikZ (Opção C) na introdução.
13. Inserir **foto do protótipo** (Opção B) na metodologia/apêndice.
14. Criar **fluxo de backup** e **topologia de rede** (Seção 5.3), com `[H]` e fonte.
15. Opcional: prints de OMV/Nextcloud/Tailscale/`docker ps`/`sensors` em apêndice, com dados sensíveis mascarados.
16. Revisar legendas longas que quebram na Lista de Figuras.

---

## 7. Pendências e riscos já identificados

- **Verificação externa** (não inventar; se o link não existir, remover a afirmação):
  - Preços KaBuM DS223j (R$ 2.355,05) e TS-233 (R$ 2.331,20), consulta 07/09/2026.
  - Incidente Google Drive (18–19/08/2026) e Google Cloud Storage (08–09/10/2026).
  - Dropbox (~5.000 contas, set/2026), Dropbox Sign (2024), Google DriveFS (2025), Storm-2949 (2026), phishing de passkey (2026).
  - Benchmarks DS223j (115/115 MB/s), TS-233 (114/103 e 113/112 MB/s), `sbc.compare` (4,3 W / 10,5 W).
- **Overfull** de até 9,3 pt no parágrafo longo de segurança (`06-discussao.tex:66`) e aviso de `babel` com `brazil` depreciado — cosméticos, corrigir se sobrar tempo.
- **DOCX × LaTeX:** o DOCX chama de “Quadro 10–13” o que no LaTeX virou **Tabela** (`tab:iperf3`, `tab:smb`, `tab:nextcloud`, `tab:custo`). Manter Tabela é adequado para dados numéricos; se a banca exigir “Quadro”, trocar o ambiente.
- **Fonte do `quad:preliminares`** e **Total do custo** são as duas divergências reais em relação ao DOCX (itens 7 e 8 do backlog).

---

## 8. QA final (rodar antes de entregar)

```bash
pdflatex -interaction=nonstopmode trabalho.tex
bibtex trabalho
pdflatex -interaction=nonstopmode trabalho.tex
pdflatex -interaction=nonstopmode trabalho.tex
grep -iE "^!|undefined|warning.*citation" trabalho.log
pdfinfo trabalho.pdf | grep Pages
```

- Conferir no `.aux` que cada float está na página esperada:
  ```bash
  grep -aoE '\\newlabel\{(fig|tab|quad):[^}]*\}\{\{[^}]*\}\{[0-9]+\}' trabalho.aux
  ```
- Conferir citações em caixa alta:
  ```bash
  pdftotext trabalho.pdf - | grep -aE '\((MELL|STALLINGS|TANENBAUM|MARINESCU|UPTON)'
  ```
  (deve retornar vazio)
- Conferir que não há figura sem citação e que toda imagem externa tem `\fonte`.

## 9. Checklist de aceite

- [ ] Entrelinha 1,5 confirmada no PDF.
- [ ] Introdução 100% corrida; Sumário sem subtópicos dela.
- [ ] Siglas traduzidas e expandidas na 1ª aparição.
- [ ] Nenhuma citação com sobrenome em caixa alta.
- [ ] Quadro de custos com fonte, data, lojas/links e linha de total.
- [ ] Fluxograma com formas e setas conforme a Angela.
- [ ] Fontes de figuras/quadros padronizadas; imagens externas com crédito.
- [ ] Figuras/fluxos novos citados no texto e na mesma página.
- [ ] Compilação sem erros nem citações/refs indefinidas.
- [ ] `correcoes/**` intocado; nada commitado sem pedido.
