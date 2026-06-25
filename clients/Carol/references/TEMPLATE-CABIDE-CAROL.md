# Prompt Templates — Produto no Cabide
**Cliente:** Carol Staggemeier  
**Formato fixo:** 1080x1350px · 4:5 Instagram Feed  
**Criado em:** 2026-06-18

---

## Como usar

```
1. Copie o JSON do template adequado
2. Localize ═══ GARMENT DESCRIPTION ═══
3. Substitua [DESCRIBE THE EXACT GARMENT HERE] pela descrição da peça + foto de referência
4. Substitua [PIECE NAME] pelo nome da peça
5. Substitua [PRICE] pelo valor
6. Cole no gerador junto com a foto da peça
```

---

## Guia de escolha

| Template | Peça ideal | Luz | Fundo | Texto |
|---|---|---|---|---|
| T01 | Blusa, top, peça curta | Lateral suave | Linho claro | Centro baixo |
| T02 | Vestido, peça longa | Overhead uniforme | Linho claro | Lateral direita |
| T03 | Destaque, lançamento | Janela dramática | Areia Quente | Arco curvo |
| T04 | Calça, saia, peça neutra | Ambiente quente | Caiado | Lateral esquerda |

---

## Regras fixas em todos os templates

- **Formato:** 1080x1350px · 4:5 · Instagram Feed
- **Fidelidade da peça:** reprodução exata da referência — sem reinterpretação, sem redesign
- **Tecido:** MATTE obrigatório — zero shimmer, zero lurex, zero brilho, zero metálico
- **Tipografia nome:** Halant Bold 700 · Café Terroso `#4c3529`
- **Tipografia preço:** Nunito Sans Bold 700 · Verde Floresta `#273d29`
- **Separador:** linha fina · Salva `#9db4a1`
- **Cabide:** madeira natural clara (T01, T02, T03, T04) — salvo quando especificado preto

---

