# Visual System — Michele Fara

> Sistema de produção visual: grupos editoriais, JSONs aprovados, regras de prompt, especificações técnicas.

---

## 01 | Especificações Técnicas

| Formato | Dimensões | Aspect Ratio |
|---------|-----------|--------------|
| Stories Instagram | 1080×1920px | 9:16 |
| Feed quadrado | 1080×1080px | 1:1 |
| Feed retrato | 1080×1350px | 4:5 |

**Arquivo Figma:** https://www.figma.com/design/WPkq7ANMkznAVMrTqL0Wiz/

---

## 02 | Grupos Visuais por Tipo de Post

### GRUPO 1 — Antes/Depois (Split Vertical)
- **Quando usar:** awareness, prova visual de resultado
- **Layout:** split vertical com linha divisória magenta
- **Paleta:** cream background, headline magenta
- **JSON:** ver `references/json-templates.md` → Categoria 1

### GRUPO 2 — Antes/Depois (Full Bleed + Inset Polaroid)
- **Quando usar:** awareness, mais dramaticidade
- **Layout:** foto DEPOIS full bleed + inset polaroid ANTES no canto
- **Paleta:** fundo magenta para o band superior, cream para área de texto
- **JSON:** ver `references/json-templates.md` → Categoria 2

### GRUPO 3 — Resultado Macro — Cílios
- **Quando usar:** awareness, mostrar qualidade do trabalho
- **Layout:** macro close-up no olho + fade para cream na base + texto
- **Paleta:** fundo escuro natural da foto, fade para cream, texto magenta
- **JSON:** ver `references/json-templates.md` → Categoria 3

### GRUPO 4 — Resultado Macro — Brow Lamination
- **Quando usar:** awareness de serviço de sobrancelha
- **Layout:** close-up do rosto (nariz ao topo) + fade para cream + texto magenta
- **Paleta:** foto natural + cream base + magenta
- **JSON:** ver `references/json-templates.md` → Categoria 4

### GRUPO 5 — Ambiente do Studio
- **Quando usar:** retenção, bastidores, humanizar a marca
- **Layout:** foto do studio em warm light + área de texto com headline
- **Paleta:** cream, warm whites, acento magenta em detalhes do decor
- **JSON:** ver `references/json-templates.md` → Categoria 5

### GRUPO 6 — Gift Voucher / Sazonal
- **Quando usar:** conversão em datas sazonais (Mother's Day, Christmas, Valentine's)
- **Layout:** still life elegante + headline sazonal + CTA
- **Paleta:** cream, warm whites, accent magenta
- **JSON:** ver `references/json-templates.md` → Categoria 6

---

## 03 | Workflow de Produção de Prompts

### Fluxo obrigatório (sempre nessa ordem):
1. Propor 3 ideias em texto — composição, ângulo, iluminação, paleta
2. Aguardar aprovação do usuário
3. Gerar JSON completo para as variações aprovadas

### Estrutura JSON padrão:
```json
{
  "prompt": "[composição com zonas, iluminação, paleta hex, tipografia, logo area]",
  "negative_prompt": "[negative prompt padrão completo]",
  "aspect_ratio": "9:16",
  "reference_images": {
    "slot_1": "@reference_photo — LOCK 100%: face, skin texture, pores, peach fuzz, eyebrow shape, lash curl, iris. ADJUST ONLY: zoom, crop, angle, lighting warmth, upscale",
    "slot_2": "@logo_image — place ONLY in bottom logo area, preserve logo proportions exactly"
  },
  "style": "[estilo fotográfico + paleta v3.0 + layout]"
}
```

---

## 04 | Regras de Prompt

### SEMPRE incluir
- Hex codes explícitos: `#9B1256` e `#FAF7F2`
- Realismo de pele: `visible pores, peach fuzz, natural skin texture, realistic imperfections`
- Logo area: `LOGO AREA: bottom bar, clean solid background [cream #FAF7F2 OR magenta #9B1256], height approx 12% of frame, completely empty — reserved for logo placement`
- Finalizar com: `Ultra photorealistic beauty editorial photography. NO watermark. NO handle. NO extra text.`

### Negative prompt padrão completo
```
plastic skin, airbrushed skin, perfect poreless skin, wax texture, CGI smoothness, doll-like, 
AI skin, perfectly uniform lashes, blurry lashes, soft focus, text touching edges, 
text cramped against logo, no breathing space, no side margins, sans-serif font, 
low contrast text, burgundy, gold tones, @michelefara wrong handle, 
logo visible in image, text in logo area, measurements on image, numbers on image
```

### Regras de Image to Image
- Strength: 90-95%
- LOCK 100%: rosto, textura de pele, poros, peach fuzz, sobrancelha, curl dos cílios, profundidade da íris
- ADJUST ONLY: zoom, crop, ângulo, temperatura de luz, upscale

---

## 05 | Elementos Visuais da Marca

| Elemento | Uso | Regra |
|----------|-----|-------|
| Sparkle ✦ | Decorativo pontual | Usar com moderação — não exagerar |
| Labels BEFORE/AFTER | Antes/Depois | Pill branco, texto preto, caps |
| Letras grandes (opacity baixa) | Decorativo no fundo | "Lashes" em script, magenta claro |
| Moldura arredondada | Fotos emolduradas | Cantos suaves, não sharp |
| Overlap de fotos | Antes/Depois Feed | Cria profundidade — foto depois sobre antes |

---

## 06 | Exemplos de Posts Reais (Referência)

### ANTES_DEPOIS_FEED — 4:5 Feed
Fundo magenta full, 2 fotos emolduradas sobrepostas, labels BEFORE/AFTER, sparkle ✦, "Lashes" script decorativo no rodapé

### Lash_designer_OFICIAL_magenta — 4:5 Feed
Foto cliente half-bleed direita, fundo magenta esquerda, texto lateral, tipografia decorativa no fundo

### LASHES_YY_STYLE_01 — 4:5 Feed
Foto full bleed superior ~65% + barra magenta inferior 35%, headline grande, logo centralizada base

### yy_lashes_logo_nova — 4:5 Feed
Foto em arco central, fundo desfocado da mesma foto, logo magenta topo sobre área clara
