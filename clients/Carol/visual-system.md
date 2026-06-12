# Visual System — Carol Staggemeier

last_updated: 2026-06-10

> Sistema de produção visual: grupos editoriais, JSON padrão, regras de prompt, especificações técnicas.
> PALETA: usar SEMPRE as cores do GUM oficial (#273d29, #4c3529, #786c5c, #9db4a1, #c2b6a5, #e5ded3)
> O Brand Bible tem paleta diferente — ignorar para produção visual.

---

## 01 | FLUXO DE PRODUÇÃO VISUAL

Sempre seguir esta ordem — nunca gerar JSON sem aprovação:

1. Propor **3 ideias visuais em texto** — conceito, composição, paleta, tipografia
2. **Aguardar aprovação** do usuário
3. Gerar **JSON completo** apenas para as ideias aprovadas

---

## 02 | ESPECIFICAÇÕES TÉCNICAS

### Instagram

| Formato | Dimensões | Proporção | Obs |
|---------|-----------|-----------|-----|
| Feed Retrato ★ | **1080 × 1350 px** | 4:5 | Formato principal |
| Feed Quadrado | 1080 × 1080 px | 1:1 | Alternativa |
| Carrossel | 1080 × 1350 px | 4:5 | Todos os slides iguais |
| Stories | 1080 × 1920 px | 9:16 | Safe zone: 250px topo e base |
| Reels (capa) | 1080 × 1920 px | 9:16 | Safe zone: 250px topo e base |

### WhatsApp VIP

| Formato | Dimensões | Proporção | Obs |
|---------|-----------|-----------|-----|
| Post geral | 1080 × 1080 px | 1:1 | Mais simples, menos produzido |
| Horizontal | 1200 × 628 px | 1.91:1 | Para links de lançamento |

> Regra geral: JPG para fotos. PNG para artes com texto/logo.

---

## 03 | GRUPOS VISUAIS

**GRUPO 1 — PRODUTO LIMPO (fundo neutro)**
Peça em fundo off-white, bege linho ou bege areia. Iluminação natural lateral (janela). Composição centrada ou regra dos terços. Produto ocupa 60–70% do frame. Texto mínimo ou sem texto — a foto fala. Logo Carol em canto inferior (cor verde floresta #273d29 sobre fundos claros).
Quando usar: lançamento de produto, post de coleção, feed principal.

**GRUPO 2 — DETALHE ARTESANAL (macro)**
Close-up extremo: textura do linho, costura francesa, laço do punho, botão forrado, bordado, trama do tecido. Profundidade de campo rasa — um detalhe em foco, restante desfocado. Fundo desaparece. Sem texto ou com 1 palavra em legenda visual.
Quando usar: post de bastidor/processo, stories de produto, reels de detalhe.

**GRUPO 3 — LIFESTYLE / CENA REAL**
Mulher usando a peça em situação real — café, trabalho, passeio, mercado. Movimento natural, não posado. Luz natural (golden hour preferencial). Cena narrativa: o ambiente conta a história tanto quanto a roupa. Pessoa real (não modelo de agência), expressão natural.
Quando usar: lifestyle, inspiração, dia típico da persona Helena.

**GRUPO 4 — BASTIDOR / ATELIER**
Carol no processo de criação — escolhendo tecido, costurando, ajustando modelagem, medindo. Ambiente de atelier (mesa de corte, tecidos, fio, agulha). Fotografia documental, não encenada. Luz natural do atelier. Cor quente dominante (madeira, linho cru, ferramentas).
Quando usar: bastidor, manifesto de processo, stories de criação.

**GRUPO 5 — TIPOGRÁFICO / MANIFESTO**
Composição tipográfica pura — sem foto. Fundo linho (#e5ded3) ou bege areia (#c2b6a5). Texto em Halant, hierarquia clara: 1 frase grande + 1 complemento menor. Assinatura Carol no canto. Muito respiro visual — nunca poluído.
Quando usar: posts de manifesto, frases âncora, valores da marca.

**GRUPO 6 — CONJUNTO / LOOK COMPLETO**
Peça ou conjunto completo vestido na modelo em contexto de cenário minimalista (parede neutra, janela ampla, jardim clean). Mostra como combinar. Overhead ou eye-level. Toda a silhueta visível.
Quando usar: styling tips, looks da coleção, posts de lançamento.

---

## 04 | JSON PADRÃO

```json
{
  "prompt": "4:5 vertical format, Instagram editorial fashion photography. BACKGROUND: warm linen texture #e5ded3, soft natural window light from left. SUBJECT: [descrever peça/cena]. LIGHTING: natural daylight, golden hour warmth, no flash. COMPOSITION: rule of thirds, generous breathing room, minimal negative space. TYPOGRAPHY (if needed): Halant serif, forest green #273d29, elegant letter-spacing. FOOTER: brand signature 'Carol Staggemeier' bottom right, small, forest green. COLOR PALETTE: forest green #273d29, brown #4c3529, clay #786c5c, sage #9db4a1, warm sand #c2b6a5, linen #e5ded3. AESTHETIC: Kinfolk editorial, Everlane product photography, Scandinavian minimalism with Mediterranean warmth. Ultra sharp, natural colors, no heavy filters.",
  "negative_prompt": "flash photography, artificial lighting, harsh shadows, busy background, saturated colors, fast fashion aesthetic, generic stock photo, posed model, heavy photoshop, blurry, low resolution, cartoonish, extra logos, watermark, neon colors, dark background, purple or blue gradient, corporate feel",
  "aspect_ratio": "4:5",
  "style": "natural editorial fashion, warm minimalist, handmade aesthetic, Kinfolk magazine style"
}
```

---

## 05 | REGRAS DE PROMPT

- **Fundo padrão:** linho #e5ded3 ou bege areia #c2b6a5 (nunca branco puro #FFFFFF, nunca preto)
- **Temperatura de luz:** quente — golden hour, luz de janela lateral, sem flash
- **Cor de destaque obrigatória:** verde floresta #273d29 (texto, logo, elementos âncora)
- **Tipografia em arte:** Halant serif — nunca Inter, nunca Playfair Display
- **Elementos visuais característicos:** texturas naturais (linho, tricô, algodão), detalhes artesanais, ambientes cotidianos reais
- **Logo:** canto inferior direito, pequeno, verde floresta sobre fundos claros / linho sobre fundos escuros
- **Para foto de produto:** fundo limpo, luz lateral suave, peça ocupa 60–70% do frame
- **Para lifestyle:** cena real, movimento natural, mulher real (diversa, 30–45 anos, não modelo de agência)
- **Para bastidor:** ambiente de atelier, luz natural, não encenado

### Paleta expandida de iluminação

Posts com elemento visual central ganham profundidade com contraste de temperatura:

| Elemento | Cor | Hex | Uso |
|----------|-----|-----|-----|
| Luz principal | Amarelo âmbar | ~#F5C97A | Ilumina o tecido — revela textura |
| Sombra de volume | Verde acinzentado | ~#8A9E8D | Áreas de sombra suave na peça |
| Fundo aquecido | Linho quente | #e5ded3 | Mantém o ambiente caloroso |

Regra: acento de luz quente sobre fundo linho faz o tecido "ganhar vida". Nunca usar luz fria azulada (congela a paleta terrosa da marca).

### O que nunca gerar para a Carol

- Fundo branco puro ou preto puro
- Gradiente roxo/azul/rosa (estética IA genérica)
- Modelos em pose de passarela ou muito produzidas
- Iluminação de estúdio artificial
- Texto com fontes sem serifa genéricas (Inter, Montserrat, Futura)
- Cores vibrantes ou néon fora da paleta
- Layout de template genérico de moda
