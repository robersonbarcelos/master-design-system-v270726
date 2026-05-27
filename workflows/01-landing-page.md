# Workflow 1 — Landing Page

## Quando usar
Criação de landing pages, páginas de venda, páginas de captura, páginas de produto.

## Skills envolvidas

| Skill | Fase | Obrigatória? | O que faz / não faz |
|---|---|---|---|
| huashu-design (Core Asset Protocol) | Fundação | Sim, se não tiver brand-spec.md | FAZ: extrai assets de marca. NÃO FAZ: código |
| huashu-design (Direction Advisor) | Fundação | Sim, se direção visual indefinida | FAZ: 3 direções visuais. NÃO FAZ: código |
| designer-skills /ux-strategy:benchmark | Fundação | Recomendado | FAZ: benchmark de concorrentes |
| designer-skills /ui-design:color-palette | Fundação | Sim | FAZ: fecha paleta |
| impeccable (shape) | Construção | Sim — GATE 1 antes de prosseguir | FAZ: estrutura + 11 elementos + copy por seção |
| taste-skill | Construção (junto com Craft) | Sim | FAZ: execução React/Tailwind anti-slop + Creative Arsenal. NÃO FAZ: copy, estrutura |
| impeccable (craft + polish) | Construção | Sim | FAZ: qualidade de agência + animações + meta tags |
| landing-page-guide-v2 | Construção | Alternativa (prazo curto) | Substitui impeccable+taste-skill quando prazo é restrito |
| huashu-design (5-dimension critique) | Validação | Sim | FAZ: critique visual 5D. NÃO FAZ: compliance técnico |
| impeccable (audit) | Validação | Sim | FAZ: WCAG AA, performance, responsivo, anti-patterns |
| web-design-guidelines | Validação | Sim — GATE 3 antes de entregar | FAZ: compliance granular (14 categorias). NÃO FAZ: visual |

## Fluxo

```
GATE 0: brand-spec.md existe? DESIGN.md existe?
  └── NÃO → STOP: execute Core Asset Protocol + Direction Advisor primeiro

BRIEFING
├── Produto, público, objetivo da LP
├── Tem marca definida? → Se não: Direction Advisor
└── Tem concorrentes? → benchmark

FUNDAÇÃO
├── huashu Core Asset Protocol → brand-spec.md
├── huashu Direction Advisor → escolhe 1 de 3 direções visuais
├── designer-skills color-palette → paleta fechada
└── DESIGN.md carregado

GATE 1: Shape aprovado pelo usuário? Paleta fechada? Nenhuma fonte rejeitada?
  └── NÃO → STOP: não gera código sem aprovação da arquitetura

CONSTRUÇÃO
├── impeccable Shape → define estrutura + 11 elementos + copy por seção
├── taste-skill + impeccable Craft → executa componentes React/Tailwind
│   ├── DESIGN_VARIANCE: 8 (assimétrico, sem hero centrado)
│   ├── MOTION_INTENSITY: 6 (Framer Motion spring physics)
│   └── VISUAL_DENSITY: 4 (espaçamento generoso)
└── impeccable Polish → animações scroll-triggered + micro-interações + meta tags

GATE 2: Todos os componentes React prontos?
  └── NÃO → STOP: complete antes de auditar

VALIDAÇÃO
├── huashu 5-dimension critique → radar + lista de fixes visuais
├── impeccable audit → WCAG AA + performance + responsivo + anti-patterns
├── web-design-guidelines → compliance granular (focus-visible, touch-action,
│   prefers-reduced-motion, autocomplete, tabular-nums, hydration, i18n)
└── Aplica todos os fixes

GATE 3: Critique 5D + Audit impeccable + web-design-guidelines todos executados?
  └── NÃO → volte ao gate que falhou

ENTREGA
└── LP publicável + checklist de verificação completo
```

## Checklist de qualidade

### Conteúdo e conversão
- [ ] Headline com proposta de valor clara (não genérica)
- [ ] Hero visual do produto (não stock photo)
- [ ] Benefícios escritos como transformações, não features
- [ ] Mínimo 3 provas sociais acima do fold
- [ ] CTA visível sem scroll
- [ ] CTA repetido a cada seção
- [ ] Garantia proeminente

### Visual e código
- [ ] Nenhuma fonte da lista rejeitada
- [ ] DESIGN_VARIANCE ≥ 8: layout assimétrico, sem hero centrado, sem 3 cards iguais
- [ ] `min-h-[100dvh]` em seções full-height (nunca `h-screen`)
- [ ] Mobile: todos os botões com mínimo 44px de toque
- [ ] Contraste de texto mínimo 4.5:1 (WCAG AA)

### Compliance técnico (web-design-guidelines)
- [ ] `focus-visible` implementado (nunca `outline: none` sem substituto)
- [ ] `aria-label` em todos os ícones interativos
- [ ] `autocomplete` correto em todos os inputs de formulário
- [ ] `prefers-reduced-motion` respeitado em todas as animações
- [ ] `touch-action: manipulation` em elementos clicáveis
- [ ] Imagens com `alt` text e dimensões explícitas
- [ ] Formulário com estados de erro e sucesso
- [ ] OG image configurada
- [ ] Velocidade: LCP < 2.5s

## Decisão: impeccable vs landing-page-guide-v2

| Situação | Use |
|---|---|
| Cliente high-ticket, entrega premium, tem tempo | impeccable |
| Prazo curto, produto de entrada, LP simples | landing-page-guide-v2 |
| Primeiro rascunho para validar com cliente | landing-page-guide-v2 → depois impeccable para versão final |
