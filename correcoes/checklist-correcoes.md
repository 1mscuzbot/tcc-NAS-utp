# Checklist de Correções — PG1 (Prof.ª Angela)

Fontes: `PG1-Davi_Lucas-SERVIDOR_NAS_correção Angela.pdf` (comentários inline) e
`Avaliação PG1_DAVI e LUCAS.xlsx` (notas e justificativas).

Legenda de status:
- ✅ **OK** — já atendido no código-fonte atual
- ❌ **Pendente** — problema ainda presente nos `.tex`
- ⚠️ **Verificar** — provavelmente resolvido, mas precisa conferir na compilação

---

## 1. Espaçamento entre linhas deve ser 1,5 — ⚠️ Verificar (recompilado com TinyTeX/TeX Live 2026; `\OnehalfSpacing` ativo)

> "O trabalho continua com o espaçamento entre linhas menor, precisa ser de 1,5 entre linhas." (PDF, pág. 24)

- `trabalho.tex:42` já tem `\OnehalfSpacing` logo após `\begin{document}` (adicionado em 15/06/2026, commit `cbc2630`).
- Se o PDF corrigido foi compilado **antes** desse commit, o problema já está resolvido.
- **Ação:** recompilar (`make`) e conferir visualmente o corpo do texto.

## 2. Introdução em texto corrido, sem subtítulos — ✅ CORRIGIDO

> "A introdução não deve ter subtítulos, escrever em texto corrido. Me perdoem, me passou na 1ª entrega. Remover os subtópicos e ajustar o Sumário."

- `conteudo/textuais/01-introducao.tex` ainda contém as seções:
  - `:56` PROBLEMA DE PESQUISA
  - `:60` HIPÓTESE
  - `:64` OBJETIVO GERAL
  - `:68` OBJETIVOS ESPECÍFICOS
  - `:82` JUSTIFICATIVA
- **Ação:** remover os comandos `\section` (manter o conteúdo como parágrafos corridos). O Sumário é gerado automaticamente e se ajusta sozinho.

## 3. Lista de siglas sem tradução — ✅ CORRIGIDO (+ entrada IDC)

> "Sugestão: colocar, ao lado dos termos estrangeiros, a sua respectiva tradução."

- `conteudo/pre-textuais/siglas.tex` traz apenas o extenso em inglês (ARM, CIFS, FTP, NAS, NFS, OMV, SATA, SBC, SMB, SSD, USB, VPN).
- **Ação:** acrescentar a tradução em português após o extenso.
  Ex.: `\item[NAS] \textit{Network Attached Storage} (armazenamento conectado à rede)`.

## 4. Extenso da sigla na 1ª aparição — ✅ CORRIGIDO (IDC e SSD expandidos)

> "Escrever o extenso da sigla na 1ª vez que aparece." (anotação junto ao parágrafo da IDC)

- **IDC**: nunca expandida em lugar nenhum do trabalho (`International Data Corporation`). Primeira ocorrência: `01-introducao.tex:8`.
- **SSD/SSDs**: usada na introdução (`01-introducao.tex:12`) antes de qualquer extenso no corpo (só aparece expandida no Resumo).
- **Ação:** expandir IDC e SSD na primeira ocorrência no corpo; revisar as demais siglas (OMV, VPN, USB-SATA etc.) quanto à 1ª aparição.

## 5. Citações: somente inicial maiúscula nos sobrenomes — ✅ CORRIGIDO (bst local `abntex2-alf.bst` com NBR 10520:2023; PDF agora mostra "(Mell; Grance, 2011)")

> "Norma atualizada: somente inicial maiúscula nos sobrenomes das fontes da citação (MELL; GRANCE → Mell; Grance)." + "Arrumar em todas as próximas" (pág. 12)

- O PDF renderiza `(MELL; GRANCE, 2011)`, `(STALLINGS, 2018)` etc. — o pacote `abntex2cite` segue a NBR 10520:2002 (caixa alta).
- A norma atualizada (NBR 10520:2023) pede `(Mell; Grance, 2011)`.
- **Ação:** ajustar o estilo de citação — patch sobre o `abntex2cite` ou migração para `biblatex-abnt`. Afeta todas as citações do documento.

## 6. Quadro 1 (custos) nota explicativa/fonte complementar — ✅ CORRIGIDO (**confirmar com os autores**: data "maio de 2026" e lojas citadas na nota)

> "O quadro precisa de uma nota explicativa ou fonte complementar. Indicar as fontes consultadas para os preços de mercado, data da consulta e links/referências dos fabricantes e lojas."

- O quadro de custos (`02-fundamentacao.tex:50–74`) usa apenas `\fonteautoria`.
- **Ação:** trocar por nota com fontes reais (ex.: lojas/fabricantes consultados, data de acesso, valores aproximados).

