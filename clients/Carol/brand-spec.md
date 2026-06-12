# Brand Spec — Carol Staggemeier

last_updated: 2026-06-10

> Extraído do Manual de Marca e GUM (Guia de Uso de Marca) Carol Staggemeier.
> Arquivos físicos de logo (SVG/PNG) não fornecidos — solicitar à cliente.

---

## Logo

**Composição:** Logotipo (tipografia moderna + lettering exclusivo "Staggemeier") + Monograma ("CS" desenhado de forma contínua)

**Composição:** Logotipo (CAROL em caixa alta espaçada + Staggemeier em lettering script exclusivo) + Monograma CS (traço contínuo fluido, funciona como assinatura reduzida)

**Arquivos disponíveis na pasta:**
- `Cópia de Design sem nome (19).png` — logo cor #4c3529 Café Terroso (fundo claro)
- `Cópia de Logo Carol_Claro.png` — logo cor #e5ded3 Linho (fundo escuro)
- `Cópia de Design sem nome (17).png` — logo cor #9db4a1 Salva (variação verde)

**Pendente:** SVG/vetorial + monograma isolado em arquivo separado

---

### Matriz completa de uso do logo (confirmada visualmente)

| Fundo | Cor do fundo | Logo/Monograma |
|-------|-------------|----------------|
| Café Terroso | #4c3529 | Linho #e5ded3 |
| Areia Quente | #c2b6a5 | Café Terroso #4c3529 |
| Verde Floresta | #273d29 | Linho #e5ded3 |
| Salva | #9db4a1 | Verde Floresta #273d29 |
| Argila | #786c5c 	| Linho #e5ded3 |
| Linho | #e5ded3 | Café Terroso #4c3529 |

**Regra geral:**
- Fundos escuros (Verde Floresta, Café Terroso, Argila) → logo Linho #e5ded3
- Fundos claros/médios (Linho, Areia Quente) → logo Café Terroso #4c3529
- Fundo Salva (verde médio) → logo Verde Floresta #273d29

**Nunca:** aplicar logo sobre fundo sem contraste suficiente. A tabela acima é a referência.

**Conceito do lettering:**
"CAROL" em caixa alta com espaçamento amplo (sans-serif limpa, similar à Halant ou fonte próxima). "Staggemeier" em lettering script exclusivo e fluido — evoca trabalho feito à mão, movimento contínuo e criatividade. O monograma (CS em traço contínuo) aparece no início do lettering como elemento integrado.

**Uso do logo:**
- Espaço mínimo ao redor: metade da altura do logotipo
- Tamanho mínimo: 2 cm (logotipo) / 1 cm (monograma)
- Fundos permitidos: branco, off-white, fundos escuros (versão branca), fundos da paleta da marca
- Nunca: esticar, rotacionar, alterar cores, adicionar sombra, aplicar sobre foto sem contraste suficiente

---

## Cores

### Paleta principal (extraída do GUM oficial)

| Papel | Nome | Hex | RGB | CMYK |
|-------|------|-----|-----|------|
| Verde Escuro (primária) | Verde Floresta | #273d29 | rgb(39,61,41) | C80 M50 Y80 K60 |
| Marrom Escuro | Café Terroso | #4c3529 | rgb(76,53,41) | C47 M62 Y67 K66 |
| Marrom Médio | Argila | #786c5c | rgb(120,108,92) | C45 M44 Y54 K33 |
| Verde Suave (secundária) | Salva | #9db4a1 | rgb(157,180,161) | C44 M18 Y39 K3 |
| Bege Rosado | Areia Quente | #c2b6a5 | rgb(194,182,165) | C25 M24 Y34 K5 |
| Off-White (fundo) | Linho | #e5ded3 | rgb(229,222,211) | C12 M12 Y18 K0 |

**Hierarquia de uso:**
- **Fundos principais:** #e5ded3 (linho) e #c2b6a5 (areia quente)
- **Textos e elementos principais:** #273d29 (verde floresta) ou #4c3529 (café terroso)
- **Destaques e acentos:** #9db4a1 (salva)
- **Elementos secundários:** #786c5c (argila)

### Variáveis CSS

```css
:root {
  --color-primary: #273d29;        /* Verde Floresta — textos principais, elementos âncora */
  --color-secondary: #9db4a1;      /* Salva — destaques, acentos */
  --color-brown-dark: #4c3529;     /* Café Terroso — alternativa de texto escuro */
  --color-brown-mid: #786c5c;      /* Argila — elementos secundários */
  --color-bg-warm: #c2b6a5;        /* Areia Quente — fundo alternativo */
  --color-bg-light: #e5ded3;       /* Linho — fundo principal */
  --color-text-main: #273d29;
  --color-text-secondary: #786c5c;
}
```

### Paleta expandida (coleção "Cenas de Verão")

