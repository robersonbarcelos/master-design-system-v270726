# Visual System — Aurum Lingerie

> Sistema de produção visual: templates aprovados, JSONs, regras de prompt, especificações técnicas.

---

## 01 | Especificações Técnicas

| Formato | Dimensões | Aspect Ratio |
|---------|-----------|--------------|
| Stories Instagram | 1080×1920px | 9:16 |
| Feed retrato | 1080×1350px | 4:5 |
| Feed quadrado | 1080×1080px | 1:1 |

---

## 02 | Templates Validados

### Template 02 — Fade Full Bleed ✅ (Stories principal)

**Estrutura:**
- Foto full bleed ocupa 100% do fundo
- Fade escuro gradiente sobe da base 40-50% do frame
- Zona escura: texto flutuante com hierarquia completa
- Rodapé: solid black bar `#0A0A0A` height 12% — logo area

**Hierarquia de texto (de cima para baixo na zona escura):**
1. Âncora do evento — rosa `#f5d9e8`, pequena
2. Headline — serif bold italic branco, grande
3. Subheadline — rosa `#f5d9e8`
4. Linha dourada `#B8860B` 1px
5. CTA — dourado `#B8860B`, pequeno

**JSON template → ver `references/json-templates.md` → Stories 9:16 Template 02**

---

### Template 04 — Split Editorial ✅ (Feed principal)

**Estrutura:**
- Frame dividido verticalmente ao meio
- Metade esquerda: foto full bleed (preserve produto)
- Linha dourada `#B8860B` 1.5px no centro
- Metade direita: fundo cream `#FAF7F2` sólido + tipografia centralizada
- Rodapé: solid black bar `#0A0A0A` height 10% — logo area, full width

**Hierarquia tipográfica (direita, vertically centered):**
1. Âncora — dourado `#B8860B`, pequeno
2. Headline — serif italic escuro `#0A0A0A`, grande
3. Subheadline — Montserrat Light `#0A0A0A`
4. CTA — dourado `#B8860B`

**JSON template → ver `references/json-templates.md` → Feed 4:5 Template 04**

---

## 03 | Outros Templates

| Template | Quando usar |
|----------|-------------|
| 01 Editorial Frame | Posts institucionais, fundo sólido com moldura dourada |
| 03 Hero + Insert | Stories com dois produtos (principal + insert menor) |
| 05 Collage Oval | Carrosseis com múltiplos produtos — oval frames |
| 06 Polaroid Stack | Flat lay, múltiplos produtos, estilo editorial suave |
| 07 Repeat Typography | Capa de carrossel com texto repetido como textura |
| 08 Grid 3/4 Fotos | Grid editorial de coleção completa |

---

## 04 | Regras de Prompt

### Estrutura padrão
- Prompt fluido e contínuo — sem blocos estruturais no início
- Placeholders: `[LOGO]`, `[MODELO]`, `[ÂNCORA]`, `[HEADLINE PRINCIPAL]`, `[SUBHEADLINE]`, `[CTA]`
- NUNCA usar `@img1` / `@img2`

### Produto
- NUNCA descrever características do produto no prompt
- SEMPRE instruir: `preserve exactly all product details, fabric, colors and model appearance from reference, do not alter or recreate anything`

### Tipografia
- Incluir textos no prompt: `text reads exactly '[texto]'`
- ⚠️ Sempre revisar textos no Canva após geração — Freepik comete erros

### Logo area (obrigatório)
```
solid black bar #0A0A0A height 12% of total frame, completely clean and empty, containing only [LOGO] centered — no other elements inside this bar
```

### Negative prompt padrão
```
altered product, recreated fabric, changed colors, modified model, bokeh, blur, soft focus,
CGI, cartoon, overprocessed, watermark, text touching edges, text inside logo bar, harsh flash
```

---

## 05 | Workflow de Produção

1. Propor 3 ideias de visual (contexto, template, hierarquia)
2. Aguardar aprovação do usuário
3. Propor 3 variações de headline/copy
4. Aguardar aprovação das headlines
5. Gerar JSONs apenas após aprovação
6. ⚠️ Lembrar usuário de revisar textos no Canva após geração
