# DESIGN.md — Carol Staggemeier

last_updated: 2026-06-10

> Referência visual para agentes de IA, geração de código, posts e componentes.
> Base: Kinfolk editorial + Everlane product photography + minimalismo escandinavo com calor mediterrâneo.

---

## Visão geral

**Estilo:** Editorial minimalista natural — artesanal mas contemporâneo
**Atmosfera:** Calorosa, sofisticada, próxima. Nunca fria, nunca pretenciosa.
**Referência:** Kinfolk magazine / Cereal magazine / Everlane / COS — adaptado para moda autoral brasileira handmade

---

## Cores

```
Primária (texto/âncora): #273d29  — Verde Floresta
Escuro alt (texto):       #4c3529  — Café Terroso
Médio (elementos):        #786c5c  — Argila
Secundária (acento):      #9db4a1  — Salva
Fundo alt (warm):         #c2b6a5  — Areia Quente
Fundo principal:          #e5ded3  — Linho
```

**Regra:** Nunca use #000000 puro. Nunca use #FFFFFF puro. Nunca gradiente. Toda a paleta é terrosa, natural, quente.

---

## Tipografia

**Display / Headlines:** Halant Regular ou Bold — para títulos e heroes
**Subtítulos:** Nunito Sans Bold (700) — para subtítulos e nomes de peça
**Body:** Nunito Sans Regular (400) — para parágrafos, descrições, copy

**NUNCA usar:** Inter, DM Sans, Playfair Display, Cormorant Garamond, Montserrat, Futura — estas fontes estão fora do sistema Carol.

**Escala:**
- Hero: 52px / 1.1 line-height / Halant Bold
- H1: 40px / 1.2 / Halant Bold
- H2: 30px / 1.25 / Halant Regular
- H3: 22px / 1.3 / Nunito Sans Bold
- Body-lg: 18px / 1.6 / Nunito Sans Regular
- Body: 16px / 1.6 / Nunito Sans Regular
- Caption: 14px / 1.5 / Nunito Sans Regular
- Label: 12px / 1.4 / Nunito Sans Bold

**Letter-spacing:** Headlines com letter-spacing generoso (0.05em–0.08em). Corpo padrão.

---

## Layout e espaçamento

**Grid:** 12 colunas, gutter 24px, max-width 1280px
**Espaçamento base:** 8px — múltiplos de 8
**Raio de borda:** 4px para cards e inputs (não arredondado demais — mantém elegância); 999px para pills/tags
**Sombras:** sutis e quentes — `box-shadow: 0 2px 8px rgba(39,61,41,0.08)` — nunca sombra dura ou preta

---

## Componentes

### Botão primário
- Background: #273d29 (Verde Floresta)
- Texto: #e5ded3 (Linho)
- Padding: 14px 32px
- Border-radius: 4px
- Letter-spacing: 0.05em
- Hover: background lighten to #3a5c3d

### Botão secundário
- Background: transparente
- Border: 1px solid #273d29
- Texto: #273d29
- Hover: background #273d29 / texto #e5ded3

### Cards de produto
- Background: #e5ded3 (Linho) ou branco quente #FDFCF8
- Border: 1px solid rgba(39,61,41,0.12)
- Shadow: 0 2px 8px rgba(39,61,41,0.06)
- Padding interno: 24px
- Border-radius: 4px

### Tags / Labels de produto
- Background: #9db4a1 (Salva)
- Texto: #273d29
- Padding: 4px 12px
- Border-radius: 999px
- Font: Nunito Sans Bold 12px

### Inputs
- Border: 1px solid rgba(39,61,41,0.3)
- Focus: border #273d29, ring rgba(39,61,41,0.15)
- Background: #FDFCF8
- Border-radius: 4px

---

## Tom visual

**O que sempre fazemos:**
- Muito espaço negativo — não sature a tela
- Hierarquia clara — um elemento dominante por seção
- Fotografia real, luz natural, nunca stock photo genérico
- Tipografia com letter-spacing — não compacta, não apertada
- Temperatura quente em todos os elementos visuais
- Textura de linho ou fibra natural como elemento gráfico quando possível

**O que nunca fazemos:**
- Gradientes de qualquer tipo (especialmente roxo/azul/rosa genérico de IA)
- Fundo preto puro ou branco puro
- Ícones emoji como ilustração decorativa
- Glassmorphism ou efeitos de brilho
- Layout de template genérico de moda (3 cards iguais em linha, hero centralizado com foto escurecida)
- Fontes rejeitadas: Inter, DM Sans, Playfair Display, Cormorant, Montserrat, Futura
- Flash ou iluminação artificial em fotografias
- Poses de passarela ou modelos muito produzidas

---

## Voz do design

Design que parece artesanal mas é preciso. Cada elemento tem razão de existir — como os detalhes das peças da Carol. Caloroso sem ser rústico. Sofisticado sem ser esnobe. O espaço vazio não é ausência, é respiro — como as peças que precisam de espaço para existir.
