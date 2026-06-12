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
- **Quando usar:** awareness, mostrar qualidade do trabalho — **todos os serviços de lash** (lash extensions, lash lift, Korean lash lift, volume, híbrido)
- **Layout:** macro close-up no olho, eye level + fade para cream na base + texto
- **Ângulo:** eye level obrigatório — nunca overhead
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
- Realismo de pele: ver **Padrão de Skin Realism** abaixo — obrigatório em todo prompt com pessoa
- Logo area: `LOGO AREA: bottom bar, clean solid background [cream #FAF7F2 OR magenta #9B1256], height approx 12% of frame, completely empty — reserved for logo placement`
- Finalizar com: `Ultra photorealistic beauty editorial photography. NO watermark. NO handle. NO extra text.`

### Padrão de Skin Realism (obrigatório em todo prompt com pessoa)

Descoberto na produção de junho/2026 — combinação que gera textura de pele convincente e elimina o efeito plástico/airbrushed.

**Fórmula aprovada — usar sempre no campo `materials.skin`:**
```
Fair/medium/dark [tom correto] skin with warm undertone. Visible open pores on forehead and cheekbones. Fine individual peach fuzz hairs catching light. Natural light [freckles / minor imperfections / uneven skin tone] scattered across nose and cheekbones. Matte finish — skin absorbs light rather than reflects. NO foundation finish, NO highlight powder, NO cosmetic gloss, NO airbrushed smoothing. Zero post-processing. Natural lived-in skin.
```

**Técnicas que ancoram o realismo:**
| Técnica | Por que funciona |
|---------|-----------------|
| `freckles` ou `minor imperfections` | IA usa imperfeições como âncora de realismo — remove o efeito plastificado |
| `face fills entire frame, no background` | Sem fundo para renderizar, toda potência vai para a textura da pele |
| `peach fuzz as individual translucent hairs` | Força renderização de pelo fino — incompatível com pele plástica |
| `skin absorbs light rather than reflects` | Elimina specular highlights e gloss cosmético |
| `zero post-processing` | Instrução direta anti-retoque |
| NUNCA usar `perfect`, `flawless`, `smooth` | Essas palavras ativam o modo plastificado da IA |

**No campo `quality.avoid` — sempre incluir:**
```
plastic skin, airbrushed skin, poreless skin, CGI smoothness, wax texture,
cosmetic sheen, specular hotspot on forehead, beauty retouch, frequency separation
```

**Referência fotográfica padrão:** Peter Lindbergh + Paolo Roversi — matte, unretouched, visible pores, peach fuzz.

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

## 05 | Composições Aprovadas por Tipo de Conteúdo

| Composição | Ângulo | Quando usar |
|-----------|--------|-------------|
| Face fills entire frame, no background | Eye level | Realismo de pele — qualquer serviço |
| Macro eye close-up | Eye level obrigatório | Todos os serviços de lash (extensão, lash lift, Korean lash lift, volume, híbrido) |
| Rosto inclinado chin-up | Eye level/low | Confiança, poder, brow lamination |
| 3/4 angle sutil | Eye level | Profundidade, editorial suave |
| Close-up com caixa de cor no lower zone | Eye level | Post informativo com texto longo |

> ⚠️ Overhead top-down: evitar — gera resultados ruins. Testado e reprovado.

---

## 06 | Elementos Visuais da Marca

| Elemento | Uso | Regra |
|----------|-----|-------|
| Sparkle ✦ | Decorativo pontual | Usar com moderação — não exagerar |
| Labels BEFORE/AFTER | Antes/Depois | Pill branco, texto preto, caps |
| Letras grandes (opacity baixa) | Decorativo no fundo | "Lashes" em script, magenta claro |
| Moldura arredondada | Fotos emolduradas | Cantos suaves, não sharp |
| Overlap de fotos | Antes/Depois Feed | Cria profundidade — foto depois sobre antes |

---

## 07 | Exemplos de Posts Reais (Referência)

### ANTES_DEPOIS_FEED — 4:5 Feed
Fundo magenta full, 2 fotos emolduradas sobrepostas, labels BEFORE/AFTER, sparkle ✦, "Lashes" script decorativo no rodapé

### Lash_designer_OFICIAL_magenta — 4:5 Feed
Foto cliente half-bleed direita, fundo magenta esquerda, texto lateral, tipografia decorativa no fundo

### LASHES_YY_STYLE_01 — 4:5 Feed
Foto full bleed superior ~65% + barra magenta inferior 35%, headline grande, logo centralizada base

### yy_lashes_logo_nova — 4:5 Feed
Foto em arco central, fundo desfocado da mesma foto, logo magenta topo sobre área clara
