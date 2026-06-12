# Referência de Design — LP Super Agente de IA · INTUS HUB

Documentação completa dos elementos, componentes, estruturas e decisões de design usados na landing page do curso **Crie um Super Agente de IA**.

Repositório do projeto: [github.com/INTUS-AI/LP-Crie-um-Super-Agente-de-IA](https://github.com/INTUS-AI/LP-Crie-um-Super-Agente-de-IA)

---

## 1. Design Tokens

### Paleta de cores

```css
/* Accent — laranja INTUS */
--accent:   #FE5000;
--accent-2: #FF7A33;
--accent-ink: #ffffff;

/* Backgrounds — preto puro */
--bg:   #0a0a0a;   /* fundo base */
--bg-2: #131313;   /* cards e módulos */
--bg-3: #1c1c1c;   /* elementos elevados */

/* Texto */
--ink:   #fafafa;
--ink-2: rgba(250,250,250,.72);   /* corpo secundário */
--ink-3: rgba(250,250,250,.48);   /* labels, eyebrows, meta */

/* Bordas */
--line:   rgba(250,250,250,.10);
--line-2: rgba(250,250,250,.06);
```

### Tipografia

| Variável | Fonte | Uso |
|---|---|---|
| `--f-display` | Inter Tight | Títulos, botões, números grandes |
| `--f-body` | Inter Tight | Corpo de texto |
| `--f-mono` | JetBrains Mono | Eyebrows, labels, preços, meta |
| `--f-serif` | Instrument Serif | Ênfase tipográfica (ex: answer card) |

### Escala tipográfica

```css
.h1 { font-size: clamp(44px, 8vw, 108px); font-weight: 800; }
.h2 { font-size: clamp(34px, 5.5vw, 76px); font-weight: 800; }
.h3 { font-size: clamp(22px, 2.8vw, 36px); font-weight: 700; }
.h4 { font-size: clamp(18px, 2vw, 24px);   font-weight: 700; }
.lead { font-size: clamp(16px, 1.45vw, 19px); color: var(--ink-2); max-width: 60ch; }
```

Todos os títulos `.h-display` têm `letter-spacing: -0.03em` e `line-height: 1.0`.
Ênfases em `<em>` ficam na cor `var(--accent)` (laranja).

### Border radius

```css
--r-sm: 8px;
--r:    14px;
--r-lg: 22px;
--r-xl: 28px;
```

### Espaçamento

```css
--pad-section: clamp(80px, 10vw, 144px);   /* padding de seção */
--container:   1240px;                       /* max-width do container */
```

---

## 2. Elementos de Interface

### Eyebrow (label de seção)

Tag pill com ponto pulsante animado. Usado no topo das seções e na hero.

```css
.eyebrow {
  font-family: var(--f-mono);
  font-size: 11px;
  letter-spacing: .14em;
  text-transform: uppercase;
  color: var(--accent);
  padding: 6px 12px;
  border-radius: 999px;
  border: 1px solid color-mix(in oklab, var(--accent) 40%, transparent);
  background: color-mix(in oklab, var(--accent) 8%, transparent);
}
/* Ponto pulsante via ::before com animation: pulse 2.2s infinite */
```

### Eyebrow simples (section-eyebrow)

Versão sem pill, só texto laranja mono, usada em títulos internos de seção.

---

## 3. Botões

### btn-primary — CTA principal

Gradiente radial laranja escuro com efeito sweep de luz animado.

```css
background: radial-gradient(67.54% 100.03% at 50% 0%,
  #FF6020 0%, #E84000 25%, #C03000 62%, #8C2000 100%);
box-shadow:
  0 6px 23px rgba(232,64,0,.22),
  0 14px 54px rgba(232,64,0,.45);
```

Sweep de luz: pseudo-elemento `::before` com `mix-blend-mode: plus-lighter` e animação `btn-sweep 2.6s linear infinite`.

### btn-primary.btn-big — CTA grande com seta animada

Seta `→` fica num círculo branco à esquerda (`::after`). No hover, a seta desliza para a direita e o padding inverte.

```css
/* Repouso */
padding: 20px 44px 20px 58px;
/* Hover */
padding: 20px 58px 20px 44px;
/* A seta move de left: 16px → left: calc(100% - 44px) */
```

### btn-ghost — secundário

Transparente com borda `var(--line)`. Hover: `background: var(--bg-2)`.

---

## 4. Hero — Estilo V1 Gradient Dissolve

### Estrutura (full-bleed, fora do container)

```
<section.hero>
  ├── .hero-orb.a / .hero-orb.b   ← orbs de ambient light (parallax)
  ├── .hero-bleed-grid             ← grid 1fr 1fr, 100vw, min-height: 640px
  │    ├── .hero-content-col       ← flex coluna, padding fixo, z-index: 3
  │    │    └── .hero-content      ← eyebrow + h1 + lead + CTA
  │    └── .hero-foto-c            ← coluna da imagem full-height
  │         └── <img>              ← dissolve CSS mask
  └── .container
       ├── .hero-bullets-below     ← 4 bullets em grid 2 colunas
       └── <HeroPillars>           ← 4 cards de diferenciais
```

### Efeito dissolve da imagem (CSS mask dual gradient)

```css
-webkit-mask-image:
  linear-gradient(to right, transparent 0%, rgba(0,0,0,0.2) 12%, black 35%, black 80%, transparent 100%),
  linear-gradient(to bottom, transparent 0%, black 8%, black 92%, transparent 100%);
-webkit-mask-composite: source-in;   /* Chrome: source-in, não intersect */
mask-composite: intersect;           /* Firefox/padrão */
```

> Nota crítica: Chrome não suporta `mask-composite: intersect` com dois gradientes simultaneamente. Usar `-webkit-mask-composite: source-in`.

Overlay de ambient light na foto:
```css
.hero-foto-c::before {
  background: radial-gradient(circle at 50% 50%, rgba(232,64,0,0.12) 0%, transparent 70%);
}
```

### Ambient orbs (parallax)

```css
.hero-orb.a { width: 500px; height: 500px; background: var(--accent); opacity: .22; filter: blur(100px); }
.hero-orb.b { width: 360px; height: 360px; background: color-mix(in oklab, var(--accent) 50%, #5b21b6); opacity: .20; }
```

### Hero — Mobile (max-width: 920px)

```css
.hero-bleed-grid {
  grid-template-columns: 1fr;    /* quebra para 1 coluna */
  min-height: unset;
}
.hero-content-col { grid-row: 1; }   /* texto em cima */
.hero-foto-c {
  grid-row: 2;                   /* imagem abaixo */
  height: 72vw;
  min-height: 280px;
  max-height: 440px;
}
/* Máscara simplificada no mobile */
-webkit-mask-image: linear-gradient(to bottom, black 60%, transparent 100%);
```

---

## 5. Bullets da Hero (abaixo da headline)

Grid 2 colunas com check icon via CSS mask SVG inline.

```css
.hero-bullets-below {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 12px 40px;
}
/* Check via mask SVG */
.hero-bullets li::before {
  background: var(--accent);
  -webkit-mask: url("data:image/svg+xml...checkmark") center/contain no-repeat;
}
```

---

## 6. HeroPillars — 4 cards de diferenciais

Grid de 4 colunas que vira 2x2 no mobile.

```css
.hero-pillars {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 12px;
}
/* Mobile */
@media (max-width: 820px) { grid-template-columns: 1fr 1fr; }
```

Cada pillar: `background: var(--bg-2)`, border com hover laranja, `translateY(-2px)` no hover.

---

## 7. Carrossel de Depoimentos

Carrossel manual com dots de navegação. Implementado em React puro com `useState` e `useEffect` (auto-avanço a cada 5s). Swipe desabilitado — navegação por dots ou setas.

Estrutura dos cards:
```
.t-card
  ├── .t-headline     ← resultado principal (laranja, bold)
  ├── .t-quote        ← citação com <strong> destacado
  └── .t-author
       ├── .t-avatar  ← círculo com foto ou iniciais (gradiente laranja → roxo)
       ├── .t-name
       └── .t-role
```

Avatares com foto real: `<img>` dentro do `.t-avatar`. Sem foto: iniciais com gradiente `linear-gradient(135deg, var(--accent), color-mix(in oklab, var(--accent) 50%, #5b21b6))`.

---

## 8. Módulos — Two-panel interativo (desktop) + Accordion (mobile)

### Desktop (> 760px): grid 280px + 1fr

- Coluna esquerda: tabs sticky (`.modules-tabs`, `top: 90px` — abaixo do nav)
- Tab ativa: `background: var(--accent)`, texto branco
- Coluna direita: painel de detalhe com lista de aulas, animação `panel-in 0.2s ease`

### Mobile (≤ 760px): accordion

- `.modules-ui` some (`display: none`)
- `.modules-accordion` aparece
- Cabeçalho do módulo aberto fica laranja; corpo expande com lista de aulas

---

## 9. Countdown Timer (Oferta)

Timer regressivo de 59 minutos com persistência via `sessionStorage`.

```js
const DURATION = 59 * 60;   // segundos
// Chave: 'sa_offer_end' — timestamp de expiração
// Persiste no reload; reseta ao fechar o browser
```

Visual:
```
ESSA OFERTA EXPIRA EM:
  [00]   :   [59]   :   [00]
  HORAS      MIN       SEG
```

CSS key: `.ocd-num` — Inter Tight 900, 36px. Separador `:` em laranja com `margin-bottom: 14px` (alinha baseline).

---

## 10. Seção de Oferta

### Value Stack (o que está incluído)

Lista tabular com nome do item, preço e badge "INCLUSO". Items bonus têm fundo levemente laranja e badge pill laranja.

### Caixa de preço

```
[Mas hoje você paga apenas:]    ← 17px, font-weight 600
[6x]                            ← mono, pequeno, ink-3
[R$ 16,50]                      ← Inter Tight 900, clamp(60px, 10vw, 96px)
[ou R$ 87,90 à vista]           ← 13px, ink-3
[COUNTDOWN TIMER]
[CTA BUTTON]
[🔒 1 ano de acesso · 7 dias de garantia]  ← mono, 11px, centralizado
```

---

## 11. Comparison (Antes / Depois)

Lista de linhas com grid 1fr 1fr. "Antes" tem texto com `text-decoration: line-through` em cinza apagado. "Depois" tem texto bold em branco com ênfase em `<em>` laranja.

Cada linha: `border-bottom: 1px solid var(--line)`. Labels "ANTES" / "DEPOIS" em mono uppercase.

---

## 12. Roadmap

Grid de 3 cards com número grande (64px, ink-3) como elemento decorativo. Último card: número em `var(--accent)`. Cada card tem orb de ambient light via `::before`.

---

## 13. Marquee (faixa animada)

Fundo laranja sólido. Texto branco, Inter Tight 800, `clamp(22px, 2.4vw, 32px)`. Animação CSS pura:

```css
@keyframes marquee { to { transform: translateX(-50%); } }
/* Velocidade controlada por --marquee-dur (default: 40s) */
```

Separador entre itens: ponto branco circular `width: 6px`.

---

## 14. Garantia

Grid 200px + 1fr. Badge SVG circular com estrela e "7 DIAS" animado (rotação lenta). Texto de garantia com strong destacado em branco.

---

## 15. FAQ

Accordion. Cada item: borda inferior `var(--line)`. Cabeçalho: flex com texto + ícone `+`/`−`. Corpo: texto `var(--ink-2)` com `padding: 0 0 20px`. Transição de abertura via `max-height`.

---

## 16. Stats Bar (contadores animados)

`IntersectionObserver` dispara `useCountUp` ao entrar na viewport. Animação `ease-out cubic` via `requestAnimationFrame`.

Valores:
- 6.000+ Alunos Formados
- 17K YouTube Inscritos
- 40K Instagram Seguidores
- 1K+ Membros Intuscripto Club

---

## 17. Nav

Sticky com `backdrop-filter: blur(20px) saturate(140%)` ao scroll. Classe `.scrolled` ativada via `useEffect` com listener `scroll`.

Conteúdo: logo hexágono SVG + wordmark + preço parcelado (oculto em mobile) + CTA.

---

## 18. Announcement Bar

Fundo `var(--accent)` sólido. Texto branco, 13.5px, centralizado. Link com `text-decoration: underline`.

---

## 19. Efeitos e Animações

| Efeito | Técnica | Arquivo |
|---|---|---|
| Scroll reveal | IntersectionObserver + classe `.visible` | `effects.jsx` |
| Parallax | `requestAnimationFrame` + `data-parallax` attr | `effects.jsx` |
| Cursor personalizado | `#cursor-ring` div + mousemove listener | `effects.jsx` |
| Sweep no botão | `::before` + `mix-blend-mode: plus-lighter` | `styles.css` |
| Ponto pulsante | `@keyframes pulse` no eyebrow | `styles.css` |
| Contador animado | `useCountUp` hook + ease-out cubic | `sections.jsx` |
| Countdown timer | `setInterval` + `sessionStorage` | `sections.jsx` |

---

## 20. Responsividade — Breakpoints principais

| Breakpoint | O que muda |
|---|---|
| 920px | Hero: 2col → 1col (imagem abaixo); offer grid → 1col; testimonials → 2col |
| 820px | Hero pillars → 2x2; roadmap → 1col; bump card → 1col |
| 760px | Problem cols → 1col; modules → accordion |
| 720px | Nav price some |
| 640px | Challenges → 1col; modules CTA band → coluna |
| 600px | Testimonials → 1col |

---

## Arquivos de referência nesta pasta

| Arquivo | Conteúdo |
|---|---|
| `README.md` | Este documento |
| `../hero-structures/hero-variacoes-5-modelos.html` | 5 variações de hero testadas (V1 a V5) |