## TEMPLATE 01 — Lateral Suave · Linho · Texto Centralizado
> **Uso:** blusas, tops, peças curtas

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion product Instagram feed post (1080x1350px, 4:5 ratio). A single garment hanging on a natural light wooden hanger mounted on a warm textured plaster wall. ═══ GARMENT DESCRIPTION — FILL IN FOR EACH USE ═══ [DESCRIBE THE EXACT GARMENT HERE: fabric type, color, silhouette, neckline, sleeves, seams, hem, closures, all construction details. Example: black sheer matte tulle blouse with vertical gathered stripe columns, round neckline with center-front tie, balloon sleeves with elasticated cuffs, horizontal yoke seam, boxy relaxed hem.] ═══ GARMENT FIDELITY LOCK — DO NOT REMOVE ═══ Reproduce the exact garment from provided reference photograph without any reinterpretation, alteration, redesign or creative substitution. Preserve every construction detail exactly as shown. FABRIC IS MATTE — zero shimmer, zero metallic thread, zero lurex, zero sparkle, zero glitter, zero iridescence, zero satin sheen, zero specular highlight on any fabric area. All fabric absorbs light, does not reflect it. DO NOT simplify, smooth or redesign any texture, seam, silhouette or construction detail. ═══ SCENE ═══ Wall: rough warm stucco plaster, Linho warm off-white (#e5ded3), thick irregular trowel marks and plaster depth, artisan tactile quality. Lighting: large 150cm strip softbox from camera-left with full heavy diffusion panel, 4200K warm — creates a barely-perceptible warm gradient from fractionally brighter left to fractionally softer right, gradient is so gentle it reads as near-even. NO visible beam. NO geometric shadow. NO hard light. Wall texture gently enhanced by soft raking. Garment has barely visible soft shadow on right side. Text block centered horizontally on hanger vertical axis, lower center below garment: 'PIECE NAME' Halant Bold 700 ~36px Café Terroso (#4c3529) center-aligned; thin horizontal rule 120px Salva (#9db4a1) 1.5px centered; 'R$ PRICE' Nunito Sans Bold 700 ~34px Verde Floresta (#273d29) center-aligned. No logo. No arrow. No additional elements.",
      "subject": "Single garment exact reproduction — matte fabric, zero shimmer — natural wooden hanger, warm Linho stucco plaster wall, soft left diffused gradient, centered bold text below.",
      "setting": "Studio — warm stucco plaster Linho (#e5ded3), large diffused left strip softbox 4200K, no beam no hard shadow",
      "action": "Static editorial product composition — garment fidelity and matte fabric are non-negotiable"
    },
    "style": {
      "primary": "editorial product photography, slow-fashion artisan brand, diffused soft side gradient lighting",
      "rendering_quality": "hyperrealistic, editorial print quality, ultra high resolution",
      "surface_textures": "Rough stucco plaster wall: thick trowel marks enhanced by gentle side raking, warm Linho tone. Garment fabric: MATTE — all textures preserved without any reflective quality. Natural wood hanger: light grain, warm tone.",
      "lighting": "Large 150cm strip softbox camera-left, full heavy diffusion, 4200K warm. Gradient barely perceptible left to right. NO beam. NO hot spot. NO hard shadow geometry. Fabric stays completely matte under this light — side light reveals construction detail, not reflectivity."
    },
    "technical": {
      "camera": {
        "focal_length": "50mm",
        "aperture": "f/6.3",
        "depth_of_field": "deep — full garment and wall both fully sharp",
        "angle": "straight on, zero tilt, eye level"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 Instagram feed ratio",
      "rendering": "Warm matte film tonality, very slight grain. NO specular highlights on fabric. NO fabric sheen. NO metallic rendering on any thread. Even warm exposure."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY — [REPEAT KEY GARMENT FABRIC DETAILS HERE from scene description above] — FORBIDDEN on any fabric area: shimmer, sparkle, glitter, lurex, metallic thread, satin sheen, iridescence, specular highlight, gloss finish.",
      "surfaces": "Wall: rough stucco plaster, thick trowel texture, Linho warm off-white (#e5ded3), matte, gentle left gradient. Hanger: light natural wood, fine warm grain, metal hook."
    },
    "composition": {
      "perspective": "Flat frontal, no distortion, centered vertical axis",
      "framing": "1080x1350px 4:5. Garment centered. Generous negative space above hanger and below garment for text. Full garment visible.",
      "subject_placement": "Hanger hook upper third center. Garment body center frame. Text block lower third center-aligned on hanger vertical axis.",
      "safe_area": "64px padding all sides. Safe zone 952x1222px inside 1080x1350px. Text minimum 100px from bottom edge.",
      "ui_elements": "Lower center, center-aligned on hanger axis: '[PIECE NAME]' — Halant Bold 700, ~36px, Café Terroso #4c3529, center-aligned. Below: horizontal rule 120px, Salva #9db4a1, 1.5px stroke, centered. Below rule: 'R$ [PRICE]' — Nunito Sans Bold 700, ~34px, Verde Floresta #273d29, center-aligned."
    },
    "quality": {
      "include": [
        "exact garment construction preserved from reference",
        "all fabric details matte zero shimmer",
        "barely perceptible left-to-right warm gradient no beam",
        "rough stucco Linho wall texture gently enhanced",
        "full garment visible head to hem",
        "centered bold text block on hanger axis",
        "Halant Bold 700 name prominent",
        "Nunito Sans Bold price prominent",
        "editorial slow-fashion artisan restraint",
        "warm matte film tonality"
      ],
      "avoid": [
        "any shimmer sparkle glitter lurex metallic sheen on any fabric",
        "specular highlights anywhere on garment",
        "visible window light beam or geometric shadow patch",
        "dramatic side lighting contrast",
        "garment redesign or reinterpretation",
        "text misaligned from center axis",
        "thin light weight typography",
        "logo watermark decorative extras",
        "cold blue-toned lighting",
        "vignette or heavy post-processing"
      ],
      "reference_standard": "Exact garment reproduction of provided reference photograph. Toast UK hanger editorial, Baserange matte fabric standard, Lemaire product photography."
    }
  }
}
```

---

## TEMPLATE 02 — Overhead Difusa · Linho · Texto Lateral Direita
> **Uso:** vestidos, peças longas, calças

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion product Instagram feed post (1080x1350px, 4:5 ratio). A single garment hanging on a natural light wooden hanger mounted on a warm textured plaster wall. ═══ GARMENT DESCRIPTION — FILL IN FOR EACH USE ═══ [DESCRIBE THE EXACT GARMENT HERE: fabric type, color, silhouette, neckline, sleeves, length, seams, hem, closures, all construction details. Example: black sheer matte tulle maxi dress with vertical gathered stripe body, diamond-grid mesh sleeves, round scoop neckline, drop-waist seam, tiered ruffle hem, full ankle length, black slip underdress visible underneath.] ═══ GARMENT FIDELITY LOCK — DO NOT REMOVE ═══ Reproduce the exact garment from provided reference photograph without any reinterpretation, alteration, redesign or creative substitution. Preserve every construction detail exactly as shown. FABRIC IS MATTE — zero shimmer, zero metallic thread, zero lurex, zero sparkle, zero glitter, zero iridescence, zero satin sheen, zero specular highlight on any fabric area. All fabric absorbs light, does not reflect it. DO NOT simplify, smooth or redesign any texture, seam, silhouette or construction detail. ═══ SCENE ═══ Wall: rough warm stucco plaster, Linho warm off-white (#e5ded3), thick irregular trowel marks and plaster depth, artisan tactile quality. Lighting: large 150cm overhead softbox directly above, 4000K warm-neutral, full diffusion panel — even uniform illumination across entire wall surface, no hot spots, no gradient, no beam, no geometric shadow. Wall reads uniformly warm textured from edge to edge. Garment has very soft natural shadow directly below. Garment is positioned center-left to create right-side negative space. Text block on the RIGHT side in the negative space, vertically centered at mid-height of garment: 'PIECE NAME' Halant Bold 700 ~28px Café Terroso (#4c3529) left-aligned; thin horizontal rule 80px Salva (#9db4a1) 1.5px; 'R$ PRICE' Nunito Sans Bold 700 ~26px Verde Floresta (#273d29) left-aligned. Text does not overlap garment. No logo. No arrow.",
      "subject": "Single garment exact reproduction — matte fabric, zero shimmer — natural wooden hanger, Linho stucco wall, even overhead studio light, right-side text block mid-height.",
      "setting": "Studio — warm stucco plaster Linho (#e5ded3), large overhead softbox 4000K, no directional light no beam",
      "action": "Static editorial product composition — even studio light, full garment length visible, right-side text"
    },
    "style": {
      "primary": "editorial product photography, slow-fashion artisan brand, clean overhead studio lighting",
      "rendering_quality": "hyperrealistic, editorial print quality, ultra high resolution",
      "surface_textures": "Rough stucco plaster wall: thick trowel marks uniformly lit revealing full texture depth. Garment fabric: MATTE — all construction textures preserved, zero reflectivity. Natural wood hanger: light warm grain.",
      "lighting": "Large overhead softbox 150cm, 4000K warm-neutral, full diffusion. Even coverage entire wall — no hot spots, no gradients, no beams, no directional effect. All garment construction detail readable under flat even light. Fabric remains completely matte."
    },
    "technical": {
      "camera": {
        "focal_length": "50mm",
        "aperture": "f/8",
        "depth_of_field": "deep — full garment length and wall both sharp",
        "angle": "straight on, zero tilt, eye level"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 Instagram feed ratio",
      "rendering": "Clean warm matte tonality, very slight grain. NO specular highlights. NO sheen. NO metallic look. Even exposure full frame."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY — [REPEAT KEY GARMENT FABRIC DETAILS HERE] — FORBIDDEN: shimmer, sparkle, glitter, lurex, metallic thread, satin sheen, iridescence, specular highlight.",
      "surfaces": "Wall: rough stucco plaster, Linho (#e5ded3), thick trowel texture, matte, evenly lit. Hanger: light natural wood, warm grain."
    },
    "composition": {
      "perspective": "Flat frontal, no distortion, garment center-left",
      "framing": "1080x1350px 4:5. Garment center-left. Full length visible. Right negative space for text.",
      "subject_placement": "Hanger hook upper center-left. Full garment length visible. Text block right side mid-height, left-aligned in negative space.",
      "safe_area": "64px padding all sides. Safe zone 952x1222px. Text minimum 64px from right edge, does not overlap garment.",
      "ui_elements": "Right side mid-height, left-aligned: '[PIECE NAME]' — Halant Bold 700, ~28px, Café Terroso #4c3529. Below: rule 80px, Salva #9db4a1, 1.5px. Below: 'R$ [PRICE]' — Nunito Sans Bold 700, ~26px, Verde Floresta #273d29."
    },
    "quality": {
      "include": [
        "even warm overhead studio light zero directional effect",
        "uniform wall illumination no hot spots",
        "full garment length visible head to hem",
        "exact garment construction preserved from reference",
        "all fabric matte zero shimmer",
        "right-side text block in negative space",
        "Halant Bold and Nunito Bold prominent",
        "clean editorial studio product quality",
        "warm Linho wall tone",
        "4:5 breathing room above and below garment"
      ],
      "avoid": [
        "any shimmer sparkle glitter lurex metallic on fabric",
        "directional light beam or gradient",
        "garment cropped at any point",
        "text overlapping garment",
        "cold flat lighting",
        "logo watermark",
        "thin typography",
        "vignette"
      ],
      "reference_standard": "Exact garment reproduction. COS full-length hanger editorial, Arket dress product photography, even studio overhead standard."
    }
  }
}
```

