# Template Colagem — Produto + Modelo
**Cliente:** Carol Staggemeier  
**Formato fixo:** 1080x1350px · 4:5 Instagram Feed  
**Criado em:** 2026-06-18  
**Atualizado em:** 2026-06-21 — GRIDs D–K adicionados (referências visuais externas) + GARMENT FIDELITY LOCK global

---

## Como usar

```
1. Escolha o GRID pelo número de peças e estrutura visual desejada
2. Escolha o FUNDO pelo tom da roupa (tabela de contraste abaixo)
3. Escolha a LUZ pelo clima editorial desejado
4. Preencha os placeholders: [GARMENT], [MODEL DESCRIPTION]
5. Cole o JSON no gerador junto com TODAS as fotos de referência:
   - Para flat lays (GRIDs D–K): SEMPRE 4 fotos das peças
   - Para colagem com modelo: foto da modelo + flat lay(s) + detalhe de tecido
```

---

## ⚠️ GARMENT FIDELITY LOCK — Regra Global Obrigatória

**Aplicar em TODOS os JSONs sem exceção.**

```
GARMENT FIDELITY LOCK — OBRIGATÓRIO EM TODO PROMPT:

Reproduce every garment EXACTLY as shown in the reference photographs.
DO NOT redesign, reinterpret, alter silhouette, change proportions,
modify neckline, add or remove seams, change closure type, alter hem,
or introduce ANY detail not present in the original garment.

ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero lurex, zero metallic
thread, zero sparkle, zero glitter, zero iridescence, zero satin sheen,
zero specular highlight on ANY fabric area in ANY panel.
Fabric absorbs light — it does not reflect it.

Fotos de referência necessárias para flat lay: SEMPRE 4 fotos das peças.
```

Esta trava se aplica a:
- `scene.description` — descrever a peça e proibir reinterpretação
- `style.surface_textures` — proibir shimmer e satin
- `technical.rendering` — proibir specular highlights
- `materials.fabric` — descrever cada peça e listar o que é proibido
- `quality.avoid` — listar shimmer, reinterpretação, redesign

---

## Guia de Contraste — Fundo × Cor da Roupa

| Cor da roupa | Fundo recomendado | Hex |
|---|---|---|
| Preto, navy, verde escuro | Areia Quente | `#c2b6a5` |
| Preto, navy, verde escuro | Linho | `#e5ded3` |
| Café, argila, terracota | Linho | `#e5ded3` |
| Branco, creme, off-white | Verde Floresta | `#273d29` |
| Branco, creme, off-white | Café Terroso | `#4c3529` |
| Salva, verde suave, bege | Café Terroso | `#4c3529` |

**Regra geral:** fundo sempre mais claro que a peça (ou mais escuro se peça for clara).

---

## Guia de Iluminação

| Código | Nome | Instrução no prompt | Clima |
|---|---|---|---|
| L1 | Janela Lateral Dramática | Strong warm golden window light from upper left, 4200K, visible warm beam and geometric shadow on wall | Editorial quente, atmosférico |
| L2 | Overhead Difusa | Large overhead softbox 150cm, 4000K warm-neutral, even uniform light, no beam no gradient | Catálogo clean, neutro |
| L3 | Lateral Suave | Large diffused strip softbox camera-left, full heavy diffusion, barely perceptible warm gradient, no beam no hard shadow | Editorial suave, textura realçada |
| L4 | Ambiente Quente | Warm ambient interior light 3800K from all directions equally, no directional source, no beam, no gradient | Intimista, galeria quente |

---

## Travas fixas — Não remover de nenhum template

### Rosto da modelo
```
PRESERVE EXACT MODEL FACIAL LIKENESS from reference photograph:
silver-gray layered mid-length hair, rectangular dark tortoiseshell glasses,
gold stud earrings, fair warm-tone skin with natural aging — do not smooth,
rejuvenate, alter face shape, change hair color or remove glasses.
Natural mature skin texture with visible fine lines preserved — zero airbrushing,
zero rejuvenation, zero frequency separation.
```

### Fidelidade da peça
```
GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in reference.
DO NOT redesign, reinterpret, alter silhouette, change fabric, add or remove details.
ALL FABRIC STRICTLY MATTE — zero shimmer, zero lurex, zero satin sheen,
zero specular highlight on any fabric area.
[DESCRIBE SPECIFIC GARMENT DETAILS HERE for each use]
```

### Tecido matte
```
ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero metallic thread, zero lurex,
zero sparkle, zero glitter, zero iridescence, zero satin sheen, zero specular
highlight on any fabric area. Fabric absorbs light, does not reflect it.
```

### Separador
```
Grid separator lines: Verde Floresta (#273d29), 2px hairline, clean and precise.
```

---

