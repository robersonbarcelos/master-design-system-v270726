# Visual System — [NOME DO CLIENTE]

> Sistema de produção visual: grupos visuais, JSONs, regras de prompt, specs técnicas.
> ⚠️ WHITE LABEL — substitua com dados reais do cliente.

---

## 01 | Especificações Técnicas

| Formato | Dimensões | Uso |
|---------|-----------|-----|
| Feed quadrado | 1080×1080px | Instagram padrão |
| Feed retrato | 1080×1350px | Instagram 4:5 |
| Stories | 1080×1920px | Stories 9:16 |
| [Outro] | | |

---

## 02 | Grupos Visuais

> Definir 4-8 grupos visuais — cada um com quando usar, layout, paleta e mood.
> Referência: ver como foi feito para NovaDAX, Mercurius ou Michele Fara.

### GRUPO 1 — [Nome / Editoria]
- **Quando usar:** [contexto — pilar, nível de funil]
- **Layout:** [descrição do layout — split, full bleed, grid, etc]
- **Paleta:** [fundo + texto + acento]
- **Mood:** [palavra-chave — austero, caloroso, urgente, etc]
- **JSON:** ver `references/json-templates.md` → Categoria X

### GRUPO 2 — [Nome / Editoria]
- **Quando usar:**
- **Layout:**
- **Paleta:**
- **Mood:**

---

## 03 | Workflow de Produção Visual (Qualquer Formato)

> Aplicar para TODO conteúdo visual gerado por IA — feed, stories, reel cover, slide de carrossel.
> ⚠️ O passo de ÂNGULOS é obrigatório. Nunca gerar imagem sem aprovação de ângulo antes.

### Fase 1 — Concept Intake
Entender o objetivo antes de qualquer proposta:
- Qual é o pilar e nível de funil deste post?
- Qual emoção ou ação o visual precisa provocar?
- Existe referência visual aprovada pelo cliente?
- Quais dados ou elementos reais do cliente entram na imagem?

### Fase 2 — ÂNGULOS VISUAIS (obrigatório — aguardar aprovação)

> Propor sempre 3 ângulos. Nunca avançar sem aprovação explícita do usuário.

Para cada ângulo, especificar:
- **Composição** — como os elementos estão dispostos no frame
- **Ângulo de câmera** — frontal, 3/4, overhead, worm's eye, por trás, etc.
- **Iluminação** — golden hour, estúdio, rim light, contraluz, neon, natural
- **Paleta** — cores dominantes + acento (hex codes do cliente)
- **Mood** — uma palavra: austero / caloroso / urgente / íntimo / técnico / editorial

```
ÂNGULO A — [nome descritivo]
Composição: [...]
Câmera: [...]
Iluminação: [...]
Paleta: [...]
Mood: [...]

ÂNGULO B — [nome descritivo]
...

ÂNGULO C — [nome descritivo]
...
```

### Fase 3 — Reference Analysis *(se houver referência visual)*

Se o cliente forneceu um print de referência, fazer Visual Teardown antes de construir o prompt:
- **Layout & grid** — disposição dos elementos
- **Tipografia** — família, peso, hierarquia
- **Paleta** — hex codes se legíveis, ou descrição precisa
- **Densidade** — minimal / médio / denso
- **Mood** — uma frase

### Fase 4 — Prompt Construction (para o ângulo aprovado)

Construir o JSON rico com as 7 seções (ver Seção 04 abaixo).
Regras de visual direction:
- Descrever como cinematógrafo, não como copywriter
- Uma cena → um ambiente → um sentimento — sem metáforas engenhosas
- Sempre indicar onde o texto/headline vive na frame (espaço negativo)
- Nomear câmera real quando aplicável: "Sony A7R IV", "Canon EOS R5", "iPhone 16 Pro Max"
- Nomear publicação como âncora de estilo: "Vogue editorial", "National Geographic", "Kinfolk"

### Fase 5 — Prompt Optimization
Antes de gerar: revisar se o prompt é reproduzível — outro prompt idêntico deve produzir resultado similar.
Após gerar: revisar área de texto em Canva (nunca confiar em texto gerado pela IA).