---

## TEMPLATE 03 — Janela Dramática · Areia Quente · Arco Curvo
> **Uso:** peças destaque, lançamentos, hero post

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion product Instagram feed post (1080x1350px, 4:5 ratio). A single garment hanging on a natural light wooden hanger mounted on a warm textured plaster wall. ═══ GARMENT DESCRIPTION — FILL IN FOR EACH USE ═══ [DESCRIBE THE EXACT GARMENT HERE: fabric type, color, silhouette, neckline, sleeves, seams, hem, closures, all construction details.] ═══ GARMENT FIDELITY LOCK — DO NOT REMOVE ═══ Reproduce the exact garment from provided reference photograph without any reinterpretation, alteration, redesign or creative substitution. Preserve every construction detail exactly as shown. FABRIC IS MATTE — zero shimmer, zero metallic thread, zero lurex, zero sparkle, zero glitter, zero iridescence, zero satin sheen, zero specular highlight on any fabric area. Fabric absorbs light, does not reflect it. DO NOT simplify, smooth or redesign any texture, seam, silhouette or construction detail. ═══ SCENE ═══ Wall: rough warm stucco plaster, Areia Quente warm beige (#c2b6a5), thick irregular trowel marks and plaster depth, artisan tactile quality. Lighting: strong warm golden window light entering from upper left, 4200K, creating a dramatic visible warm beam and geometric shadow pattern on wall — warm bright patch on left side, cooler shadow area on right. Same quality as a late-afternoon window with direct sun. Natural soft shadow of garment cast to right on wall. Generous negative space above hanger. Curved arc text 'PIECE NAME' arcing gently above the hanger in the upper negative space — Halant Bold 700 ~32px Café Terroso (#4c3529), gentle upward arc, text does not touch garment. Immediately below curved text, grouped close: thin arrow '→' Salva (#9db4a1) fine stroke + 'R$ PRICE' Nunito Sans Bold 700 ~28px Verde Floresta (#273d29). Price grouped near name. No logo.",
      "subject": "Single garment exact reproduction — matte fabric, zero shimmer — natural wooden hanger, Areia Quente stucco wall, dramatic golden window beam from upper left, curved name text above hanger.",
      "setting": "Atelier wall — warm stucco plaster Areia Quente (#c2b6a5), strong golden window light from upper left, dramatic warm beam and shadow geometry",
      "action": "Static editorial product composition — dramatic window light, curved text, garment fidelity mandatory"
    },
    "style": {
      "primary": "editorial product photography, slow-fashion artisan brand, dramatic golden window light",
      "rendering_quality": "hyperrealistic, editorial print quality, ultra high resolution",
      "surface_textures": "Rough stucco plaster Areia Quente: thick trowel marks dramatically revealed by strong side light. Garment fabric: MATTE — all textures preserved without reflectivity. Natural wood hanger: warm grain lit by golden light.",
      "lighting": "Strong warm golden window from upper left, 4200K, dramatic — visible warm beam, geometric shadow on wall. Garment lit by warm golden side light — fabric stays completely matte despite strong light, no specular highlight develops on fabric surface."
    },
    "technical": {
      "camera": {
        "focal_length": "50mm",
        "aperture": "f/5.6",
        "depth_of_field": "deep — garment and wall both fully sharp",
        "angle": "straight on, zero tilt, eye level"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 Instagram feed ratio",
      "rendering": "Warm golden film tonality, very slight grain. NO specular highlights on fabric despite strong light. NO sheen. Warm beam on wall is the hero — not fabric shine."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY — [REPEAT KEY GARMENT FABRIC DETAILS HERE] — FORBIDDEN: shimmer, sparkle, glitter, lurex, metallic thread, satin sheen, iridescence, specular highlight. Strong window light must NOT create shimmer on fabric.",
      "surfaces": "Wall: rough stucco plaster, Areia Quente (#c2b6a5), thick trowel texture, warm golden-lit left, softer right. Hanger: light natural wood, warm golden-lit grain."
    },
    "composition": {
      "perspective": "Flat frontal, centered, generous negative space above for curved text",
      "framing": "1080x1350px 4:5. Garment centered. Generous negative space above hanger for arc text. Full garment visible.",
      "subject_placement": "Hanger hook center upper-third. Garment body center. Curved arc text in upper negative space above hanger. Price grouped below arc text.",
      "safe_area": "64px padding all sides. Safe zone 952x1222px. Arc text minimum 80px from top edge.",
      "ui_elements": "Upper negative space above hanger: '[PIECE NAME]' — Halant Bold 700, ~32px, Café Terroso #4c3529, gentle upward arc above hanger. Grouped below arc: '→' Salva #9db4a1 fine arrow + 'R$ [PRICE]' Nunito Sans Bold 700, ~28px, Verde Floresta #273d29."
    },
    "quality": {
      "include": [
        "dramatic golden window beam on wall from upper left",
        "geometric warm light patch and shadow on wall",
        "exact garment construction preserved from reference",
        "all fabric matte despite strong window light",
        "zero shimmer zero specular on fabric",
        "curved arc text above hanger in negative space",
        "Halant Bold arc name prominent readable",
        "price grouped near name with arrow",
        "warm golden editorial atmosphere",
        "Areia Quente wall tone"
      ],
      "avoid": [
        "any shimmer sparkle glitter lurex metallic on fabric",
        "specular highlights on fabric from strong light",
        "window light creating fabric sheen",
        "garment redesign or reinterpretation",
        "text touching or overlapping garment",
        "cold or even flat lighting",
        "logo watermark",
        "thin typography",
        "vignette"
      ],
      "reference_standard": "Exact garment reproduction. Carol Staggemeier approved window light result. Baserange hanger wall editorial, warm plaster artisan standard."
    }
  }
}
```

---

## TEMPLATE 04 — Ambiente Quente · Linho Caiado · Texto Lateral Esquerda
> **Uso:** calças, saias, peças neutras

```json
{
  "prompt": {
    "scene": {
      "description": "Editorial fashion product Instagram feed post (1080x1350px, 4:5 ratio). A single garment hanging on a natural light wooden hanger mounted on a warm textured plaster wall. ═══ GARMENT DESCRIPTION — FILL IN FOR EACH USE ═══ [DESCRIBE THE EXACT GARMENT HERE: fabric type, color, silhouette, waistband, legs or skirt shape, length, seams, hem, pockets, closures, all construction details.] ═══ GARMENT FIDELITY LOCK — DO NOT REMOVE ═══ Reproduce the exact garment from provided reference photograph without any reinterpretation, alteration, redesign or creative substitution. Preserve every construction detail exactly as shown. FABRIC IS MATTE — zero shimmer, zero metallic thread, zero lurex, zero sparkle, zero glitter, zero iridescence, zero satin sheen, zero specular highlight on any fabric area. Fabric absorbs light, does not reflect it. DO NOT simplify, smooth or redesign any texture, seam, silhouette or construction detail. ═══ SCENE ═══ Wall: aged lime-washed plaster, layered brush strokes in different directions visible on surface, warm off-white tone between Linho (#e5ded3) and Areia Quente (#c2b6a5), artisan caiação finish. Lighting: warm ambient interior light, 3800K warm incandescent tone, fills space from all directions equally — no directional source, no beam, no gradient, no hard shadow. Like a warm interior room where light wraps around everything. Wall glows uniformly warm. All garment construction details readable. Garment positioned slightly right of center to create left-side negative space. Text block on the LEFT side in negative space, lower third of frame, right-aligned: 'PIECE NAME' Halant Bold 700 ~28px Café Terroso (#4c3529) right-aligned; thin horizontal rule 80px Salva (#9db4a1) right-aligned; 'R$ PRICE' Nunito Sans Bold 700 ~26px Verde Floresta (#273d29) right-aligned. Text does not overlap garment. No logo.",
      "subject": "Single garment exact reproduction — matte fabric, zero shimmer — natural wooden hanger, aged lime-washed plaster wall, warm ambient 360° light, left-side text block lower third.",
      "setting": "Interior studio — aged lime-washed plaster wall warm off-white, warm incandescent ambient 3800K from all directions, no directional source",
      "action": "Static editorial product — warm ambient envelope light, matte fabric, full garment visible, left text"
    },
    "style": {
      "primary": "editorial product photography, slow-fashion artisan brand, warm ambient interior light",
      "rendering_quality": "hyperrealistic, editorial print quality, ultra high resolution",
      "surface_textures": "Aged lime-washed plaster: layered brush stroke texture visible, warm off-white tone, uniformly lit revealing surface character. Garment fabric: MATTE — all construction textures preserved, zero reflectivity in ambient light. Natural wood hanger: warm grain.",
      "lighting": "Warm ambient interior light 3800K, fills space equally from all directions. No directional source, no beam, no gradient, no hard shadow anywhere. Think: warm gallery room, incandescent ambient. Garment has no directional shadow. Fabric stays completely matte in ambient light."
    },
    "technical": {
      "camera": {
        "focal_length": "50mm",
        "aperture": "f/8",
        "depth_of_field": "deep — full garment and wall both sharp",
        "angle": "straight on, zero tilt, eye level"
      },
      "resolution": "ultra high definition, 1080x1350px, 4:5 Instagram feed ratio",
      "rendering": "Warm amber-neutral matte tonality, very slight grain, 3800K color temperature. NO specular highlights. NO sheen. NO metallic. Warm tonal unity full frame."
    },
    "materials": {
      "fabric": "EXACT REPRODUCTION MANDATORY — [REPEAT KEY GARMENT FABRIC DETAILS HERE] — FORBIDDEN: shimmer, sparkle, glitter, lurex, metallic thread, satin sheen, iridescence, specular highlight.",
      "surfaces": "Wall: aged lime-washed plaster, layered brush strokes, warm off-white Linho-Areia tone, matte, uniformly warm-lit. Hanger: light natural wood, warm grain."
    },
    "composition": {
      "perspective": "Flat frontal, garment center-right, left negative space for text",
      "framing": "1080x1350px 4:5. Garment slightly right of center. Full length visible. Left negative space lower third for text.",
      "subject_placement": "Hanger hook upper center-right. Full garment visible. Text block left side lower third, right-aligned to inner margin.",
      "safe_area": "64px padding all sides. Safe zone 952x1222px. Text minimum 64px from left edge, does not overlap garment.",
      "ui_elements": "Left side lower third, right-aligned: '[PIECE NAME]' — Halant Bold 700, ~28px, Café Terroso #4c3529. Below: rule 80px, Salva #9db4a1, 1.5px, right-aligned. Below: 'R$ [PRICE]' — Nunito Sans Bold 700, ~26px, Verde Floresta #273d29, right-aligned."
    },
    "quality": {
      "include": [
        "warm ambient envelope light no directional source",
        "warm incandescent 3800K interior atmosphere",
        "aged lime-washed plaster brush stroke texture",
        "exact garment construction preserved from reference",
        "all fabric matte zero shimmer in ambient light",
        "full garment visible head to hem",
        "left-side text block lower third right-aligned",
        "Halant Bold and Nunito Bold prominent",
        "warm tonal unity full frame",
        "editorial slow-fashion intimacy"
      ],
      "avoid": [
        "any shimmer sparkle glitter lurex metallic on fabric",
        "any directional light beam or hot spot",
        "any wall gradient or shadow geometry",
        "garment redesign or reinterpretation",
        "cold or blue-toned light",
        "garment cropped",
        "text overlapping garment",
        "logo watermark",
        "vignette or heavy post-processing"
      ],
      "reference_standard": "Exact garment reproduction. The Row interior editorial, Baserange warm ambient hanger, Lemaire gallery light photography."
    }
  }
}
```