## GRID A — 3 Painéis · Modelo Grande + 2 Produtos Direita
> **Uso:** 1 look completo, mostrar blusa + vestido separados  
> **Fotos necessárias:** 1 modelo corpo inteiro + 2 flat lays de peças

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Three-panel collage grid with 2px Verde Floresta (#273d29) hairline separators. Left panel (~58% width, full height): full-length model photograph wearing complete outfit — model stands naturally, full body from head to feet visible, looking slightly off-camera. PRESERVE EXACT MODEL FACIAL LIKENESS: silver-gray layered mid-length hair, rectangular dark tortoiseshell glasses, gold stud earrings, fair warm-tone skin with natural aging — do not smooth, rejuvenate, alter face shape, change hair color or remove glasses. Right side divided into two equal horizontal panels stacked: top-right panel: product flat lay of [GARMENT 1 — e.g. blouse/top], centered on matching background, exact garment reproduction; bottom-right panel: product flat lay of [GARMENT 2 — e.g. full dress or skirt], centered on matching background, exact garment reproduction. GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in reference. DO NOT redesign, reinterpret, alter silhouette, change fabric, add or remove details. [DESCRIBE SPECIFIC GARMENT DETAILS: fabric type, color, silhouette, neckline, sleeves, seams, hem, all construction details.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero metallic thread, zero lurex, zero sparkle, zero glitter, zero iridescence, zero satin sheen. Background across all panels: [CHOOSE BACKGROUND — e.g. Areia Quente #c2b6a5 or Linho #e5ded3], warm matte stucco plaster texture. Lighting: [CHOOSE LIGHTING — e.g. L1: strong warm golden window light from upper left, 4200K, visible warm beam and geometric shadow on wall]. No text. No logo. No additional elements.",
      "subject": "Three-panel editorial collage — left: full-length model exact likeness, right: 2 stacked product flat lays. Garment fidelity and model likeness mandatory.",
      "setting": "Studio editorial — [BACKGROUND COLOR] warm stucco plaster wall, [LIGHTING DESCRIPTION]",
      "action": "Static three-panel collage — model left, products right"
    },
    "style": {
      "primary": "editorial fashion collage, slow-fashion artisan brand, model plus product anatomy layout",
      "rendering_quality": "hyperrealistic, editorial print quality, ultra high resolution",
      "surface_textures": "Warm stucco plaster background all panels. All garment fabric MATTE — exact texture preserved, zero reflectivity. Natural aging skin texture on model — preserved exactly.",
      "lighting": "[LIGHTING DESCRIPTION — copy from Guia de Iluminação above]. Consistent light temperature and quality across all panels — same shooting session feel."
    },
    "technical": {
      "camera": {
        "focal_length": "50mm model panel, 85mm product panels",
        "aperture": "f/4 model panel, f/8 product panels",
        "depth_of_field": "moderate model (person sharp, background slightly soft), deep product (everything sharp)",
        "angle": "eye level model, overhead or straight-on product flat lays"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Warm matte film tonality, very slight grain. NO specular highlights on fabric. NO fabric sheen. NO metallic rendering. Consistent color grade all panels."
    },
    "materials": {
      "skin": "Fair warm-tone skin, natural undertone. Visible open pores forehead and cheekbones. Fine peach fuzz catching light. Natural mature skin texture with visible fine lines — DO NOT smooth, rejuvenate or retouch. Skin absorbs light, matte finish. Zero airbrushing. Zero frequency separation.",
      "fabric": "EXACT REPRODUCTION MANDATORY — [DESCRIBE EACH GARMENT FABRIC DETAIL HERE] — FORBIDDEN on any fabric area: shimmer, sparkle, glitter, lurex, metallic thread, satin sheen, iridescence, specular highlight.",
      "surfaces": "All panel backgrounds: [BACKGROUND COLOR HEX] warm matte stucco plaster. Grid separators: Verde Floresta (#273d29) 2px hairline."
    },
    "composition": {
      "perspective": "Flat frontal all panels, no distortion",
      "framing": "1080x1350px 4:5. Left panel ~58% width full height. Right side two equal horizontal panels stacked.",
      "subject_placement": "Model centered in left panel, full body head to feet. Top-right: garment 1 centered. Bottom-right: garment 2 centered.",
      "safe_area": "64px padding all sides. Safe zone 952x1222px inside 1080x1350px. No text or graphic elements.",
      "ui_elements": "None — pure photography collage. No text, no logo, no price, no overlay."
    },
    "quality": {
      "include": [
        "exact model facial likeness preserved — silver hair glasses gold earrings",
        "natural mature skin texture preserved no retouching",
        "full model body visible head to feet in left panel",
        "exact garment 1 construction preserved from reference",
        "exact garment 2 construction preserved from reference",
        "all fabric matte zero shimmer zero metallic",
        "consistent background tone all three panels",
        "Verde Floresta hairline separator clean and precise",
        "consistent warm light across all panels same session",
        "editorial slow-fashion brand quality"
      ],
      "avoid": [
        "altering model face hair glasses or skin texture",
        "smoothing or rejuvenating model skin",
        "any shimmer sparkle glitter lurex metallic on any fabric",
        "redesigning or reinterpreting any garment",
        "inconsistent background color between panels",
        "mismatched lighting between panels",
        "text logo or overlay of any kind",
        "model cropped — full body must be visible",
        "cold blue-toned lighting",
        "heavy vignette or post-processing"
      ],
      "reference_standard": "Exact model and garment reproduction from provided reference photographs. Kinfolk editorial grid, Lemaire lookbook collage standard."
    }
  }
}
```

---

## GRID B — 3 Painéis · Modelo Grande + Produto + Macro Textura
> **Uso:** 1 peça hero, valorizar detalhe artesanal do tecido  
> **Fotos necessárias:** 1 modelo corpo inteiro + 1 flat lay da peça + 1 close-up de tecido

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Three-panel collage grid with 2px Verde Floresta (#273d29) hairline separators. Left panel (~58% width, full height): full-length model photograph wearing complete outfit — full body from head to feet visible, natural editorial pose. PRESERVE EXACT MODEL FACIAL LIKENESS: silver-gray layered mid-length hair, rectangular dark tortoiseshell glasses, gold stud earrings, fair warm-tone skin with natural aging — do not smooth, rejuvenate, alter face shape, change hair color or remove glasses. Right side divided into two equal horizontal panels stacked: top-right panel: product flat lay of the complete garment, centered on matching background, exact reproduction; bottom-right panel: extreme macro close-up of the garment fabric texture — zoom into the fabric detail, showing weave, texture, pattern or construction at close range — this panel is a texture detail, allowed to be cropped tight, but must show the EXACT same fabric from reference without alteration or shimmer. GARMENT FIDELITY LOCK — reproduce garment EXACTLY from reference. DO NOT redesign, reinterpret, alter silhouette, change fabric, add or remove details. [DESCRIBE SPECIFIC GARMENT DETAILS: fabric type, color, silhouette, neckline, sleeves, seams, hem, texture, pattern.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero metallic thread, zero lurex, zero sparkle, zero glitter, zero iridescence, zero satin sheen, zero specular highlight. Background across all panels: [CHOOSE BACKGROUND], warm matte stucco plaster texture. Lighting: [CHOOSE LIGHTING]. No text. No logo.",
      "subject": "Three-panel editorial collage — left: full-length model exact likeness, top-right: full garment flat lay, bottom-right: macro fabric texture detail.",
      "setting": "Studio editorial — [BACKGROUND COLOR] warm stucco plaster wall, [LIGHTING DESCRIPTION]",
      "action": "Static three-panel collage — model story left, product anatomy right"
    },
    "style": {
      "primary": "editorial fashion collage, slow-fashion artisan brand, model plus product plus craft detail",
      "rendering_quality": "hyperrealistic, editorial print quality, ultra high resolution — macro detail panel at maximum resolution",
      "surface_textures": "Warm stucco plaster background. All garment fabric MATTE — exact texture preserved. Macro panel reveals fabric construction depth without adding any shimmer or reflectivity.",
      "lighting": "[LIGHTING DESCRIPTION]. Consistent across model and product panels. Macro panel: soft even light reveals fabric texture without creating specular highlight."
    },
    "technical": {
      "camera": {
        "focal_length": "50mm model panel, 85mm product flat lay, 100mm macro texture panel",
        "aperture": "f/4 model, f/8 product flat lay, f/16 macro",
        "depth_of_field": "moderate model, deep product flat lay, deep macro — everything in macro panel sharp",
        "angle": "eye level model, overhead product flat lay, straight-on macro"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Warm matte film tonality, very slight grain. NO specular highlights. NO fabric sheen. Macro panel: maximum texture detail, matte, zero reflection."
    },
    "materials": {
      "skin": "Fair warm-tone skin, natural undertone. Visible open pores. Fine peach fuzz. Natural mature skin — visible fine lines — DO NOT smooth or retouch. Zero airbrushing.",
      "fabric": "EXACT REPRODUCTION MANDATORY — [DESCRIBE GARMENT FABRIC DETAIL HERE] — Macro panel must show exact same fabric: preserve exact weave, pattern scale, texture depth. FORBIDDEN: shimmer, sparkle, glitter, lurex, metallic thread, satin sheen, iridescence, specular highlight in any panel.",
      "surfaces": "All panel backgrounds: [BACKGROUND COLOR HEX] warm matte stucco plaster. Separators: Verde Floresta (#273d29) 2px."
    },
    "composition": {
      "perspective": "Flat frontal all panels. Macro panel: straight-on close crop of fabric.",
      "framing": "1080x1350px 4:5. Left ~58% full height. Right two equal stacked panels.",
      "subject_placement": "Model full body left. Product flat lay top-right centered. Macro fabric texture bottom-right — tight crop on fabric detail, no background needed.",
      "safe_area": "64px padding all sides. Safe zone 952x1222px. No text or graphic elements.",
      "ui_elements": "None — pure photography collage."
    },
    "quality": {
      "include": [
        "exact model facial likeness preserved",
        "natural mature unretouched skin",
        "full model body visible head to feet",
        "exact garment flat lay reproduction top-right",
        "extreme fabric macro detail bottom-right matte",
        "all fabric zero shimmer zero metallic",
        "consistent background all panels",
        "Verde Floresta hairline separators",
        "macro panel reveals artisan craft detail",
        "editorial slow-fashion brand quality"
      ],
      "avoid": [
        "altering model face or skin",
        "shimmer or metallic on fabric in any panel including macro",
        "macro panel adding texture not present in real fabric",
        "redesigning garment in any panel",
        "inconsistent background or lighting",
        "text logo or overlay",
        "model cropped",
        "cold blue lighting"
      ],
      "reference_standard": "Exact reproduction from provided references. Toast UK macro detail editorial, Baserange craft detail collage standard."
    }
  }
}
```

