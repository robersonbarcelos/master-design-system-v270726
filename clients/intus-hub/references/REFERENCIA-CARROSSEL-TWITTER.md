# REFERÊNCIA CARROSSEL — ESTILO TWITTER/X

Baseado em análise de referências visuais do perfil @brotherdsgn.
Adaptado para uso no perfil @diego.spanevello

---

## ESTRUTURA GERAL DO FRAME

```
┌─────────────────────────────────────────┐
│                                         │
│   [DEIXAR LIVRE — ADICIONAR NO CANVA]   │  ~80px altura
│   Header da conta + categoria           │
│                                         │
├─────────────────────────────────────────┤
│                                         │
│                                         │
│   ZONA DE TEXTO                         │  ~55-60% do frame
│   (headline + subtexto + corpo)         │
│                                         │
│                                         │
├─────────────────────────────────────────┤
│                                         │
│   ZONA DE IMAGEM                        │  ~35-40% do frame
│   cantos arredondados 16-20px           │
│                                         │
├─────────────────────────────────────────┤
│ @diego.spanevello  arraste pra ler  💾👤│  ~60px altura
└─────────────────────────────────────────┘
```

**NOTA CANVA:** O header superior (foto de perfil + nome + categoria)
deve ser adicionado manualmente no Canva em cada slide.
Não incluir no template base — deixar espaço reservado.

---

## TIPOGRAFIA — 3 NÍVEIS FIXOS

```
NÍVEL 1 — Headline principal
Fonte: Ultra bold condensed (ex: Anton, Bebas Neue, Black Han Sans)
Tamanho: 72px a 120px
Estilo: all caps ou sentence case bold
Máximo de 3 linhas por slide

NÍVEL 2 — Subtexto / complemento
Fonte: Regular ou medium sans-serif
Tamanho: 28px a 36px
Peso: normal ou médio

NÍVEL 3 — Corpo / contexto
Fonte: Regular, peso leve
Tamanho: 22px a 28px
Cor: mais fraca que o nível 2

REGRA: nunca mais de 3 tamanhos por slide
```

---

## MARCAÇÕES TIPOGRÁFICAS — 5 TIPOS

```
1. TROCA DE COR
   Palavra-chave isolada vira laranja (#E8722A) ou vermelho (#CC0000)
   dentro de uma frase em branco ou preto
   Ex: "dos MAIORES do ano" / "DESTRUIU"

2. SUBLINHADO
   Linha fina sob frase de destaque
   Espessura: 3px
   Cor: laranja #E8722A (destaque positivo) ou vermelho #CC0000 (impacto/perda)
   Ex: "Sem prospecção orgânica,"

3. CÍRCULO MANUSCRITO
   Traço irregular ao redor de número ou dado
   Cor laranja ou vermelho, estilo hand-drawn/sketch
   Ex: círculo em "95%" / "-50%"

4. ITÁLICO + SUBLINHADO
   Para títulos, referências, nomes próprios
   Itálico + underline laranja fino
   Ex: Interstellar

5. PILL / BADGE
   Label pequeno com fundo colorido
   Border radius total (pill shape)
   Cores: verde neon, laranja, preto
   Ex: "gringo 🇺🇸" em verde
```

### REGRAS DE USO DAS MARCAÇÕES

```
MÁXIMO 1 tipo de marcação por slide
Não acumular: nunca circulado + sublinhado + cor no mesmo slide
Marcação serve para o elemento MAIS importante do slide
Se não há elemento mais importante, não marcar nada
Slides de transição e secundários geralmente não precisam de marcação
Punch final (última linha) pode ter só troca de cor, sem outros elementos
```

---

## PALETA

```
VERSÃO CLARA (slides 1, 3, 5...)
Fundo:             #FFFFFF
Texto principal:   #1A1A1A
Texto secundário:  #666666
Acento primário:   #E8722A
Background suave:  #F5F3F0

VERSÃO ESCURA (slides 2, 4, 6...)
Fundo:             Gradiente marrom quente
                   #2A1500 → #0F0500
Texto principal:   #FFFFFF
Texto secundário:  rgba(255,255,255,0.65)
Acento primário:   #E8722A (mesmo laranja — âncora visual)

LÓGICA DE ALTERNÂNCIA
O laranja #E8722A conecta as duas versões.
A troca de fundo cria ritmo visual sem quebrar a identidade.
```

---

