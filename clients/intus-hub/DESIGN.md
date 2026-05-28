# DESIGN.md — INTUS HUB / Super Agente de IA

Referência visual: estilo ElevenLabs/dark premium com acento laranja vibrante.
Design skill: BOLD

---

## Filosofia visual

**POV:** Produto técnico que qualquer pessoa consegue usar. Visual premium que não intimida — intimida a concorrência, não o cliente. Cada pixel deve transmitir: "isso funciona de verdade."

**Princípios:**
1. Contraste extremo como padrão — nunca tons médios sem propósito
2. Tipografia é o design — headlines grandes são o elemento visual principal
3. Laranja é energia — usar como acento, nunca como preenchimento
4. Escuro total no fundo — nunca branco, nunca cinza claro
5. Espaço negativo é luxo — menos elementos, mais impacto

---

## Grid e layout

**Social media (1:1 — 1080x1080):**
- Margem: 48px em todos os lados
- Grid: 12 colunas, gutter 16px
- Elemento principal: 100% da largura útil ou 60/40 split
- Logo: canto superior esquerdo ou inferior direito, nunca centralizado em criativos de conteúdo

**Stories (9:16 — 1080x1920):**
- Margem: 48px laterais, 96px topo e base (safe zone)
- Headline no terço superior
- CTA/sticker no terço inferior
- Elemento visual no centro

**Reels cover (9:16):**
- Headline nos primeiros 3 segundos visualmente
- Fonte mínima: 64px para leitura em mobile

---

## Tipografia aplicada

**Headlines de impacto:**
- Família: Syne 800
- Tamanho: 56-80px (posts) / 64-96px (covers)
- Cor: branco #FFFFFF ou laranja #E84000
- Tracking: -0.02em (tight)
- Max 3 linhas — nunca quebrar palavra

**Subtítulos:**
- Família: Space Grotesk 500-600
- Tamanho: 20-28px
- Cor: rgba(255,255,255,0.75)

**Dados e tags:**
- Família: JetBrains Mono 400-500
- All-caps com letter-spacing: 0.08em
- Cor: #E84000 ou rgba(255,255,255,0.5)
- Usado para: preços, percentuais, labels técnicos, badges

**Corpo:**
- Família: Space Grotesk 400
- Tamanho: 16-18px
- Linha: 1.6
- Max 45-55 caracteres por linha

---

## Cores aplicadas por tipo de peça

**Post de awareness (parar scroll):**
- Fundo: #0a0a0a
- Headline: branco #FFFFFF (contraste máximo)
- Acento: uma linha ou palavra em #E84000
- Nenhum gradiente de fundo

**Post de educação:**
- Fundo: #111111 (ligeiramente mais claro)
- Números/dados: JetBrains Mono #E84000
- Ícones: line style, #E84000 ou branco

**Post de conversão (CTA):**
- Fundo: #0a0a0a
- Preço: JetBrains Mono bold, branco grande
- Âncora: mesmo tamanho mas riscado, opacity 0.4
- Botão/CTA: fundo #E84000, texto preto bold
- Garantia: border #E84000 opacity 0.3, texto branco

**Post de prova social:**
- Fundo: #111111
- Quote: Syne 600, branco, itálico
- Nome: Space Grotesk 500, #E84000
- Cargo: JetBrains Mono, opacity 0.6

---

## Elementos visuais recorrentes

**Glow laranja:**
- box-shadow: 0 0 40px rgba(232,64,0,0.25)
- Usado em: CTAs, dados de destaque, bordas de cards premium

**Borda sutil:**
- border: 1px solid rgba(232,64,0,0.2)
- Usado em: cards, separadores, containers

**Badge/tag:**
- Background: rgba(232,64,0,0.12)
- Border: 1px solid rgba(232,64,0,0.3)
- Texto: #E84000, JetBrains Mono, all-caps, 11px

**Linha divisória:**
- Gradiente: transparent → #E84000 → transparent
- Altura: 1px
- Usado como separador de seções

**Hexágono marca:**
- Usar como elemento decorativo de fundo (opacity 0.05-0.1)
- Nunca como substituto do logo completo

---

## Estéticas PROIBIDAS

- Gradiente roxo/azul genérico de "IA"
- Ícones emoji como elemento principal
- Glassmorphism sem propósito
- Fundo branco ou cinza claro
- Fontes: Inter, DM Sans, Playfair, Fraunces, Space Grotesk em headlines (só body)
- Cor primária sobre cor primária (laranja sobre laranja)
- Mais de 3 pesos tipográficos no mesmo criativo
- Imagem de stock de "pessoa usando computador"

---

## Referências de estilo por tipo de conteúdo

**Estático viral (awareness):**
→ Tipografia enorme, ocupando 70%+ do espaço
→ Uma única ideia por peça
→ Fundo preto, letra branca, acento laranja em 1 palavra

**Carrossel educativo:**
→ Cover: impacto máximo (bold + contraste)
→ Slides internos: mais clean, espaço para respirar
→ Slide final: sempre CTA com preço e garantia

**Stories:**
→ Texto lido em menos de 2 segundos
→ Elemento interativo no centro
→ CTA sempre no terço inferior

**Thumbnail/Cover vídeo:**
→ Rosto do Diego + texto de impacto
→ Expressão: determinado, olhando para câmera (pilar negócios)
→ Fundo escuro com blur de telas (padrão brand)
→ Headline em Syne 800, branco, shadow sutil para legibilidade
