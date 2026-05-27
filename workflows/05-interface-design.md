# Workflow 5 — Interface Design (Dashboard / SaaS / Produto Digital)

## Quando usar

Criação de interfaces de produto: dashboards, painéis admin, áreas de membros, SaaS apps, ferramentas internas, portais, plataformas digitais.

**Não usar para:** landing pages de marketing (→ workflow 01), posts/carrosseis de social media (→ workflow 02).

---

## Skills envolvidas

| Skill | Fase | Obrigatória? | O que faz / não faz |
|---|---|---|---|
| interface-design | Todas as fases | Sim | FAZ: intent-first, domain exploration, craft foundations, testes de qualidade. NÃO FAZ: LP, social media |
| taste-skill | Fase 3 Execução | Sim | FAZ: execução React/Tailwind anti-slop, AI Tells proibidos. NÃO FAZ: copy, critique visual |
| web-design-guidelines | Fase 4 Validação | Sim | FAZ: compliance técnico 14 categorias. NÃO FAZ: design visual |
| huashu-design (Core Asset Protocol) | Fundação | Sim, se não tiver brand-spec.md | FAZ: extrai assets de marca |

---

## Fluxo

```
GATE 0: brand-spec.md existe?
  └── NÃO → STOP: execute Core Asset Protocol (huashu) primeiro

FASE 1: INTENT FIRST (via interface-design)
Responda obrigatoriamente antes de qualquer decisão visual:
├── Quem é esse usuário? (pessoa real, contexto, rotina)
├── O que ele precisa fazer? (verbo preciso — não "usar o dashboard")
└── Como isso deve parecer? (não "limpo e moderno" — seja específico)

GATE 5: Intent respondido com especificidade?
  └── NÃO → STOP: pergunte ao usuário, não prossiga sem respostas concretas

FASE 2: DOMAIN EXPLORATION (via interface-design)
Produza os 4 outputs antes de qualquer wireframe:
├── Domínio → conceitos e vocabulário do mundo desse produto (min 5)
├── Mundo de cores → cores que existem no domínio físico (min 5)
├── Assinatura → 1 elemento que só existe para ESTE produto
└── Defaults a evitar → 3 escolhas óbvias para esse tipo de interface

Teste: leia a proposta sem o nome do produto.
  └── Alguém identificaria para que serve? NÃO → explore mais.

FASE 3: EXECUÇÃO (via taste-skill + interface-design)
Stack padrão: React / Next.js + Tailwind CSS + Framer Motion

Configuração de dials por tipo:
├── Dashboard denso (analytics, trading, admin): VISUAL_DENSITY 7-9
├── App de uso diário (SaaS, produtividade): VISUAL_DENSITY 4-6
├── DESIGN_VARIANCE: 6 (offset, estruturado mas não genérico)
└── MOTION_INTENSITY: 4 (transições funcionais, sem cinema)

Craft foundations obrigatórias (interface-design):
├── Surface Elevation: inputs levemente mais escuros que contexto
│   sidebar mesma cor do canvas + borda sutil
│   dropdowns um nível acima da superfície pai
├── Borders: rgba de baixa opacidade (não hex sólido)
│   sistema de 4 níveis: padrão → suave → ênfase → focus ring
├── Token names semânticos: --vault-surface, --terminal-ink
│   (nunca --gray-700 ou --surface-2)
└── Infinite Expression: toda escolha trocável pela padrão = default

AI Tells proibidos:
├── Sem sidebar cor diferente do canvas
├── Sem sequência ícone-esquerda + número-grande + label-pequeno
├── Sem Inter font
├── Sem #000000 puro (use Zinc-950)
└── Sem transition: all

FASE 4: VALIDAÇÃO (via interface-design + web-design-guidelines)

Testes de qualidade:
├── Swap Test: troque sua escolha pela mais comum → diferença notável?
├── Squint Test: desfoque os olhos → hierarquia ainda legível?
├── Signature Test: aponte 5 elementos com a assinatura do produto
└── Token Test: leia os CSS variables → soam como esse produto?

GATE: todos os 4 testes passaram?
  └── NÃO → refaça os elementos que falharam

Compliance técnico (web-design-guidelines):
├── focus-visible implementado em todos os elementos interativos
├── aria-label em ícones sem texto visível
├── autocomplete nos formulários
├── prefers-reduced-motion respeitado
├── touch-action: manipulation em elementos clicáveis
├── tabular-nums em todas as colunas numéricas (OBRIGATÓRIO em dashboards)
├── overscroll-behavior: contain em modais e panels
└── Output: lista de violações file:line → resolva todas

ENTREGA
└── Interface completa + checklist de pronto verificado
```

---

## Checklist de qualidade

### Intent e propósito
- [ ] Intent respondido com especificidade (quem, o quê, como sente)
- [ ] Domain Exploration produziu os 4 outputs obrigatórios
- [ ] Assinatura identificável em 5 elementos concretos (não "o feeling geral")

### Design e execução
- [ ] Surface elevation system implementado (base → card → dropdown → modal)
- [ ] Borders: rgba, não hex sólido
- [ ] Token names semânticos do domínio do produto
- [ ] Nenhuma fonte da lista rejeitada
- [ ] Sem Inter, #000000, transition: all
- [ ] Estados loading, empty e error em TODAS as views com dados

### Compliance técnico (web-design-guidelines)
- [ ] focus-visible em todos os elementos interativos
- [ ] tabular-nums em colunas numéricas
- [ ] aria-label em ícones sem texto
- [ ] autocomplete correto nos formulários
- [ ] prefers-reduced-motion respeitado

---

## Diferença de configuração por tipo de interface

| Tipo | VISUAL_DENSITY | MOTION_INTENSITY | Notas |
|---|---|---|---|
| Dashboard analítico | 7-9 | 3-4 | font-mono em números, divide-y em vez de cards |
| SaaS produtividade | 4-6 | 4-5 | equilíbrio espaço/dados |
| Área de membros | 3-5 | 5-6 | mais editorial, menos cockpit |
| Ferramenta interna | 6-8 | 3 | funcional acima de tudo, sem decoração |
| Admin panel | 7-9 | 3 | densidade máxima, zero ornamentação |