| Cor | Hex | Papel |
|-----|-----|-------|
| Azul Claro | #A4C4E0 | "Leve como a brisa de verão" |
| Terracota | #C8714A | "Autêntica e marcante" |
| Off-White | #FDFCF8 | Base universal |
| Azul Céu | #87CEEB | "Frescor e claridade" |
| Bege Areia | #D4B896 | "Natural e versátil" |
| Rosa Pálido | #FFE4E1 | "Delicada e única" |
| Bege Claro | #E8DCC4 | "Natural e atemporal" |

> As cores da coleção são temáticas — não substituem a paleta institucional acima.

---

## Tipografia

### Fontes institucionais

| Papel | Família | Peso(s) | Fonte de importação |
|-------|---------|---------|---------------------|
| Títulos / Display | Halant | Regular, Bold | Google Fonts |
| Subtítulos | Nunito Sans | Bold (700) | Google Fonts |
| Corpo de texto | Nunito Sans | Regular (400) | Google Fonts |
| Lettering da marca | Exclusivo (não replicar) | — | Arquivo da cliente |

### Escala tipográfica (estimada — confirmar com cliente)

| Token | Tamanho | Peso | Line-height | Uso |
|-------|---------|------|-------------|-----|
| display | 52px | 700 (Halant Bold) | 1.1 | Hero headline |
| h1 | 40px | 700 (Halant Bold) | 1.2 | Título de seção |
| h2 | 30px | 400 (Halant Regular) | 1.25 | Subtítulo |
| h3 | 22px | 700 (Nunito Sans Bold) | 1.3 | Card title, nome de peça |
| body-lg | 18px | 400 (Nunito Sans) | 1.6 | Parágrafos principais |
| body | 16px | 400 (Nunito Sans) | 1.6 | Body text |
| caption | 14px | 400 (Nunito Sans) | 1.5 | Metadados, créditos |
| label | 12px | 700 (Nunito Sans Bold) | 1.4 | Tags, preços, labels |

### CSS

```css
:root {
  --font-display: 'Halant', serif;
  --font-body: 'Nunito Sans', sans-serif;
}
```

---

## Assets do produto

### Peças confirmadas no acervo

| Peça | Cores disponíveis | Tipo de foto | Observação |
|------|------------------|--------------|------------|
| Moletom raglan (hero piece) | Navy, Preto, Café/Marrom, Olive/Verde, Bege/Areia | Campaign editorial + flat lay | Peça central da linha. Usado com camisa por baixo (layering) ou sozinho (velour) |
| Calça wide-leg estruturada | Navy, Preto, Café/Marrom | Campaign editorial + flat lay | Par oficial do moletom |
| Calça jogger velour | Olive/Verde, Bege/Areia | Campaign editorial | Par do moletom velour — coleção home/casual |
| Conjunto polo V-neck + culotte | Preto, Navy, Bordô | Produto flat (fundo linho, tag da marca) | Linha mais formal, fotografia de produto limpo |
| Conjunto renda branca (camisa + calça) | Branco | Lifestyle urbano (palmeira, ar livre) | Verão/festa |
| Camisa linho com renda no decote V | Preto | Close-up de detalhe + editorial aeroporto | Detalhe artesanal: renda preta aplicada no V, close-up disponível |
| Vestido organza poá (LBD artesanal) | Preto | 4 ângulos lifestyle + 4 close-ups de detalhe | Peça signature: manga balão em organza poá, inserção de tule no decote redondo, botões forrados, punho com botão — close-ups de detalhe disponíveis |
| Suéter canelado raglan | Branco | Lifestyle, fundo linho bege | Mais ajustado que o moletom, canelado — feminino/casual |
| Jaqueta jeans estruturada | Jeans médio | Lifestyle, fundo linho bege | Bolsos flap + botões de madeira (detalhe artesanal); curta/cropped |
| Saia midi rendada/texturizada | Branco/Creme | Lifestyle, fundo linho bege | Par da jaqueta jeans — coleção mista |
| Camisa oxford oversized | Azul claro | Lifestyle, fundo linho bege | Usado em flat lays como layering do moletom |
| Saia suede/couro midi | Marrom | Lifestyle, fundo linho bege | Par da camisa azul — coleção outono |
| Suéter macio (mohair/fleece) | Azul claro | Lifestyle, fundo linho bege | Textura volumosa, leve — usado com lenço paisley |
| Conjunto canelado (top V + calça wide) | Bordô | Lifestyle, fundo linho bege | Top V-neck justo + calça wide canelada — look "tudo numa cor" |
| Vestido midi canelado | Bordô | Lifestyle, fundo linho bege | Mesma malha canelada do conjunto, corte midi justo |
| Blazer linho cinza estruturado | Cinza claro | Lifestyle, fundo linho bege | Oversized, estruturado, bolsos flap — combina com bordô e azul |
| Calça wide-leg canelada | Bordô | Lifestyle, fundo linho bege | Par do top canelado ou da camiseta |
| Colete duplo-abotoado | Preto | Interior, parede bege | |
| Blazer militar | Preto | Interior, parede bege | |

