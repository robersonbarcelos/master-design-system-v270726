# REFERENCIA-CARROSSEL-CAROL.md
# Sistema de Templates — Carol Staggemeier

> Referência canônica para produção de carrossels, posts estáticos e stories do Instagram da Carol.
> Consultar SEMPRE antes de gerar qualquer JSON de slide.
> Arquivos de template: TEMPLATE-CAPA-CAROL.json · TEMPLATE-SLIDE-CAROL.json · TEMPLATE-CTA-CAROL.json

---

## Formato base

| Propriedade | Valor |
|------------|-------|
| Aspect ratio | 4:5 |
| Resolução | 1080x1350px |
| Safe area | 952x1222px (64px mínimo todos os lados) |
| Margem lateral | 44px |
| Fonte display | Halant Bold / Regular (Google Fonts) |
| Fonte corpo | Nunito Sans Regular 400 / Bold 700 |

---

## Versões de Capa — 5 versões oficiais

### V1 — Verde Floresta (escura, editorial)
- Fundo: `#273d29`
- Logo: Linho `#e5ded3`
- Headline: Linho `#e5ded3`
- Acento / marcação: Salva `#9db4a1`
- Tom: autoridade, profundidade, coleção premium

### V2 — Café Terroso (escura quente)
- Fundo: `#4c3529`
- Logo: Linho `#e5ded3`
- Headline: Linho `#e5ded3`
- Acento / marcação: Areia Quente `#c2b6a5`
- Tom: artesanalidade, calor, lote exclusivo

### V3 — Linho (clara, respiro visual)
- Fundo: `#e5ded3`
- Logo: Café Terroso `#4c3529`
- Headline: Verde Floresta `#273d29` (peso heavy) + Café `#4c3529` (peso regular)
- Acento / marcação: Salva `#9db4a1` (sublinhado) ou Verde pill
- Tom: editorial limpo, coleção nova, flat lay

### V4 — Areia Quente (média, versátil)
- Fundo: `#c2b6a5`
- Logo: Café Terroso `#4c3529`
- Headline: Verde Floresta `#273d29`
- Acento / marcação: Café Terroso `#4c3529` (pill badge)
- Tom: cotidiano, conteúdo de produto, bastidor

### V5 — Foto Full-bleed + Tipo
- Fundo: foto da campanha (editorial terracota ou linho bege)
- Overlay: `#273d29` com opacidade 20–30% se foto muito clara
- Logo: Linho `#e5ded3`
- Headline: Linho `#e5ded3` (tipo gigante sobre a foto)
- Acento: Salva `#9db4a1` ou nenhum
- Tom: produto em cena, lançamento visual, capa dinâmica

---

## Tipografia — 3 Níveis Fixos por Slide

| Nível | Família | Tamanho | Peso | Uso |
|-------|---------|---------|------|-----|
| 1 — Headline | Halant | 64–96px | Bold | Frase principal do slide — máx 3 linhas |
| 2 — Subtexto | Halant | 28–36px | Regular ou Italic | Complemento, contexto, nome de peça |
| 3 — Corpo | Nunito Sans | 22–26px | Regular (400) | Informação secundária, preço, detalhes |

**Regras de headline:**
- Sentence case por padrão (ex: "Feito à mão.") — all caps apenas para nomes de peça ou termos de coleção
- Ponto final ou nenhuma pontuação. Nunca reticências ou exclamação
- Itálico Halant aparece como destaque emocional (ex: "feito *à mão.*")
- Máximo 3 tamanhos de fonte por slide

---

## Âncora Visual — Salva `#9db4a1`

Salva é o equivalente ao laranja `#E8722A` do intus-hub: funciona nos dois fundos (escuro e claro) como fio visual de identidade.

**Nos fundos escuros (V1 Verde, V2 Café):**
- Troca de cor na palavra-chave da headline
- Pill badge label
- Sublinhado sutil no subtexto

