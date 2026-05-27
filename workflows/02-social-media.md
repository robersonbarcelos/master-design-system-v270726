# Workflow 2 — Social Media

## Quando usar
Produção de carrosseis, posts, estáticos, legendas, stories, threads, calendário editorial, análise de performance.

## Skills envolvidas

| Skill | Função | Quando |
|---|---|---|
| social-media-context-sms | Contexto do cliente | Setup inicial (uma vez) |
| content-strategy-sms | Pilares e posicionamento | Setup inicial (uma vez) |
| platform-strategy-sms | Estratégia por plataforma | Setup inicial (uma vez) |
| hook-writer-sms | Hook / abertura | Toda peça |
| carousel-writer-sms | Script de carrossel | Carrosseis |
| card-news-generator-v2 | Visuais dos cards | Carrosseis |
| caption-writer-sms | Legenda | Toda peça |
| post-writer-sms | Post standalone | Posts únicos |
| thread-writer-sms | Thread / fio | X / LinkedIn |
| content-repurposer-sms | Adaptação multiplataforma | Após peça aprovada |
| huashu-design | Infográfico / estático rico | Posts educativos visuais |
| content-calendar-sms | Calendário | Planejamento mensal |
| performance-analyzer-sms | Análise de métricas | Com dados em mãos |
| content-pattern-analyzer-sms | Padrões de performance | Revisão mensal |
| optimization-advisor-sms | Recomendações | Após análise |
| audience-growth-tracker-sms | Crescimento | Revisão mensal |

## Fluxo por tipo de peça

### Carrossel
```
PRÉ-PRODUÇÃO: 3 ângulos distintos
  └── Nome do ângulo + Gancho de capa + Linha narrativa
          ↓
[GATE 4.5] Ângulo aprovado pelo usuário?
  └── NÃO → STOP: refine ou reapresente os ângulos
          ↓
hook-writer-sms → aprofunda variações do gancho escolhido
          ↓
carousel-writer-sms → script 9-12 slides
  ├── Slides CERNE: 100% do espaço, dados, máx 8 linhas
  └── Slides SECUNDÁRIOS: máx 4 linhas, espaço para imagem
          ↓
[AUTO-GERAÇÃO — sem precisar solicitar]
  ├── 5 variações de capa (dado / contraste / personagem / tipografia / metáfora)
  └── 3 variações de legenda (storytelling / provocação / educativa)
  └── "Quer o prompt JSON de alguma dessas capas?"
          ↓
[GATE 4] Script aprovado?
          ↓
card-news-generator-v2 → visuais com brand-spec.md
          ↓
caption-writer-sms → legenda final otimizada para a plataforma
          ↓
content-repurposer-sms → adapta para outras plataformas (opcional)
```

### Post estático educativo
```
hook-writer-sms → copy do visual
     ↓
huashu-design (infográfico) → visual
     ↓
caption-writer-sms → legenda
```

### Post único (texto)
```
hook-writer-sms → hook
     ↓
post-writer-sms → corpo do post
     ↓
caption-writer-sms → legenda (se plataforma visual)
```

### Thread
```
hook-writer-sms → primeiro tweet/post
     ↓
thread-writer-sms → fio completo
```

### Calendário mensal
```
content-calendar-sms → cronograma com temas, datas, formatos
```

### Revisão de performance
```
performance-analyzer-sms → insights das métricas
     ↓
content-pattern-analyzer-sms → o que funcionou
     ↓
audience-growth-tracker-sms → tendência de crescimento
     ↓
optimization-advisor-sms → próximas ações
```

## Checklist de qualidade por peça

### Carrossel
- [ ] 3 ângulos propostos antes de qualquer slide
- [ ] Ângulo aprovado pelo usuário (GATE 4.5)
- [ ] Script com 9-12 slides estruturados (GANCHO → CONTEXTO → ANÁLISE → IMPLICAÇÕES → AÇÃO → CTA)
- [ ] Slides CERNE identificados e formatados (100% do espaço, dados quantificados, máx 8 linhas)
- [ ] Slides SECUNDÁRIOS formatados (máx 4 linhas, sem placeholder de imagem no copy)
- [ ] 5 variações de capa geradas automaticamente ao final
- [ ] 3 variações de legenda geradas automaticamente ao final
- [ ] Visual com consistência de brand-spec.md (card-news-generator-v2)
- [ ] Caption final tem primeira linha como hook (antes do "ver mais")

### Post único
- [ ] Primeira linha para o scroll sem depender do visual
- [ ] Voz do cliente reconhecível
- [ ] CTA específico ao final
- [ ] Hashtags relevantes (não genéricas)

## Setup de cliente (executar uma vez)
```
social-media-context-sms → .agents/social-media-context-sms.md
     ↓
content-strategy-sms → pilares de conteúdo
     ↓
platform-strategy-sms → estratégia por plataforma
```
Após setup: todas as skills leem o contexto automaticamente.