---

## GRID C — 5 Painéis · Retrato + Produto / Modelo Faixa / 3 Produtos
> **Uso:** coleção com múltiplas peças, post completo de lançamento  
> **Fotos necessárias:** 1 retrato modelo + 1 modelo meia figura + 3 flat lays de peças

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Five-panel collage grid with 2px Verde Floresta (#273d29) hairline separators. Layout: top row divided into two equal panels; middle row full-width single panel (horizontal strip); bottom row divided into three equal panels. TOP-LEFT panel: model portrait close-up — head and shoulders, editorial expression, looking slightly off-camera, warm background. PRESERVE EXACT MODEL FACIAL LIKENESS: silver-gray layered mid-length hair, rectangular dark tortoiseshell glasses, gold stud earrings, fair warm-tone skin with natural aging — do not smooth, rejuvenate, alter face shape, change hair color or remove glasses. TOP-RIGHT panel: product flat lay of [MAIN GARMENT], exact reproduction, centered on matching background. MIDDLE FULL-WIDTH panel: model half-figure or torso shot wearing complete outfit — horizontal strip showing torso and hands, continuation of the model story, same lighting as portrait panel. BOTTOM-LEFT panel: product flat lay of [GARMENT 2]. BOTTOM-CENTER panel: macro fabric texture close-up of [FABRIC DETAIL — e.g. polka-dot tulle, lace detail, seam construction]. BOTTOM-RIGHT panel: product flat lay of [GARMENT 3]. GARMENT FIDELITY LOCK — reproduce every garment EXACTLY from reference. DO NOT redesign, reinterpret, alter silhouette, change fabric, add or remove details. [DESCRIBE EACH GARMENT: fabric, color, silhouette, construction details.] ALL FABRIC STRICTLY MATTE — zero shimmer, zero metallic thread, zero lurex, zero sparkle, zero glitter, zero iridescence, zero satin sheen. Background all panels: [CHOOSE BACKGROUND], warm matte stucco plaster. Lighting: [CHOOSE LIGHTING]. No text. No logo.",
      "subject": "Five-panel editorial collage — portrait top-left, product top-right, model strip middle full-width, three products bottom row.",
      "setting": "Studio editorial — [BACKGROUND COLOR] warm stucco plaster, [LIGHTING DESCRIPTION]",
      "action": "Static five-panel collage — model narrative through portrait and torso strip, products frame with product context"
    },
    "style": {
      "primary": "editorial fashion five-panel collage, slow-fashion artisan brand, multi-piece collection layout",
      "rendering_quality": "hyperrealistic, editorial print quality, ultra high resolution",
      "surface_textures": "Warm stucco plaster background all panels consistent. All garment fabric MATTE — exact textures preserved. Portrait: natural skin texture preserved.",
      "lighting": "[LIGHTING DESCRIPTION]. Identical quality across all 5 panels — same session feel, same color temperature, same direction."
    },
    "technical": {
      "camera": {
        "focal_length": "85mm portrait, 50mm middle strip, 85mm product panels, 100mm macro",
        "aperture": "f/2.8 portrait (slight bg soft), f/5.6 middle strip, f/8 products, f/16 macro",
        "depth_of_field": "shallow portrait, moderate strip, deep products, deep macro",
        "angle": "eye level portrait and strip, overhead or straight-on product flat lays, straight-on macro"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Warm matte film tonality, very slight grain. NO specular highlights on fabric. NO sheen. Consistent warm grade all 5 panels."
    },
    "materials": {
      "skin": "Fair warm-tone skin, natural undertone. Visible open pores forehead and cheekbones. Fine peach fuzz. Natural mature skin — visible fine lines — DO NOT smooth, rejuvenate or retouch. Zero airbrushing. Zero frequency separation.",
      "fabric": "EXACT REPRODUCTION MANDATORY FOR ALL GARMENTS — [DESCRIBE EACH GARMENT FABRIC DETAIL] — FORBIDDEN in all panels: shimmer, sparkle, glitter, lurex, metallic thread, satin sheen, iridescence, specular highlight.",
      "surfaces": "All panel backgrounds: [BACKGROUND COLOR HEX] warm matte stucco plaster consistent. Separators: Verde Floresta (#273d29) 2px hairline."
    },
    "composition": {
      "perspective": "Flat frontal all panels, no distortion",
      "framing": "1080x1350px 4:5. Top row: 2 equal panels. Middle: full-width horizontal strip. Bottom row: 3 equal panels.",
      "subject_placement": "Portrait top-left. Main product flat lay top-right. Model torso strip full-width middle. Products 2-3-4 fill bottom row left to right — macro center bottom.",
      "safe_area": "64px padding all sides. Safe zone 952x1222px. No text or graphic elements anywhere.",
      "ui_elements": "None — pure photography collage. No text, no logo, no price, no overlay."
    },
    "quality": {
      "include": [
        "exact model facial likeness portrait top-left",
        "natural mature unretouched skin portrait",
        "model torso strip consistent with portrait same session",
        "exact reproduction all garments from reference",
        "all fabric matte zero shimmer all panels",
        "macro center-bottom reveals artisan fabric detail matte",
        "consistent background color all 5 panels",
        "Verde Floresta hairline separators clean",
        "consistent light temperature all panels",
        "editorial multi-piece collection quality"
      ],
      "avoid": [
        "altering model face hair glasses or skin in any panel",
        "shimmer metallic lurex on any fabric in any panel",
        "redesigning reinterpreting any garment",
        "inconsistent background between panels",
        "mismatched lighting panels",
        "text logo watermark anywhere",
        "portrait cropped too tight — head and shoulders must show",
        "middle strip too narrow — must be a meaningful horizontal band",
        "cold or blue-toned lighting"
      ],
      "reference_standard": "Exact reproduction from provided reference photographs. Approved Carol Staggemeier 5-panel collage result. Kinfolk multi-panel editorial standard."
    }
  }
}
```

---

## GRID D — REF CHEK · Grade 3×3 Quente
> **Referência:** Chek (marca brasileira) — 9 painéis iguais, monocromático quente  
> **Uso:** quando há 4+ peças, criar impacto visual por repetição e escala  
> **Fotos necessárias:** 4 fotos das peças (flat lay ou detalhe)  
> **Clima:** impacto editorial, forte, monocromático

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Nine-panel 3x3 grid collage with 2px Verde Floresta (#273d29) hairline separators creating equal cells. All 9 panels share the same warm background color — monochromatic editorial system, high visual impact through repetition and scale variation. Panel distribution: [DESCRIBE CONTENT PER PANEL — e.g. top row: garment 1 full / garment 1 detail / garment 2 full; middle row: garment 2 detail / garment 3 full / garment 3 detail; bottom row: garment 4 full / garment 4 detail / extra detail or repeat]. GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in all 4 reference photographs. DO NOT redesign, reinterpret, alter silhouette, change proportions, add or remove any construction detail. [DESCRIBE EACH GARMENT IN DETAIL: fabric, color, silhouette, neckline, sleeves, hem, seams, waistband — every detail from reference.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero lurex, zero satin sheen, zero specular highlight on any fabric in any panel. Background all 9 panels: [BACKGROUND HEX — e.g. Areia Quente #c2b6a5], identical across all cells for monochromatic system. Lighting: [CHOOSE LIGHTING — e.g. L2 overhead diffuse: large overhead softbox, even uniform light, no beam]. No text. No logo.",
      "subject": "Nine equal panels 3x3 grid — 4 garments presented as full flat lays and detail crops, all on identical background, editorial repetition system.",
      "setting": "Studio flat lay — [BACKGROUND HEX] warm matte surface, consistent across all 9 cells",
      "action": "Static 3x3 grid — garments and details arranged for monochromatic visual impact"
    },
    "style": {
      "primary": "editorial fashion 3x3 grid, monochromatic system, high-impact repetition, slow-fashion brand",
      "rendering_quality": "hyperrealistic, editorial print quality, ultra high resolution",
      "surface_textures": "Identical warm matte background all 9 panels. All garment fabric MATTE — exact textures preserved. Zero reflectivity on any fabric surface.",
      "lighting": "[LIGHTING DESCRIPTION]. Identical color temperature and quality across all 9 cells — same overhead session feel."
    },
    "technical": {
      "camera": {
        "focal_length": "85mm all panels",
        "aperture": "f/8 all panels — deep focus, everything sharp",
        "depth_of_field": "deep all panels — flat lays fully sharp",
        "angle": "overhead straight-down all flat lay panels, straight-on for detail crops"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Clean matte editorial tonality. NO specular highlights on any fabric. NO shimmer. NO metallic sheen. Perfectly consistent exposure all 9 panels."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY for all 4 garments across all panels. [DESCRIBE EACH GARMENT FABRIC: weave, weight, texture, color — exactly as in reference photos.] FORBIDDEN on any fabric in any panel: shimmer, sparkle, glitter, lurex, metallic thread, satin sheen, iridescence, specular highlight.",
      "surfaces": "All 9 panel backgrounds: [BACKGROUND HEX] warm matte surface — no texture variation between panels. Separators: Verde Floresta (#273d29) 2px hairline."
    },
    "composition": {
      "perspective": "Overhead flat for lay panels, straight-on for detail crops",
      "framing": "1080x1350px 4:5. Nine equal cells in 3x3 grid — each cell ~360x450px. 2px hairline separators between all cells.",
      "subject_placement": "[DESCRIBE PANEL CONTENT: which garment or detail in each of the 9 cells, reading left to right, top to bottom]",
      "safe_area": "64px padding outer frame. Safe zone 952x1222px. No text or graphic elements.",
      "ui_elements": "None — pure photography flat lay grid. No text, no logo, no price tag."
    },
    "quality": {
      "include": [
        "9 equal panels identical background monochromatic system",
        "exact reproduction of all 4 garments from reference photos",
        "all fabric matte zero shimmer zero specular in all 9 cells",
        "consistent exposure and color temperature all panels",
        "Verde Floresta 2px hairline separators clean",
        "editorial high-impact repetition and scale variation",
        "deep focus all panels — flat lays fully sharp"
      ],
      "avoid": [
        "any shimmer sparkle lurex satin on any fabric in any panel",
        "redesigning or reinterpreting any garment",
        "background color variation between panels",
        "lighting inconsistency between cells",
        "text logo or overlay anywhere",
        "shallow depth of field in flat lay panels",
        "unequal panel sizes"
      ],
      "reference_standard": "Chek editorial 3x3 grid. Exact garment reproduction from 4 provided reference photographs."
    }
  }
}
```