**Nos fundos claros (V3 Linho, V4 Areia):**
- Sublinhado 2px em nome de peça ou dado de destaque
- Pill badge em background Linho com texto Verde
- Não usar como cor de headline — contraste insuficiente

---

## Marcações de Destaque — 4 tipos disponíveis

### 1. Troca de cor (color_swap)
- Fundos escuros: palavra-chave em Salva `#9db4a1`, resto em Linho `#e5ded3`
- Fundos claros: palavra-chave em Verde `#273d29` (peso Bold), resto em Café `#4c3529` (peso Regular)
- Uso: headline nível 1

### 2. Sublinhado (underline)
- Cor: Salva `#9db4a1` (escuro) ou Café `#4c3529` (claro)
- Espessura: 2px
- Uso: nome de peça, dado de impacto, subtexto nível 2

### 3. Pill badge
- Border radius: 999px / padding: 6px 16px
- Combinações aprovadas:
  - Verde Floresta `#273d29` + texto Linho `#e5ded3` — para fundos claros
  - Linho `#e5ded3` + texto Verde `#273d29` — para fundos escuros
  - Salva `#9db4a1` + texto Verde `#273d29` — para fundos escuros, versão delicada
- Uso: label editorial (ex: "bastidor", "novo lote", "exclusivo", "peça em cena")

### 4. Itálico destaque
- Halant Italic sem nenhuma cor extra
- Uso: complemento emocional dentro da headline ("Uma peça que *fica.*")

---

## Zonas do Slide

```
┌──────────────────────────────────────────┐
│  HEADER · 80px                           │  ← DEIXAR LIVRE (logo + @carolstaggemeier no Canva)
├──────────────────────────────────────────┤
│                                          │
│  CONTENT · 55% do frame                 │  ← headline + subtexto + corpo
│  margin lateral 44px                    │
│                                          │
├──────────────────────────────────────────┤
│                                          │
│  IMAGE · 38% do frame                   │  ← foto da campanha, border-radius 18px
│  margin lateral 44px                    │
│                                          │
├──────────────────────────────────────────┤
│  FOOTER · 60px                           │  ← @carolstaggemeier + botões (só no CTA)
└──────────────────────────────────────────┘
```

**Regra de imagem:** sempre com `border_radius: 18px`. Nunca full-bleed dentro dos slides internos (só na capa V5).

---

## Alternância de Versões — Padrão de Carrossel

```
CAPA    → V2 Café  ou  V1 Verde  (escura)
SLIDE 1 → V3 Linho              (clara)
SLIDE 2 → V1 Verde              (escura)
SLIDE 3 → V4 Areia              (média)
SLIDE 4 → V2 Café               (escura)
SLIDE 5 → V3 Linho              (clara)
CTA     → V1 Verde              (escura, fechamento forte)
```

**Lógica:** Salva `#9db4a1` aparece como acento nos dois fundos — garante coesão visual entre todos os slides.

---

## Regras Negativas (NUNCA fazer)

- Sem travessão (—) em copy — usar ":" ou reformular
- Sem linhas divisórias entre seções
- Sem fundo branco puro (#FFFFFF) ou preto puro (#000000)
- Sem fonte abaixo de 22px no corpo
- Sem foto sem border-radius nos slides internos
- Máximo 3 tamanhos de fonte por slide
- Máximo 1 ideia central por slide
- Header sempre livre — não gerar com conteúdo fixo (feito no Canva)
- Não usar Argila `#786c5c` como cor de fundo principal — apenas como texto secundário

---

## Handle e rodapé

```
@carolstaggemeier
```

- Slides internos: apenas o handle, `font_size: 20px`, cor com opacidade 35-45%
- Capa: handle + "arraste para ver" + seta
- CTA: handle + botões Salve / Siga

---

## Referência visual de produção

- Estilo editorial artesanal: fundo terracota `#C2834A`, sombras de janela, luz dourada
- Temperatura de cor: sempre quente — nunca flash frio
- Fotógrafo de referência: editorial natureza-morta warm, próximo a Zara Home Brasil + Vogue Brasil