## MARGENS E ESPAÇAMENTOS

```
Margem lateral:             40-48px (consistente em todos os slides)
Margem topo conteúdo:       24px abaixo do espaço do header
Entre blocos de texto:      16-24px
Gap texto para imagem:      20-28px
Border radius da imagem:    16-20px
Margem interna da imagem:   respeita a margem lateral do slide
```

---

## ZONA DE IMAGEM

```
Posição:   sempre na metade inferior do slide
Cantos:    arredondados 16-20px
Tipos:
  - Screenshot de app/site com contexto visível
  - Foto editorial com bordas arredondadas
  - Colagem de múltiplas imagens sobrepostas
  - Poster/capa com sobreposição de elementos
  - Print de post/tweet como evidência
  - Render 3D de personagem (Claude, ZEC, etc.)
  - Mockup de tweet/post com foto real

Nunca ocupa 100% da largura
Respeita a margem lateral do slide
Sem borda visível (border: none)
Sem sombra (box_shadow: none)
```

### REGRA DE BREAKOUT (SAÍDA DO FRAME)

```
PERMITIDO — personagens 3D gerados por IA
  O personagem pode ter cabeça/braços saindo do frame
  Instrução no prompt: "upper body breaks out above frame"
  Cria profundidade e dinamismo

NAO PERMITIDO — fotos reais de pessoas
  Foto de pessoa real NUNCA sai do frame
  Fica sempre contida dentro do border radius
  Saída de frame em foto real parece erro de design
```

### CONTRASTE IMAGEM vs TEMPLATE

```
Template escuro → cena da imagem deve ser CLARA
  Paredes bege, creme, off-white na cena
  Objeto/personagem iluminado
  Bordas claras criam contraste com o fundo escuro do template

Template claro → cena pode ser neutra ou escura
  Cenas dramáticas, noturnas ou com fundo escuro funcionam bem
  A imagem contrasta com o fundo branco do template
```

---

## FOOTER — PADRÃO

```
Esquerda:  @diego.spanevello (cinza leve, peso regular)
Centro:    "arraste pra ler" + seta ↘ ou ↪
Direita:   [💾 Salve]  [👤 Siga] — botões em pill

NOTA: footer pode ser omitido em slides internos
e reforçado apenas na capa e no CTA final
```

---

## ELEMENTOS EXTRAS

```
Seta cursiva manuscrita    → guia o olho para próxima informação
Emoji inline no texto      → humaniza o copy, máximo 1 por linha
Número circulado           → destaca dado principal
Texto riscado              → contraste antes/depois
Annotation/callout         → aponta para elemento da imagem
```

---

## PADRÃO DE ALTERNÂNCIA DE SLIDES

```
CAPA       → escura (impacto)
SLIDE 1    → clara
SLIDE 2    → escura
SLIDE 3    → clara
SLIDE 4    → escura
SLIDE 5    → clara
CTA        → escura (fechamento com peso)
```

---

## FLUXO OBRIGATÓRIO ANTES DE GERAR JSON

```
PASSO 1 — Propor 3 ideias visuais
  Para cada slide, sempre apresentar antes:
  - Como será a estrutura de texto (hierarquia, tamanhos)
  - Qual marcação será usada (ou nenhuma)
  - O que vai na imagem (cena, personagem, objeto, foto)
  - Qual template (claro ou escuro)

PASSO 2 — Aguardar aprovação do usuário
  Usuário escolhe 1 ou mais ideias

PASSO 3 — Gerar o JSON completo
  Somente após aprovação da ideia visual
```

---

## NOTAS DE PRODUÇÃO

- Header da conta: adicionar manualmente no Canva
- Username fixo: @diego.spanevello
- Acento laranja #E8722A é inegociável nos dois temas
- Fonte headline: preferência por condensed ultra bold
- Imagens: sempre com cantos arredondados, nunca full bleed
- Nunca usar travessão ( — ) no copy
- Máximo 1 ideia por slide
- Tamanho mínimo de fonte no corpo: 30px (legibilidade mobile)
- Subtext nunca abaixo de 40px quando for dado de impacto
- Foto real de pessoa: SEMPRE contida no frame, nunca breakout
- Personagem 3D gerado por IA: pode fazer breakout
- Vermelho #CC0000 para dados de perda, queda, impacto negativo
- Laranja #E8722A para destaque positivo, CTA, elementos de ação