---

## GRID E — REF MARK TÊXTIL · Hero Grande + Mix de Escalas
> **Referência:** Mark Têxtil — painel hero grande top + 2 painéis menores base  
> **Uso:** destacar 1 peça principal com contexto de detalhe  
> **Fotos necessárias:** 4 fotos das peças  
> **Clima:** editorial minimalista com hierarquia clara

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Asymmetric three-panel grid with 2px Verde Floresta (#273d29) hairline separators. TOP PANEL (full width, ~60% height): hero flat lay of the main hero garment [GARMENT 1], presented at large scale centered on background, showing complete garment from above. BOTTOM ROW (~40% height, divided into two equal panels side by side): bottom-left panel: flat lay of [GARMENT 2], smaller scale than hero; bottom-right panel: flat lay of [GARMENT 3] or macro detail of [GARMENT 1] fabric. Mix of scales creates editorial hierarchy — hero dominates, supporting pieces provide context. GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in all 4 reference photographs. DO NOT redesign, reinterpret, alter silhouette, change fabric weight, modify any construction detail. [DESCRIBE EACH GARMENT: fabric, color, silhouette, waistband, seams, hem, closures, all details from reference.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero lurex, zero satin sheen, zero specular highlight. Background all panels: [BACKGROUND HEX], warm matte stucco or linen surface. Lighting: [CHOOSE LIGHTING]. No text. No logo.",
      "subject": "Asymmetric 3-panel grid — hero full-width top, two supporting panels bottom. Clear editorial hierarchy through scale.",
      "setting": "Studio flat lay — [BACKGROUND HEX] warm matte surface",
      "action": "Static asymmetric grid — hero garment top at large scale, supporting pieces bottom smaller scale"
    },
    "style": {
      "primary": "editorial fashion asymmetric grid, hero hierarchy, slow-fashion minimal",
      "rendering_quality": "hyperrealistic, editorial print quality, ultra high resolution",
      "surface_textures": "Warm matte background consistent all panels. All garment fabric MATTE — exact textures from reference. Zero reflectivity.",
      "lighting": "[LIGHTING DESCRIPTION]. Consistent across all panels — same session, same direction."
    },
    "technical": {
      "camera": {
        "focal_length": "85mm hero panel, 85mm bottom panels",
        "aperture": "f/8 all panels",
        "depth_of_field": "deep all panels — flat lays fully sharp",
        "angle": "overhead straight-down all panels"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Warm matte film tonality. NO specular highlights. NO shimmer. NO fabric sheen. Consistent grade all panels."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY for all garments. [DESCRIBE EACH GARMENT FABRIC DETAIL from reference.] FORBIDDEN: shimmer, sparkle, lurex, metallic thread, satin sheen, specular highlight in any panel.",
      "surfaces": "All panels: [BACKGROUND HEX] warm matte surface. Separators: Verde Floresta (#273d29) 2px."
    },
    "composition": {
      "perspective": "Overhead straight-down all panels",
      "framing": "1080x1350px 4:5. Top hero panel full width ~60% height. Bottom row two equal panels ~40% height.",
      "subject_placement": "Hero garment centered in large top panel. Supporting garments/detail centered in each bottom panel.",
      "safe_area": "64px outer padding. Safe zone 952x1222px.",
      "ui_elements": "None — pure photography grid."
    },
    "quality": {
      "include": [
        "clear hero hierarchy — top panel dominates visually",
        "exact reproduction of all garments from reference",
        "all fabric matte zero shimmer all panels",
        "consistent background and lighting all panels",
        "Verde Floresta 2px separators clean",
        "editorial scale contrast between hero and supporting panels"
      ],
      "avoid": [
        "shimmer satin lurex on any fabric",
        "redesigning or reinterpreting any garment",
        "background inconsistency",
        "text logo overlay",
        "equal panel sizes — hero must be clearly dominant"
      ],
      "reference_standard": "Mark Têxtil hero grid. Exact garment reproduction from 4 provided reference photographs."
    }
  }
}
```

---

## GRID F — REF MADE ME · Assimétrico com Sobreposição
> **Referência:** Made Me — painéis assimétricos, sobreposição de peças, fundo escuro  
> **Uso:** look completo em composição editorial rica, peças sobrepostas  
> **Fotos necessárias:** 4 fotos das peças  
> **Clima:** editorial bold, fundo escuro, composição densa

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Asymmetric multi-panel collage — panels of varying sizes with 2px Verde Floresta (#273d29) hairline separators. LAYOUT: large dominant panel (~55% width, full height) on left showing [GARMENT 1] flat lay at commanding scale; right side split into three unequal panels — top-right tall panel (~40% height): [GARMENT 2] flat lay or draped; middle-right short horizontal strip (~20% height): [GARMENT 3] folded or detail crop; bottom-right panel (~40% height): [GARMENT 4] flat lay or macro detail. Garments can be arranged to overlap slightly within panels — layered styling suggestion. GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in all 4 reference photographs. DO NOT redesign, reinterpret, alter silhouette, change fabric weight, modify any construction detail. [DESCRIBE EACH GARMENT: fabric, color, silhouette, every visible construction detail from reference.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero lurex, zero satin sheen, zero specular highlight. Background: [BACKGROUND HEX — recommend dark: Verde Floresta #273d29 or Café Terroso #4c3529 for contrast], warm matte surface. Lighting: [CHOOSE LIGHTING]. No text. No logo.",
      "subject": "Asymmetric multi-panel collage — dominant left panel + 3 right panels of varying height. All 4 garments presented at different scales.",
      "setting": "Studio flat lay — [BACKGROUND HEX] dark warm matte surface",
      "action": "Static asymmetric collage — layered editorial fashion system, varying scales"
    },
    "style": {
      "primary": "editorial fashion asymmetric collage, bold scale contrast, slow-fashion artisan brand",
      "rendering_quality": "hyperrealistic, editorial print quality",
      "surface_textures": "Dark warm matte background. All garment fabric MATTE — exact textures, zero reflectivity, zero shimmer.",
      "lighting": "[LIGHTING DESCRIPTION]. Consistent across all panels."
    },
    "technical": {
      "camera": {
        "focal_length": "85mm all panels",
        "aperture": "f/8 all panels",
        "depth_of_field": "deep all panels",
        "angle": "overhead or straight-on depending on panel content"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Warm matte film tonality. NO specular highlights. NO shimmer. Consistent exposure all panels."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY for all 4 garments. [DESCRIBE EACH GARMENT FABRIC: texture, color, weight, construction details from reference.] FORBIDDEN: shimmer, sparkle, lurex, metallic thread, satin sheen, specular in any panel.",
      "surfaces": "All panels: [BACKGROUND HEX] dark warm matte. Separators: Verde Floresta (#273d29) 2px."
    },
    "composition": {
      "perspective": "Overhead or straight-on per panel",
      "framing": "1080x1350px 4:5. Left dominant panel ~55% width full height. Right side: 3 panels of unequal heights.",
      "subject_placement": "[DESCRIBE: garment 1 dominant left, garments 2/3/4 distributed right panels top to bottom]",
      "safe_area": "64px outer padding.",
      "ui_elements": "None."
    },
    "quality": {
      "include": [
        "asymmetric layout with strong visual hierarchy",
        "exact reproduction of all 4 garments",
        "all fabric matte zero shimmer",
        "consistent dark background all panels",
        "Verde Floresta 2px separators",
        "editorial scale contrast"
      ],
      "avoid": [
        "shimmer lurex satin on any fabric",
        "redesigning any garment",
        "equal panel sizes — asymmetry is the aesthetic",
        "text logo overlay",
        "background inconsistency"
      ],
      "reference_standard": "Made Me asymmetric editorial collage. Exact garment reproduction from 4 provided reference photographs."
    }
  }
}
```

