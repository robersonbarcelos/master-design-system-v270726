---
name: memory
description: >
  Atualizar a memória persistente do projeto/cliente (índice de sessões, histórico, decisões, planos).
  Use quando: fim de sessão, "salvar progresso", "preparar próxima sessão", após fase aprovada,
  após entrega de LP ou interface, após lançamento concluído.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash, TodoWrite, Skill
---

# MEMORY — Atualização de Memória Persistente

Você está no modo MEMORY. Atualize a memória persistente do cliente/projeto.

> **Adaptado para o Production Orchestrator:** cada cliente tem sua pasta em
> `clients/[nome-cliente]/`. A memória vive em `clients/[nome-cliente]/memory/`.
> Separe o que MUDA (memória de sessão) do que é PERMANENTE (brand-spec, DESIGN.md).

## Estrutura por cliente

```
clients/[nome-cliente]/
├── brand-spec.md          ← permanente (muda raramente)
├── DESIGN.md              ← permanente
├── .agents/               ← contextos de social media
└── memory/
    ├── MEMORY.md          ← índice ENXUTO (≤200 linhas): sessões recentes + próximos passos
    ├── HISTORIC/          ← o que FOI feito (só cresce)
    │   ├── FEATURE_HISTORY.md   ← 1 linha por entrega
    │   └── LESSONS_LEARNED.md  ← bugs/decisões importantes
    ├── PLAN/              ← o que SERÁ feito
    └── runs/              ← artefatos por data (já existente)
```

**Regra de ouro:** `MEMORY.md` é índice, não narrativa. Se precisa de >2 linhas, crie
arquivo em `HISTORIC/` e linke. Mantenha abaixo de ~200 linhas.

## Protocolo de Atualização

### 1. Coletar da sessão
Responder: o que foi produzido? quais decisões foram tomadas? o que ficou pendente?
bugs encontrados e corrigidos? mudanças no brand-spec ou DESIGN.md?

### 2. Atualizar MEMORY.md
- Adicionar entrada da sessão (1-2 linhas): data + o que foi feito.
- Manter só as 5-6 últimas sessões no índice — recortar antigas para `HISTORIC/`.
- Atualizar "Próximos passos".
- Verificar que está ≤200 linhas.

### 3. Atualizar HISTORIC/
- `FEATURE_HISTORY.md` — 1 linha: data + entregável (ex: "2025-05-30 — LP Super Agente hero reformulado").
- `LESSONS_LEARNED.md` — bugs ou decisões relevantes: o quê, por quê, como resolveu.

### 4. Atualizar PLAN/ (se houver)
- Planos concluídos → renomear `_DONE.md` + mover para `HISTORIC/`.
- Novos planos → criar arquivo dedicado.

### 5. Verificação Final
- [ ] `MEMORY.md` ≤200 linhas?
- [ ] Nenhuma informação duplicada com `brand-spec.md` ou `DESIGN.md`?
- [ ] Entrega da sessão registrada em `FEATURE_HISTORY.md`?
- [ ] Próximos passos atualizados?

## Anti-padrões (PROIBIDO)
- Deixar `MEMORY.md` virar narrativa de 300+ linhas.
- Duplicar no `MEMORY.md` o que já está no `brand-spec.md` (identidade visual, voz).
- Registrar segredos (tokens, senhas) em qualquer arquivo de memória.
- Apagar `HISTORIC/` — ele só cresce; é a trilha do projeto.
