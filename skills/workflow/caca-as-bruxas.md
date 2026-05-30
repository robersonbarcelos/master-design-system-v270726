---
name: caca-as-bruxas
description: >
  Debugging metodológico para encontrar e corrigir a CAUSA RAIZ de qualquer erro.
  Use quando: bug report, erro inesperado, comportamento estranho, componente não renderiza,
  estilo quebrando, animação não funciona, build falhando, "por que X não funciona?".
allowed-tools: Read, Bash, Grep, Glob, Agent, Edit, Write, TodoWrite, Skill
---

# CAÇA AS BRUXAS — Protocolo de Debugging

Você está no modo CAÇA AS BRUXAS. Siga este protocolo RIGOROSAMENTE.
TODO erro tem uma causa raiz. NUNCA trate só o sintoma.

Sequência obrigatória: **sintoma → investigação → causa raiz → fix → verificação**.

> **Adaptado para o Production Orchestrator:** as "3 fontes" para projetos de LP/Interface são:
> (1) código-fonte / arquivos, (2) browser/runtime, (3) dependências/imports.
> Para projetos full-stack, adapte para DB/backend/frontend.

## Passo 1 — Capturar o Sintoma

Crie lista com TodoWrite. Registre:
- O que aconteceu exatamente?
- Em qual componente / seção / arquivo?
- Quando começou (após qual mudança)?
- O que o browser/console mostra?

## Passo 2 — Investigação Trifonte

Investigue OBRIGATORIAMENTE as 3 fontes antes de propor qualquer fix:

### Fonte 1: Código-fonte (arquivos)
- Leia o arquivo com o problema.
- Verifique imports e dependências.
- Cruze com o `tech-lock.md` — há violação de stack?
- Cruze com `brand-spec.md` / `DESIGN.md` — há token errado?

### Fonte 2: Runtime / Browser
- O que aparece no console de erros?
- O que o browser renderiza vs o que deveria renderizar?
- Há conflito de CSS (especificidade, override inesperado)?
- Há erro de hidratação (SSR vs cliente)?

### Fonte 3: Dependências / Contexto externo
- A lib usada é a declarada no `tech-lock.md`?
- Há duas libs fazendo a mesma coisa (conflito)?
- A versão da dependência é compatível?
- Há variável de ambiente faltando?

## Passo 3 — Triangular

- **Divergência entre fontes = pista.**
- Documente TODAS as divergências encontradas.
- Remonte a cadeia: efeito → causa intermediária → causa raiz.

Exemplo: "O componente não anima porque usa `transition: all` (Fonte 1) conflitando
com Framer Motion (Fonte 3) — violação do tech-lock (Fonte 1 vs tech-lock)."

## Passo 4 — Confirmar Causa Raiz

Antes de qualquer fix:
1. Apresente a causa raiz ao usuário COM evidências.
2. Explique a cadeia: "X aconteceu porque Y, causado por Z".
3. Proponha o fix e **AGUARDE CONFIRMAÇÃO**.

## Passo 5 — Fix Cirúrgico

- Uma mudança de cada vez.
- Verificar no browser após cada mudança.
- NUNCA acumular múltiplos fixes sem verificar.

## Passo 6 — Verificação

Após o fix, confirmar nas 3 fontes:
- Código sem violação de stack?
- Browser renderiza corretamente?
- Sem efeitos colaterais em outros componentes?

Se QUALQUER fonte divergir → voltar ao Passo 2.

## Passo 7 — Documentar (se bug relevante)

Registre em `runs/[data]/bugs.md`:
- Data, componente afetado, causa raiz, fix aplicado, lição.

## Anti-padrões (PROIBIDO)
- "Resetei e funcionou" → NÃO. Descubra POR QUE precisou resetar.
- "Vou tentar X e ver se resolve" → NÃO. Investigue ANTES de tentar.
- Corrigir em 1 lugar sem verificar se o mesmo problema existe em outros componentes.
- Tratar sintoma como causa ("o estilo tava errado, corrigi o estilo").
- Adicionar nova lib para resolver problema causado por lib anterior → viola tech-lock.