---

## GRID G — REF ZARA 3×3 · Grade com Texto Central
> **Referência:** Zara — grid 3×3 com célula central reservada para texto editorial  
> **Uso:** campanha com mensagem de marca + 8 peças ou variações  
> **Fotos necessárias:** 4 fotos das peças (repetidas em variação ou detalhes)  
> **Clima:** editorial de campanha, mensagem + produto

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Nine-panel 3x3 grid with 2px Verde Floresta (#273d29) hairline separators. CENTER PANEL (cell 5 of 9, middle center): reserved as a graphic text panel — solid background [BACKGROUND HEX] with brand text element [TEXT CONTENT — e.g. 'VELUDO' in large Halant Bold, or 'INVERNO 2026' in editorial type treatment]. SURROUNDING 8 PANELS: flat lay photographs of the garments, detail crops, and fabric macro shots distributed around the center text panel. Reading order: panel 1 (top-left) through 9 (bottom-right), skipping panel 5 (center text). GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in all 4 reference photographs. DO NOT redesign, reinterpret, alter silhouette, change fabric, modify any construction detail. [DESCRIBE EACH GARMENT: fabric, color, silhouette, construction details from reference.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero lurex, zero satin sheen, zero specular highlight. Background all photo panels: [BACKGROUND HEX], consistent warm matte surface. Center text panel: same background, minimal typography. Lighting all photo panels: [CHOOSE LIGHTING]. No additional graphic elements in photo panels.",
      "subject": "3x3 grid with center text cell — 8 product/detail photographs surrounding 1 editorial text panel.",
      "setting": "Studio flat lay + typographic center panel — [BACKGROUND HEX] consistent",
      "action": "Static 3x3 editorial grid — product photography + brand message center cell"
    },
    "style": {
      "primary": "editorial fashion 3x3 campaign grid, center message, slow-fashion artisan brand",
      "rendering_quality": "hyperrealistic photography panels, clean typographic center panel",
      "surface_textures": "Consistent warm matte background all panels including center text. All garment fabric MATTE.",
      "lighting": "[LIGHTING DESCRIPTION]. Identical across all 8 photo panels."
    },
    "technical": {
      "camera": {
        "focal_length": "85mm all photo panels",
        "aperture": "f/8 all panels",
        "depth_of_field": "deep — flat lays fully sharp",
        "angle": "overhead all flat lay panels"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Matte editorial tonality. NO specular highlights. NO shimmer. Consistent exposure all 8 photo panels."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY for all garments in all 8 photo panels. [DESCRIBE EACH GARMENT FABRIC from reference.] FORBIDDEN: shimmer, lurex, satin sheen, specular highlight anywhere.",
      "surfaces": "All panels [BACKGROUND HEX] warm matte. Center panel: same background, only typography. Separators: Verde Floresta (#273d29) 2px."
    },
    "composition": {
      "perspective": "Overhead for flat lay panels, graphic for center text panel",
      "framing": "1080x1350px 4:5. Nine equal cells 3x3. Center cell (5) is text-only graphic panel.",
      "subject_placement": "[DESCRIBE: garments and details distributed in cells 1-4 and 6-9. Center cell 5: text only.]",
      "safe_area": "64px outer padding.",
      "ui_elements": "Center panel only: minimal editorial typography — [TEXT AND FONT SPECIFICATION]."
    },
    "quality": {
      "include": [
        "center panel as clean typographic editorial element",
        "8 surrounding panels consistent background and lighting",
        "exact reproduction of all garments from reference",
        "all fabric matte zero shimmer all photo panels",
        "consistent exposure all panels",
        "Verde Floresta 2px separators"
      ],
      "avoid": [
        "text or graphic elements in the 8 photo panels",
        "shimmer satin lurex on any fabric",
        "redesigning any garment",
        "background inconsistency between panels",
        "center panel typography in photo panels"
      ],
      "reference_standard": "Zara 3x3 campaign grid with center text. Exact garment reproduction from 4 provided reference photographs."
    }
  }
}
```

---

## GRID H — REF TIMELESS · Headline + Faixa + Hero
> **Referência:** Timeless Classic Pieces — headline topo + faixa de miniaturas + hero base  
> **Uso:** campanha de lançamento com texto + preview + peça destaque  
> **Fotos necessárias:** 4 fotos das peças  
> **Clima:** editorial de campanha estruturado, mensagem forte + produto

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Horizontal-band layout with 2px Verde Floresta (#273d29) hairline separators. THREE HORIZONTAL ZONES: TOP ZONE (~25% height, full width): typographic/graphic editorial header band — solid background [BACKGROUND HEX] with headline text [HEADLINE — e.g. 'VELUDO' or editorial copy] and optional sub-label. MIDDLE ZONE (~20% height, full width): horizontal strip divided into 4 equal mini-panels showing miniature flat lays of all 4 garments side by side — a preview strip of the collection. BOTTOM ZONE (~55% height, full width): single hero flat lay of the main garment [HERO GARMENT] at large commanding scale, centered. GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in all 4 reference photographs. DO NOT redesign, reinterpret, alter silhouette, change fabric, add or remove any construction detail. [DESCRIBE EACH GARMENT: fabric, color, silhouette, all details from reference.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero lurex, zero satin sheen, zero specular highlight. Background all photo zones: [BACKGROUND HEX], consistent matte surface. Lighting photo zones: [CHOOSE LIGHTING]. No text in photo zones.",
      "subject": "Three horizontal band layout — editorial headline top, 4-garment mini strip middle, hero flat lay bottom.",
      "setting": "Studio flat lay — [BACKGROUND HEX] warm matte surface, typographic top band",
      "action": "Static horizontal editorial — text header + preview strip + hero product"
    },
    "style": {
      "primary": "editorial fashion horizontal band layout, campaign structure, slow-fashion artisan brand",
      "rendering_quality": "hyperrealistic flat lay, clean typographic band",
      "surface_textures": "Consistent matte background. All garment fabric MATTE — zero reflectivity.",
      "lighting": "[LIGHTING DESCRIPTION]. Consistent across middle and bottom photo zones."
    },
    "technical": {
      "camera": {
        "focal_length": "85mm all photo panels",
        "aperture": "f/8 all panels",
        "depth_of_field": "deep — everything sharp",
        "angle": "overhead straight-down all flat lay zones"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Matte editorial tonality. NO specular highlights. NO shimmer. Consistent across photo zones."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY for all 4 garments. [DESCRIBE EACH GARMENT FABRIC: texture, color, construction from reference.] FORBIDDEN: shimmer, sparkle, lurex, satin sheen, specular in any zone.",
      "surfaces": "All photo zones: [BACKGROUND HEX] warm matte. Top headline band: [BACKGROUND HEX or contrasting color]. Separators: Verde Floresta (#273d29) 2px."
    },
    "composition": {
      "perspective": "Overhead for photo zones, graphic for headline band",
      "framing": "1080x1350px 4:5. Top ~25% typographic. Middle ~20% 4-equal mini panels. Bottom ~55% hero full width.",
      "subject_placement": "Headline and sub-label top band. 4 garment mini flat lays in middle strip equally distributed. Hero garment centered bottom zone.",
      "safe_area": "64px outer padding.",
      "ui_elements": "Top band: headline + sub-label only. Photo zones: no text no overlay."
    },
    "quality": {
      "include": [
        "clear three-zone hierarchy — text / preview strip / hero",
        "4 garments all visible in mini preview strip",
        "hero garment at dominant scale bottom",
        "exact reproduction all garments from reference",
        "all fabric matte zero shimmer",
        "consistent background all photo zones",
        "Verde Floresta 2px separators"
      ],
      "avoid": [
        "shimmer lurex satin on any fabric",
        "redesigning any garment",
        "text in photo zones",
        "background inconsistency",
        "hero zone too small — must dominate bottom"
      ],
      "reference_standard": "Timeless Classic Pieces horizontal campaign layout. Exact garment reproduction from 4 provided reference photographs."
    }
  }
}
```