### Modelos e identidade visual das fotos

**Modelo A — campanha editorial navy:** Mulher ~28-32 anos, morena, cabelo castanho liso comprido, ~1,73m. Estúdio com parede terracota/areia quente e sombras de janela dramáticas.

**Modelo B — morena jovem (velour bege):** Mulher ~25-30 anos, morena, cabelo ondulado castanho. Fundo terracota, mesmo estúdio da campanha.

**Modelo C — plus-size loira (velour olive):** Mulher loira, ~38-42 anos, corpo plus. Confirma tamanhos PP ao GG com representação real.

**Modelo D — negra cacheada:** Mulher negra, cabelo cacheado volumoso loiro/ombre, ~30-35 anos, corpo curvilíneo. Fundo linho bege exato (#e5ded3). Aparece em: suéter branco, jaqueta jeans, camisa azul, saia couro, suéter azul mohair + lenço, blazer cinza + calça bordô.

**Modelo E:** Mulher ~33-38 anos, cabelo preto liso até o ombro, morena clara, sorriso largo, joias douradas. Aparece no conjunto canelado bordô e no vestido midi bordô + blazer cinza. Fundo linho bege.

**Modelo F (aeroporto):** Mulher usando camisa linho/renda preta + calça wide navy. Locação aeroporto POA. Lifestyle urbano real.

**Flat lays de styling:** Carol produz flat lays de outfit completo (peça + acessórios sugeridos: relógio, brincos, bolsa, sapato, camisa sobreposta). Formato validado para Instagram.

---

## Estilo visual geral

**Status atualizado:** O acervo fotográfico é muito mais rico do que avaliado inicialmente. A dicotomia "urban vs artesanal" não existe mais — a Carol JÁ tem os dois estilos.

### Estilos fotográficos confirmados

| Estilo | Exemplos confirmados | Uso no feed |
|--------|---------------------|-------------|
| **Editorial artesanal** | Moletom navy, fundo parede terracota #C2834A, sombras de janela dramáticas | Campanha hero, posts de produto com alma |
| **Produto limpo** | Conjunto polo, fundo linho off-white, tag da marca visível | Comunicação de lançamento, catálogo |
| **Lifestyle urbano** | Conjunto renda branca, palmeira, rua | Cena real, contexto de uso |
| **Editorial aeroporto** | Camisa renda preta, POA airport | Autoridade + produto em movimento |
| **Flat lay de styling** | Moletom + acessórios sugeridos, fundo linho | "Como usar", inspiração, layering |
| **Close-up detalhe** | Renda no decote V da camisa preta | Artesanalidade, detalhe exclusivo |
| **Multi-ângulo de produto** | Velour olive, 4 ângulos, fundo terracota | Apresentação completa de nova peça |

**Temperatura de cor consistente:** Todas as fotos de campanha usam luz quente — dourado/terracota. Fundo parede quente (~#C2834A / areia terracota). Sem fundo branco frio, sem flash.

**Estilo de fotografia confirmado:**
- [x] Editorial artesanal com fundo terracota/areia + luz de janela
- [x] Produto limpo (flat, fundo linho, tag visível)
- [x] Lifestyle urbano (locação real exterior)
- [x] Close-up de detalhe artesanal (renda aplicada, organza poá, botão forrado, punho)
- [x] Flat lay de outfit com acessórios
- [x] Multi-ângulo de produto (4 poses/ângulos por peça — padrão consistente)
- [x] Fundo linho bege puro (#e5ded3) — fotos da modelo D
- [ ] Bastidor/atelier (ainda não fornecido)

**Paleta real das fotos:** Preto, navy, café/marrom, bordô, olive — peças sólidas e atemporais. O branco renda aparece como exceção festiva. Acessórios sugeridos nos flat lays: bordô (sapatos Arezzo, bolsas Mansur/Capricho), dourado (brincos, relógio), navy complementar.

**Solicitar ainda:**
- SVG/vetorial do logo + monograma CS isolado
- Fotos de bastidor/atelier
- Foto da Carol (fundadora) para posts de autoridade pessoal

**DESIGN.md de referência:** Ver `DESIGN.md` desta pasta.

---

## Notas de aplicação

- **Social media:** Fundo linho (#e5ded3) ou areia (#c2b6a5) como base. Verde floresta (#273d29) para texto e elementos de destaque. Nunca fundo branco puro ou preto puro.
- **Tipografia em posts:** Halant para qualquer headline de post. Nunito Sans para informações de produto, preços, legendas curtas.
- **Fotografia:** Luz natural sempre. Temperatura de luz quente (golden hour, janela). Nunca flash artificial duro.
- **Emojis:** Máximo 1–2 por post. Preferir: 🌿 ☀️ 💙 ✨. Nunca: 🔥💯😍🤩