---

## 04 | Regras de Prompt

### SEMPRE incluir
- [Regra 1 — ex: "Hex codes explícitos da paleta"]
- [Regra 2 — ex: "Logo area reservada com área limpa"]
- [Regra 3 — ex: "Instrução de NO watermark, NO handle"]

### NUNCA incluir
- [Proibição 1 — ex: "Fundo branco ou claro"]
- [Proibição 2 — ex: "Texto na área reservada para logo"]
- [Proibição 3]

### Negative prompt padrão
```
[Cole aqui o negative prompt padrão deste cliente]
```

### JSON template padrão (nested — 7 seções)

> Substituiu o JSON flat. Mais reproduzível, mais específico, mais consistente.
> `quality.include` = SEMPRE incluir | `quality.avoid` = NUNCA incluir | `quality.reference_standard` = âncora de publicação

```json
{
  "prompt": {
    "scene": {
      "description": "[descrição completa da cena: sujeito, ambiente, ação, elementos de UI se houver]",
      "subject": "[sujeito principal com detalhes específicos — textura, expressão, postura]",
      "setting": "[ambiente preciso — não 'escritório', mas 'mesa de carvalho escuro junto à janela ao golden hour']",
      "action": "[estático / em movimento / gestual — especificar]"
    },
    "style": {
      "primary": "[estilo editorial + mood — ex: 'dark premium product photography, cinematic']",
      "rendering_quality": "[fotorrealismo / ilustração / misto + nível de acabamento]",
      "surface_textures": "[texturas de materiais-chave: pele, tecido, metal, vidro]",
      "lighting": "[setup de luz: fonte, direção, temperatura, sombras, glow]"
    },
    "technical": {
      "camera": {
        "focal_length": "[ex: 85mm]",
        "aperture": "[ex: f/2.8]",
        "depth_of_field": "[raso / profundo / médio — descrever o que fica nítido]",
        "angle": "[frontal / 3/4 / overhead / worm's eye / por trás / etc.]"
      },
      "resolution": "[ultra high definition, 2K, print-quality text rendering]",
      "rendering": "[acabamento: commercial photography, editorial, raw, etc.]",
      "physics_accuracy": "[sombras, reflexos, materiais — o que precisa ser realista]"
    },
    "materials": {
      "surfaces": "[materiais dos elementos principais: gloss, matte, translúcido, etc.]"
    },
    "composition": {
      "perspective": "[como o frame está organizado: centralizado, regra dos terços, split, full bleed]",
      "framing": "[onde cada zona vive: headline no terço superior, sujeito centralizado, etc.]",
      "subject_placement": "[% do frame que o sujeito ocupa, posição, zona limpa para texto]",
      "ui_elements": "[logo area, badges, handles, textos fixos — posição e especificação]"
    },
    "quality": {
      "include": [
        "[elemento crítico 1 que precisa aparecer]",
        "[elemento crítico 2]",
        "[textura, detalhe ou acabamento obrigatório]",
        "[área limpa para logo/texto]"
      ],
      "avoid": [
        "[elemento proibido 1]",
        "[elemento proibido 2]",
        "watermark, handle, username",
        "text overlay gerado pela IA"
      ],
      "reference_standard": "[publicação ou estilo como âncora — ex: 'Vogue Brasil editorial', 'Kinfolk food photography', 'Wallpaper* design feature']"
    }
  },
  "negative_prompt": "[negative prompt padrão do cliente]",
  "aspect_ratio": "[9:16 / 4:5 / 1:1]",
  "reference_images": {
    "slot_1": "[se usar image-to-image: instrução de lock/adjust]",
    "slot_2": "[logo slot se aplicável]"
  }
}
```

---

## 05 | Elementos Visuais da Marca

> Elementos recorrentes que identificam visualmente a marca

| Elemento | Descrição | Regra de uso |
|----------|-----------|--------------|
| [Elemento 1] | [O que é] | [Como usar — com moderação, sempre presente, etc] |
| [Elemento 2] | | |
| [Elemento 3] | | |