---

## GRID I — REF LATTELIER · Painéis Flutuantes em Fundo Sólido
> **Referência:** Lattelier — fotos como painéis soltos flutuando em fundo sólido, sem grade rígida  
> **Uso:** editorial sofisticado, peças com espaço de respiro, fundo de cor única  
> **Fotos necessárias:** 4 fotos das peças  
> **Clima:** editorial sofisticado, arejado, composição orgânica

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Floating panel composition — no rigid grid, no separator lines. Solid color background [BACKGROUND HEX] fills the entire frame. Product photographs float as individual panels with generous spacing between them — each panel has visible margins of background showing around it, creating breathing room. LAYOUT: 2 to 4 floating panels of varying sizes arranged organically within the frame — not aligned to a strict grid. Largest panel [GARMENT 1] positioned [POSITION — e.g. top-left, dominant], second panel [GARMENT 2] positioned [POSITION], third panel [GARMENT 3] or detail at [POSITION], optional fourth panel or macro at [POSITION]. Each panel shows a clean flat lay photograph with a thin subtle drop shadow (shadow: rgba(0,0,0,0.08), 0 4px 12px) to lift it from background. GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in all 4 reference photographs. DO NOT redesign, reinterpret, alter silhouette, change fabric, add or remove any construction detail. [DESCRIBE EACH GARMENT: fabric, color, silhouette, all construction details from reference.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero lurex, zero satin sheen, zero specular highlight. Lighting: [CHOOSE LIGHTING]. No text. No logo.",
      "subject": "Floating panel composition — 2 to 4 flat lay product panels floating organically on solid background, generous spacing.",
      "setting": "Solid background [BACKGROUND HEX] entire frame — no walls, no surface texture needed, pure color field",
      "action": "Static floating panel layout — products breathe within solid color field"
    },
    "style": {
      "primary": "editorial fashion floating panel composition, sophisticated airy layout, slow-fashion artisan brand",
      "rendering_quality": "hyperrealistic flat lays, clean panel edges",
      "surface_textures": "Solid color field background — no texture. Product panels: exact fabric textures from reference, MATTE, zero reflectivity.",
      "lighting": "[LIGHTING DESCRIPTION]. Soft consistent light across all floating panels."
    },
    "technical": {
      "camera": {
        "focal_length": "85mm all panels",
        "aperture": "f/8",
        "depth_of_field": "deep — flat lays fully sharp",
        "angle": "overhead slight angle or straight-down"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Matte editorial tonality. NO specular highlights on fabric. NO shimmer. Clean panel edges with subtle shadow only."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY for all garments. [DESCRIBE EACH GARMENT FABRIC from reference.] FORBIDDEN: shimmer, lurex, satin sheen, specular highlight anywhere.",
      "surfaces": "Solid background: [BACKGROUND HEX] flat color field, no texture. Panel edges: clean with subtle drop shadow only."
    },
    "composition": {
      "perspective": "Overhead or slight angle for flat lay panels",
      "framing": "1080x1350px 4:5. No rigid grid. Panels float with generous spacing — minimum 48px between panels, 64px from outer edge.",
      "subject_placement": "[DESCRIBE ORGANIC LAYOUT: position and approximate size of each floating panel, e.g. 'Garment 1 large panel upper-left, Garment 2 medium panel center-right, Garment 3 small panel lower-left']",
      "safe_area": "64px outer padding from all edges.",
      "ui_elements": "None — pure photography floating composition."
    },
    "quality": {
      "include": [
        "floating panel layout — no rigid grid, organic arrangement",
        "generous breathing space between panels",
        "solid color background, no texture",
        "subtle panel lift shadow only — no hard drop shadow",
        "exact reproduction of all garments from reference",
        "all fabric matte zero shimmer",
        "consistent lighting across all floating panels",
        "sophisticated airy editorial quality"
      ],
      "avoid": [
        "rigid grid alignment",
        "heavy drop shadows or dark shadows on panels",
        "shimmer satin lurex on any fabric",
        "redesigning any garment",
        "text logo overlay",
        "panels touching outer frame edge — always breathing room",
        "background texture — must be solid color field only"
      ],
      "reference_standard": "Lattelier floating panel editorial. Exact garment reproduction from 4 provided reference photographs."
    }
  }
}
```

---

## GRID J — REF EVERYDAY ICONS · Bloco de Tipo Gigante + Produto
> **Referência:** Everyday Icons — tipografia hero gigante ocupa 60%+ do frame, produto em segundo plano  
> **Uso:** campanha de conceito, palavra ou nome da coleção como elemento visual dominante  
> **Fotos necessárias:** 4 fotos das peças  
> **Clima:** editorial de conceito, tipografia hero, marca forte

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Giant typographic hero composition — editorial concept layout where a single large-scale word or phrase dominates 60-70% of the frame as the primary visual element. TYPOGRAPHIC HERO: the word [WORD — e.g. 'VELUDO' or 'INVERNO'] rendered in Halant Bold at 200-240px, color [TYPE COLOR — e.g. #4c3529 on light background or #e5ded3 on dark background], positioned to bleed or nearly bleed at edges, filling the center-upper area of the frame. PRODUCT LAYER: 1 or 2 flat lay photographs of garments placed in the lower portion of the frame, below or integrated with the giant text — smaller scale (~30-35% of frame height), positioned to complement the type rather than compete with it. GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in all 4 reference photographs. DO NOT redesign, reinterpret, alter silhouette, change fabric, add or remove any construction detail. [DESCRIBE EACH GARMENT: fabric, color, silhouette, all construction details.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero lurex, zero satin sheen, zero specular highlight. Background: [BACKGROUND HEX — must contrast with type color], solid warm matte. Lighting: [CHOOSE LIGHTING]. Sub-label optional: Nunito Sans Regular, 18px, all caps, letter-spacing 2px below giant type.",
      "subject": "Giant typographic concept word dominates frame — 1 or 2 garment flat lays positioned in lower frame as secondary element.",
      "setting": "Graphic editorial — [BACKGROUND HEX] solid background, typographic hero + product photography",
      "action": "Static typographic concept layout — word as hero, products as supporting element"
    },
    "style": {
      "primary": "editorial fashion concept typography layout, type as hero, slow-fashion artisan brand",
      "rendering_quality": "hyperrealistic product photography, clean editorial typography",
      "surface_textures": "Solid warm matte background. Product fabric MATTE — exact textures, zero reflectivity.",
      "lighting": "[LIGHTING DESCRIPTION]. Consistent across product flat lay panels."
    },
    "technical": {
      "camera": {
        "focal_length": "85mm product panels",
        "aperture": "f/8",
        "depth_of_field": "deep — products fully sharp",
        "angle": "overhead product flat lays"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Matte editorial. NO specular highlights on fabric. Type: clean sharp rendering, no blur."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY for all garments in product zone. [DESCRIBE GARMENT FABRIC from reference.] FORBIDDEN: shimmer, lurex, satin sheen, specular.",
      "surfaces": "Solid background [BACKGROUND HEX]. Giant type: [TYPE COLOR]. No separator lines."
    },
    "composition": {
      "perspective": "Graphic for type zone, overhead for product zone",
      "framing": "1080x1350px 4:5. Giant word fills ~60-70% of frame vertically. Products occupy lower 30-35%. No rigid panel separators.",
      "subject_placement": "Giant word centered horizontally, positioned upper-center to center. Products below, centered or offset.",
      "safe_area": "64px outer padding — giant type may approach but not cross outer safe area.",
      "ui_elements": "Giant word (Halant Bold, 200-240px) + optional sub-label (Nunito Sans, 18px, all caps) only."
    },
    "quality": {
      "include": [
        "giant typographic word clearly dominates frame visually",
        "type at 200-240px scale — high visual impact",
        "exact reproduction of garments from reference",
        "all fabric matte zero shimmer",
        "strong contrast between type color and background",
        "clean editorial composition — type + product hierarchy clear"
      ],
      "avoid": [
        "type too small — must dominate",
        "products competing visually with the type",
        "shimmer lurex satin on fabric",
        "redesigning any garment",
        "background texture — must be solid",
        "more than 2 garments — product zone should be simple"
      ],
      "reference_standard": "Everyday Icons typographic hero editorial. Exact garment reproduction from 4 provided reference photographs."
    }
  }
}
```

