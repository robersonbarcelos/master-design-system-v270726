---
name: step-by-step
description: >
  Implementação segura passo a passo com auditoria obrigatória entre cada etapa.
  Use quando: nova feature, correção em produção, refatoração, construção de LP,
  execução de interface/dashboard, qualquer mudança que vai para deploy,
  "implementar X", "adicionar Y", "construir componente".
allowed-tools: Read, Bash, Grep, Glob, Agent, Edit, Write, TodoWrite, Skill
---

# STEP BY STEP — Implementação Segura

Você está no modo STEP BY STEP. Toda implementação segue 4 fases por passo.
NUNCA acumule múltiplos componentes/passos sem auditoria intermediária.

> **Adaptado para o Production Orchestrator:** use este método em qualquer
> CONTEXTO que gera código (LP, Interface, Lançamento). O ciclo vale tanto para
> componentes React quanto para seções de HTML/CSS. O "deploy" pode ser
> simplesmente "verificar no browser antes de prosseguir".

## Fase 0 — Planejamento

1. Leia o `tech-lock.md` do projeto ANTES de propor qualquer mudança.
2. Crie um plano com TodoWrite listando TODOS os componentes/seções a construir,
   na ordem correta (ex: Hero → Benefícios → Prova Social → FAQ → CTA → Footer).
3. Apresente o plano ao usuário.
4. **AGUARDE CONFIRMAÇÃO** antes de iniciar.

## Ciclo por Componente/Seção

Para CADA item do plano, executar as 4 fases na ordem:

### Fase 1 — ESTUDAR
- Ler os arquivos existentes que o componente vai usar ou modificar.
- Verificar o `tech-lock.md` — confirmar qual stack usar.
- Verificar o `brand-spec.md` e `DESIGN.md` — confirmar tokens visuais.
- Comunicar ao usuário o que será construído e quais decisões foram tomadas.

### Fase 2 — IMPLEMENTAR
- Uma seção/componente por vez.
- Aplicar APENAS as tecnologias declaradas no `tech-lock.md`.
- Após cada componente: verificar no browser (screenshot ou reload manual).
- Anti-patterns de stack proibidos: inline style, mix de sistemas de estilo,
  mix de sistemas de animação, importação de lib fora do tech-lock.

### Fase 2.5 — VERIFICAR TECH LOCK (obrigatório)
Antes de avançar, confirmar:
- [ ] Usa APENAS as tecnologias do `tech-lock.md`?
- [ ] Zero `style=""` inline?
- [ ] Zero mistura de sistemas de estilo (Tailwind + CSS modules + inline)?
- [ ] Zero mistura de animação (Framer Motion + @keyframes + transition:all)?
- [ ] Zero importação de lib fora do stack declarado?

Se qualquer item falhar → **STOP**: corrija antes de avançar.

### Fase 3 — AUDITAR
Verificar:
- Anti-patterns de IA eliminados (ver lista na SKILL.md)
- Responsivo (mobile-first)
- Acessibilidade básica (alt em imagens, labels em forms, contraste AA)
- Aderência ao `brand-spec.md` e `DESIGN.md`

Se encontrar issues: corrigir → re-auditar → só avançar quando limpo.

### Fase 4 — VERIFICAR
- Abrir no browser e confirmar que o componente renderiza corretamente.
- Confirmar que não quebrou componentes anteriores já implementados.
- Screenshot para registro se relevante.

### Checkpoint
Após as 4 fases de um componente: marcar no TodoWrite, resumir resultado,
**PEDIR CONFIRMAÇÃO** para o próximo componente.

## Regras Absolutas
1. **NUNCA pular a verificação do tech-lock** — mesmo que pareça trivial.
2. **NUNCA acumular componentes** — auditar CADA UM individualmente.
3. **NUNCA avançar com componente quebrado** — corrija antes do próximo.
4. **NUNCA ignorar anti-patterns** — são os primeiros sintomas da "salada de fruta".

## Template de Comunicação por Componente
```
## Componente N/M: [Nome da seção]

**Stack verificado:** tech-lock.md ✓
**Implementado:** [O que foi construído]
**Auditoria:** [Anti-patterns verificados, issues encontradas e corrigidas]
**Verificação:** [Status no browser]

→ Posso prosseguir para o componente N+1?
```
