# Visual System — ESENCA MKT e COMUNICAÇÃO

> Paleta e estilo visual confirmados via slides reais (carrossel Michael Jackson). Logo ainda pendente em SVG.

---

## 01 | FLUXO DE PRODUÇÃO VISUAL

Sempre seguir esta ordem — nunca gerar JSON sem aprovação:

1. Propor **3 ideias visuais em texto** — conceito, composição, paleta, tipografia
2. **Aguardar aprovação** do usuário
3. Gerar **JSON completo** apenas para as ideias aprovadas

---

## 02 | ESPECIFICAÇÕES TÉCNICAS

### Instagram

| Formato | Dimensões | Proporção | Uso |
|---|---|---|---|
| Feed Carrossel ★ | **1080 × 1350 px** | 4:5 | ESENCA EM CAMPO, WEB3 para Marcas |
| Feed Quadrado | 1080 × 1080 px | 1:1 | Alternativa / Meme |
| Stories | 1080 × 1920 px | 9:16 | Safe zone: 250px topo e base |
| Reels thumbnail | 1080 × 1920 px | 9:16 | Meme, Gestão em Crise curto |

### LinkedIn

| Formato | Dimensões | Proporção | Uso |
|---|---|---|---|
| Post Quadrado ★ | **1200 × 1200 px** | 1:1 | Posts institucionais, Nossa Visão |
| Carrossel PDF ★ | **1080 × 1080 px** por slide | 1:1 | ESENCA EM CAMPO versão LI |

> JPG para fotos/bastidores. PNG para artes com texto/logo.

---

## 03 | GRUPOS VISUAIS

**GRUPO 1 — RESULTADO EM NÚMERO**
Número grande em tipografia bold como protagonista absoluto. Fundo limpo (escuro ou branco). Logo da Esenca + logo do cliente em rodapé. Texto secundário explica o contexto em uma linha.
Quando usar: ESENCA EM CAMPO (slide de resultado), LinkedIn de case.

**GRUPO 2 — EQUIPE EM CAMPO**
Foto real da equipe em evento, conferência ou bastidor. Overlay com cor primária em opacidade baixa. Texto sobreposto em bold. Clima: ao vivo, dinâmico, presente.
Quando usar: Posts de eventos, Equipe em Foco, bastidores.

**GRUPO 3 — EDUCATIVO ESTRUTURADO**
Layout de carrossel com hierarquia clara: título no slide 1, conteúdo explicativo nos slides do meio, CTA no final. Fundo consistente ao longo de todos os slides. Ícones minimalistas se necessário.
Quando usar: WEB3 para Marcas, LATAM Cripto, Como Trabalhamos.

**GRUPO 4 — COMPARAÇÃO VISUAL**
Dois quadros side-by-side ou sequência antes/depois. Contraste visual entre os dois estados. Funciona bem para Meme da Semana e para WEB3 para Marcas (PR tradicional vs PR cripto).
Quando usar: Meme da Semana, comparações educativas.

**GRUPO 5 — TEXTO EDITORIAL**
Tipografia como único elemento visual. Fundo sólido (escuro ou branco). Hierarquia de tamanho: título enorme, subtítulo médio, detalhe pequeno. Sem foto, sem ícone — a força é na palavra.
Quando usar: Nossa Visão LinkedIn, citações, posts de posicionamento.

**GRUPO 6 — DADO + CONTEXTO**
Dado principal em destaque (número, porcentagem, nome de cliente). Linha de contexto abaixo. Elemento visual sutil que reforça o tema (cripto, blockchain, LatAm). Logo no canto.
Quando usar: Slides de resultado ESENCA EM CAMPO, LinkedIn de prova social.

---

## 04 | JSON PADRÃO

```json
{
  "prompt": "4:5 Instagram post. BACKGROUND: deep near-black #0A0A14. TOP-LEFT: ESENCA logo (apostrophe symbol in lime green #7AB648 + horizontal line + ESENCA wordmark in white bold sans-serif). CENTER: large extra-bold condensed headline in lime green #B5E040, all caps, dominant. Secondary text in white below, smaller weight. PHOTO: real editorial photography with purple overlay #5B2090 at 60% opacity, integrated into composition. HIGH CONTRAST, no gradients, no decorative icons, no soft glow. Agency editorial style, dark, impactful, professional.",
  "negative_prompt": "white background, light background, generic stock photo, smiling office people, purple-pink-blue AI gradient, soft glow, watermark, cartoonish, handwritten font, serif, warm tones, emojis, decorative icons, cluttered",
  "aspect_ratio": "4:5",
  "style": "dark editorial agency, near-black background, lime green headline, purple photo overlay, bold condensed typography, high contrast, institutional"
}
```

---

## 05 | REGRAS DE PROMPT

- **Fundo:** sempre escuro — #0A0A14. Nunca branco ou claro como padrão de feed
- **Cor de destaque:** verde-lima #B5E040 — headlines, números, palavras de impacto
- **Overlay em fotos:** roxo #5B2090 em 50-70% de opacidade — unifica o visual
- **Tipografia:** extra-bold condensed sans (caps) para headline | bold regular para corpo | branco
- **Logo:** sempre canto superior esquerdo — símbolo verde + linha + wordmark branco
- **Fotos:** reais sempre que possível — equipe, eventos, bastidores. Evitar stock genérico.
- **Para posts de análise de mercado (tipo MJ):** imagem do contexto com overlay roxo + headline verde-lima de interpretação
- **Para posts de resultado:** número enorme em verde-lima dominando o frame
- **Para Reels/vídeo:** estética escura, cortes dinâmicos, legenda com dado no frame

---

## ⚠️ Pendências

- [ ] Logo em SVG para incluir nos prompts com precisão
- [ ] Família tipográfica exata confirmada (Bebas Neue ou outra)