---

## GRID K — REF ZARA NEWSLETTER · Coluna Hero + Escalas Variadas
> **Referência:** Zara Newsletter — coluna esquerda hero grande + coluna direita com variação de escala  
> **Uso:** editorial de produto com ritmo visual por variação de escala entre colunas  
> **Fotos necessárias:** 4 fotos das peças  
> **Clima:** editorial de campanha com ritmo, sofisticado

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion Instagram feed post (1080x1350px, 4:5 ratio). Vertical two-column asymmetric layout with 2px Verde Floresta (#273d29) hairline separator between columns. LEFT COLUMN (~55% width, full height): single hero flat lay at commanding scale — [HERO GARMENT] centered in left column, occupying most of the column height, large breathing room around garment. RIGHT COLUMN (~45% width, full height): divided into 3 panels of varying heights creating editorial rhythm — top-right panel (~35% height): [GARMENT 2] flat lay, small to medium scale with generous margin; middle-right strip (~15% height): [GARMENT 3 DETAIL or TEXTURE] extremely tight crop for scale contrast; bottom-right panel (~50% height): [GARMENT 4 or GARMENT 2 DETAIL] medium scale. Scale variation in right column is intentional — creates visual rhythm against hero left. GARMENT FIDELITY LOCK — reproduce every garment EXACTLY as shown in all 4 reference photographs. DO NOT redesign, reinterpret, alter silhouette, change fabric, add or remove any construction detail. [DESCRIBE EACH GARMENT: fabric, color, silhouette, waistband, seams, hem, closures, all details from reference.] ALL FABRIC IS STRICTLY MATTE — zero shimmer, zero lurex, zero satin sheen, zero specular highlight. Background all panels: [BACKGROUND HEX], consistent matte surface. Lighting: [CHOOSE LIGHTING]. No text. No logo.",
      "subject": "Two-column asymmetric layout — hero flat lay dominant left column, 3-panel scale variation right column.",
      "setting": "Studio flat lay — [BACKGROUND HEX] warm matte surface consistent all panels",
      "action": "Static two-column editorial — hero + varied scale rhythm"
    },
    "style": {
      "primary": "editorial fashion two-column asymmetric, scale rhythm, slow-fashion artisan brand",
      "rendering_quality": "hyperrealistic, editorial print quality",
      "surface_textures": "Consistent matte background. All garment fabric MATTE — exact textures, zero reflectivity.",
      "lighting": "[LIGHTING DESCRIPTION]. Identical quality across all panels — same session."
    },
    "technical": {
      "camera": {
        "focal_length": "85mm hero left, 85-100mm right panels",
        "aperture": "f/8 all panels",
        "depth_of_field": "deep all panels — flat lays fully sharp",
        "angle": "overhead straight-down all panels"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 ratio",
      "rendering": "Warm matte film tonality. NO specular highlights. NO shimmer. Consistent exposure all panels."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY for all 4 garments. [DESCRIBE EACH GARMENT FABRIC: texture, color, weight, construction from reference.] FORBIDDEN: shimmer, sparkle, lurex, metallic thread, satin sheen, iridescence, specular highlight in any panel.",
      "surfaces": "All panels: [BACKGROUND HEX] warm matte surface. Separator: Verde Floresta (#273d29) 2px vertical between columns."
    },
    "composition": {
      "perspective": "Overhead straight-down all panels",
      "framing": "1080x1350px 4:5. Left column ~55% width full height. Right column ~45% width, 3 panels of varying heights.",
      "subject_placement": "Hero garment centered in left column with generous breathing room. Right column: top panel medium scale, middle panel tight crop detail, bottom panel medium to large scale.",
      "safe_area": "64px outer padding. 2px separator between columns.",
      "ui_elements": "None — pure photography collage."
    },
    "quality": {
      "include": [
        "hero garment clearly dominant in left column",
        "intentional scale variation in right column panels",
        "exact reproduction of all 4 garments from reference",
        "all fabric matte zero shimmer all panels",
        "consistent background and lighting all panels",
        "Verde Floresta 2px vertical separator clean",
        "editorial rhythm through scale contrast"
      ],
      "avoid": [
        "shimmer satin lurex on any fabric",
        "redesigning any garment",
        "equal panel heights in right column — variation is the aesthetic",
        "left column hero losing breathing room — generous margins",
        "text logo overlay",
        "background inconsistency"
      ],
      "reference_standard": "Zara Newsletter two-column scale editorial. Exact garment reproduction from 4 provided reference photographs."
    }
  }
}
```

---

## Variações de Fundo × Luz — Combinações Recomendadas

| Roupa | Fundo | Luz recomendada | Clima |
|---|---|---|---|
| Preto / Navy | Areia Quente `#c2b6a5` | L1 Janela Dramática | Editorial forte |
| Preto / Navy | Linho `#e5ded3` | L3 Lateral Suave | Clean artesanal |
| Café / Argila | Linho `#e5ded3` | L4 Ambiente Quente | Intimista |
| Branco / Creme | Verde Floresta `#273d29` | L2 Overhead Difusa | Contraste editorial |
| Branco / Creme | Café Terroso `#4c3529` | L1 Janela Dramática | Dramático quente |
| Salva / Verde suave | Café Terroso `#4c3529` | L3 Lateral Suave | Terra artesanal |

---

## Referências visuais aprovadas

| Grid | Estrutura | Referência |
|---|---|---|
| A | Modelo esquerda + 2 produtos direita | Kinfolk / Lemaire lookbook |
| B | Modelo esquerda + produto + macro textura | Toast UK / Baserange |
| C | Retrato + faixa modelo + 5 painéis | Carol Staggemeier (aprovado em produção) |
| D | 3×3 monocromático | Chek (Brasil) |
| E | Hero grande + 2 menores base | Mark Têxtil |
| F | Assimétrico dominante + 3 variados | Made Me |
| G | 3×3 com célula central de texto | Zara |
| H | Headline + faixa de 4 + hero base | Timeless Classic Pieces |
| I | Painéis flutuantes em fundo sólido | Lattelier |
| J | Tipo hero gigante + produto base | Everyday Icons |
| K | Coluna hero + 3 painéis escala variada | Zara Newsletter |

**Padrão de produção flat lay:**
- Fundo navy/veludo: Areia Quente `#c2b6a5` ou Linho `#e5ded3`
- Luz: L1 Janela Lateral Dramática
- Separador: Verde Floresta `#273d29` 2px
- Fotos de referência: **sempre 4 fotos das peças**