## 7. Figura 5 (fluxograma): formas geométricas adequadas — ✅ CORRIGIDO (retângulos retos, losango só na decisão com SIM/NÃO, terminadores Início/Fim, retorno NÃO para configuração)

> "Consertar as formas geométricas do fluxograma: processos em retângulos com cantos retos (cantos arredondados = processo alternativo), terminações (setas), losango = decisão com pergunta e SIM/NÃO."

- `02-fundamentacao.tex:112–138`: blocos usam `rounded corners`; "Testes locais e remotos" está num losango mas é um processo; a decisão final ("Viável ou não?") não tem ramificações SIM/NÃO nas setas; faltam terminadores (início/fim).
- **Ação:** retângulos retos para processos, losango só para decisões com setas rotuladas SIM/NÃO, terminadores ovalados.

## 8. Citação da IDC com fonte errada — ✅ CORRIGIDO (`\cite{mell2011}` → `\cite{reinsel2018}`, whitepaper Data Age 2025)

> Planilha, item 6: "problema pontual de citação da IDC".

- `01-introducao.tex:8` atribui a projeção de 175 zettabytes (IDC) a `\cite{mell2011}`, que é a *NIST Definition of Cloud Computing* (Mell; Grance) — fonte errada.
- **Ação:** citar a fonte correta do dado: relatório *Data Age 2025* (Reinsel; Gantz; Rydning — IDC/Seagate) e adicioná-la ao `referencias.bib`.

## 9. Fortalecer relação entre conceitos e fontes específicas — ⚠️ PARCIAL (trabalhos relacionados agora citam apenas fontes reais e verificadas; sugerido expandir fundamentação — ver sugestões)

> Planilha, item 3 (nota 0,8/2,0): "fortalecer relação entre conceitos e fontes mais específicas".

- **Ação:** na fundamentação teórica, amarrar cada conceito a fontes específicas (evitar generalizações com poucas citações).

## 10. Padronização das fontes de figuras/quadros — ⚠️ Parcial (quadro de custos com fonte real; figuras próprias mantêm "Autoria própria")

> Planilha, item 7 (nota 0,6/2,0): "revisar padronização das fontes de figuras/quadros".

- Todas as figuras/quadros usam `\fonteautoria` — aceitável para material próprio, mas insuficiente onde há dados de mercado (ver item 6).
- **Ação:** manter "Autoria própria" onde for o caso e inserir fontes reais nos elementos com dados externos.

## 11. Referências online / qualidade do `.bib` — ✅ CORRIGIDO (removidas entradas inexistentes kumar2022/silva2024/chen2023/halder2020/donahue2022/nextcloud2024petri; adicionados homenas2025, salke2023, donenfeld2017, tailscalehowworks; autores reais do ritzkal2023; `[S. l.]` nas institucionais)

> Planilha, item 7: "revisar ... referências online".

Problemas em `referencias/referencias.bib`:

| Entrada | Problema |
|---|---|
| `donahue2022` (:126) | autor "Avery Donahue and Others" — inválido |
| `halder2020` (:106) | páginas 123456–123478 e DOI `10.1109/ACCESS.2020.1234567` — placeholders |
| `chen2023` (:191) | DOI `10.1109/ICNC.2023.1012345` — placeholder |
| `silva2024` (:178) | DOI `...sbrc.2024.12345` e URL `/view/12345` — placeholders |
| `kumar2022` (:167) | DOI `10.5120/ijca2022123456` — placeholder |
| `ritzkal2023` (:38) | "Ritzkal and others" — completar autores |
| entradas institucionais | `address = {Online}` (nextcloud2026, openmediavault2026, tailscale2026, radxa2024) — ABNT pede local ou `[S. l.]` |

- **Ação:** verificar cada referência (existência real, dados corretos) e padronizar campos ABNT.

---

## Resumo

| # | Ponto | Status |
|---|---|---|
| 1 | Espaçamento 1,5 | ⚠️ Verificar (já configurado) |
| 2 | Introdução sem subtítulos | ❌ |
| 3 | Siglas com tradução | ❌ |
| 4 | Extenso na 1ª aparição | ❌ |
| 5 | Citações só inicial maiúscula | ❌ |
| 6 | Quadro 1 com fonte de mercado | ❌ |
| 7 | Fluxograma formas corretas | ❌ |
| 8 | Fonte correta p/ dado IDC | ❌ |
| 9 | Conceitos ↔ fontes específicas | ❌ |
| 10 | Padronizar fontes fig./quadros | ⚠️ Parcial |
| 11 | Referências online / .bib | ❌ |

Notas da planilha: Justificativa 1,0 · Objetivos 1,0 · Revisão literatura 0,8/2,0 ·
Trabalhos relacionados 1,0 · Metodologia 1,0 · Bibliografia 1,0 · Normas 0,6/2,0.
