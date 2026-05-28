# Visual System — Mercurius Cybersecurity

> Sistema visual: grupos, JSON padrão, regras de prompt, especificações técnicas.

---

## 01 | Fluxo de Produção Visual

1. Propor **3 ideias visuais** (conceito + composição + paleta + headline)
2. **Aguardar escolha** do usuário
3. Gerar **JSON** apenas da ideia aprovada

---

## 02 | Especificações Técnicas

**Todas as peças: 1080 × 1350 px (4:5)**
Válido para LinkedIn e Instagram. Sem exceção.

---

## 03 | Elementos Visuais Aprovados

| Tipo | Descrição |
|---|---|
| Frame HUD | Ângulo cortado em `#5CDAF5` — elemento identitário principal |
| Linhas de fluxo | Horizontais representando tráfego de rede |
| Grade de pontos | Representa dispositivos conectados |
| Diagrama de camadas | Minimalista, fluxos de segurança |
| Linha do tempo | Horizontal minimalista para progressão |
| Barra de progresso | Para representar proporções e métricas |
| Tipografia pura | Composição 100% tipográfica sem fotografia |

---

## 04 | Fotografia Aprovada

- SOC em operação, analistas em foco suave
- Data center, racks, infraestrutura industrial
- Executivos em ambiente corporativo de alto padrão
- Infraestrutura crítica: mineração, energia, instalações industriais
- Cockpit de avião (analogia de piloto automático)
- Sempre: iluminação lateral fria, profundidade de campo cinematográfica
- Sempre: sem logos visíveis em roupas ou equipamentos, sem relógios ou anéis

---

## 05 | JSON Padrão Mercurius

```json
{
  "prompt": "4:5 editorial post for cybersecurity brand Mercurius. BACKGROUND PHOTO: [descrição da foto — SOC/executivos/código/data center], cinematic depth of field, dark ambient lighting. Dark overlay 60% opacity. GRAPHICAL ELEMENT: angular cut HUD-style frame [posição], thin tech detail border in #5CDAF5. HEADLINE TYPOGRAPHY: bold sans-serif [alinhamento], [N] lines broken for rhythm, [#5CDAF5 OR #FFFFFF]: '[texto]'. SUBLINE: medium regular, [#FF9A3A OR #FFFFFF]: '[texto]'. FOOTER: Mercurius infinity loop symbol + wordmark, bottom right. Background: #161614 dark base. NO padlocks. NO shields. NO hooded hackers. Continuous flow, precision, offensive intelligence aesthetic. Ultra sharp, cinematic.",
  "negative_prompt": "padlock, shield icon, hooded hacker, generic cybersecurity stock, warm tones, cartoon, serif font, handwritten, watermark, extra logos, blurry, low contrast",
  "aspect_ratio": "4:5",
  "style": "dark tech editorial, navy and cyan palette, bold typography, cinematic photography, HUD framing, offensive security aesthetic"
}
```

---

## 06 | Negative Prompt Padrão

```
padlock, shield icon, hooded hacker, generic cybersecurity stock, warm tones, cartoon, serif font, handwritten, watermark, extra logos, blurry, low contrast, soft focus
```

---

## 07 | Regras de Prompt

- Direção de imagem escrita em **português brasileiro** (briefing interno)
- Copy e headlines no prompt em **inglês** (conteúdo publicado)
- Nunca usar ícones de regulação genéricos, gráficos PowerPoint, aperto de mãos
- Infinity loop Mercurius sempre no rodapé direito
- Overlay dark 50–70% sobre toda fotografia
- Contraste ciano `#5CDAF5` como cor de destaque obrigatória
