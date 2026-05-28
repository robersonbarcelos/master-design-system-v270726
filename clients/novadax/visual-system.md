# Visual System — NovaDAX

> Sistema visual: grupos, JSON padrão, regras de prompt, especificações técnicas.

---

## 01 | Fluxo de Produção Visual

1. Propor **3 ideias visuais em texto** — conceito, composição, paleta, tipografia
2. **Aguardar aprovação** do usuário
3. Gerar **JSON completo** apenas para as ideias aprovadas

---

## 02 | Os 6 Grupos Visuais

### GRUPO 1 — CENA CINEMATOGRÁFICA
Fotografia editorial de ambiente real — pregão, sala de servidores, escritório institucional, estrada, aeroporto. Ângulo dramático. Iluminação com contraste quente-frio. Personagem opcional. Profundidade de campo média. Headline em faixa escura na base ou área limpa no topo.
**Quando usar:** posts institucionais, market news com contexto de mercado, analogias com ambiente físico.

### GRUPO 2 — CONCEITUAL/SURREAL
Composição criada — objetos estilizados, elementos flutuantes, wireframes, cenários impossíveis. Perspectiva isométrica ou frontal. Fundo dark com elementos luminosos. Conceito visual que conta a história sem texto.
**Quando usar:** posts de conceito técnico, analogias visuais, comparativos.

### GRUPO 3 — RETRATO EDITORIAL
Pessoa real ou gerada em contexto de mercado — trader, executivo, investidor. Iluminação dramática com reflexo de tela. Expressão neutra ou concentrada. Fundo dark com dados de mercado desfocados.
**Quando usar:** posts de comunidade, campanha com persona, conteúdo próximo do varejo.

### GRUPO 4 — DADO EM DESTAQUE
Número ou dado como protagonista visual — tipografia extra-large dominando o frame. Elementos gráficos simples ao redor. Fundo dark limpo. Bokeh suave.
**Quando usar:** posts com dado de impacto, market news com número relevante, institucional com métrica.

### GRUPO 5 — CLOSE EXTREMO + REFLEXO
Macro fotografia de objeto com superfície reflexiva. O reflexo carrega o elemento cripto (símbolo Bitcoin, interface, dado). Profundidade de campo rasa. Contraste quente-frio na iluminação.
**Quando usar:** posts de analogia (envelope, vinil, lacre), bastidores, conteúdo que conecta passado e futuro.

### GRUPO 6 — TIPOGRAFIA INTEGRADA
Composição 100% tipográfica. Zero foto ou ícone. Texto em camadas de tamanho e peso diferentes. Hierarquia visual criada só pela tipografia. Fundo dark puro.
**Quando usar:** posts com dado impactante, listas comparativas, progressões históricas.

---

## 03 | JSON Padrão NovaDAX

```json
{
  "prompt": "Vertical 4:5 Instagram post. BACKGROUND: dark navy #0D1B2A. CENTER: [elemento principal — moeda cripto / gráfico / pessoa / ícone / dado]. TYPOGRAPHY: HEADLINE (large bold sans-serif, #00C896 OR #FFFFFF): '[texto]'. SUBHEADLINE (medium, #FFFFFF): '[texto]'. CTA isolated last line: '[call to action]'. FOOTER: NovaDAX logo top-left. Color accent: neon green #00C896. Tech-finance aesthetic, clean, authoritative. Ultra sharp, high contrast.",
  "negative_prompt": "blurry, low contrast, cluttered, cartoonish, handwritten font, serif font, gold tones, warm colors as dominant palette, overprocessed, CGI plastic, watermark, extra logos",
  "aspect_ratio": "4:5",
  "style": "tech finance editorial, dark background, neon green accent, bold typography, clean layout, photorealistic"
}
```

---

## 04 | Negative Prompt Padrão

```
blurry, low contrast, cluttered, cartoonish, handwritten font, serif font, gold tones, warm colors, overprocessed, CGI plastic, watermark, extra logos, soft focus
```

---

## 05 | Regras de Prompt

- Fundo dark `#0D1B2A` como padrão — exceto post educativo (fundo claro `#F4F6F9`)
- Verde `#00C896` como cor de destaque obrigatória
- Tipografia bold sans-serif — nunca serif, nunca handwritten
- Elementos visuais aprovados: coins cripto, gráficos candlestick, telas de app, ícones tech
- Conteúdo cultural/meme: estilo mais raw, elementos do meme mantidos
- Logo NovaDAX sempre no topo esquerdo ou rodapé
- Safe zone Stories: 250px topo e base completamente livres
- Contraste quente-frio como camada de luz adicional (amber `#FF8C00` + teal `#00B4D8`)
