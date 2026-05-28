# Brand Spec — Super Agente de IA

> Paleta de campanha SEPARADA da paleta institucional do INTUS HUB.
> Laranja + Preto é exclusivo desta campanha (Super Agente de IA).
> Paleta institucional (Sober Blue + Gold) pertence ao HUB como marca.

---

## 01 | Paleta de Cores — Campanha Super Agente

| Token | Hex | Uso |
|-------|-----|-----|
| `accent` | `#E84000` | Laranja principal — CTAs, números, destaque, glow, gradiente |
| `accent-dark` | `#8C2000` | Laranja escuro — gradiente, bordas, profundidade |
| `bg` | `#0a0a0a` | Fundo preto — background base de toda a LP e conteúdo |
| `surface` | `rgba(255,255,255,0.04)` | Cards e superfícies sobre fundo preto |
| `text-primary` | `#FFFFFF` | Texto principal |
| `text-secondary` | `rgba(255,255,255,0.65)` | Texto secundário, legendas |
| `text-muted` | `rgba(255,255,255,0.4)` | Texto terciário |
| `gold` | `#F0B429` | Âncora institucional do INTUS HUB — usar só quando referência ao HUB |

### Regra crítica de paleta
- Conteúdo sobre Super Agente de IA = laranja `#E84000` + preto `#0a0a0a`
- Conteúdo institucional INTUS HUB = azul `#1E4D9B` + dourado `#F0B429`
- NUNCA misturar as duas paletas num mesmo post

---

## 02 | Tipografia

| Fonte | Uso | Peso |
|-------|-----|------|
| **Inter Tight** | Headlines, números, CTAs, UI | Black 900, Bold 700, SemiBold 600 |
| **Inter** | Corpo de texto, descrições | Regular 400, Medium 500 |

### Hierarquia tipográfica da LP
- `.h-display` — Display headlines grandes (Inter Tight Black)
- `.h2` — Section titles
- `.h3` — Card titles
- `.section-eyebrow` — Labels de seção (uppercase, letra spacing, text-secondary)
- `.lead` — Parágrafo de abertura (maior, peso 400)

---

## 03 | Botões

### Botão Primário (CTA principal)
```
background: radial-gradient(ellipse at 40% 40%, #FF6020, #E84000 60%, #8C2000)
color: #fff
border: none
font: Inter Tight SemiBold
padding: 18px 36px
border-radius: 6px
```
- Texto padrão: "Quero meu Super Agente →" ou "Criar meu Super Agente →"
- Sempre com seta `→` no final
- Hover: brightness(1.1)

### Botão WhatsApp (suporte)
```
background: #25D366
color: #fff
```

### Botão Ghost (secundário)
```
background: transparent
border: 1px solid rgba(232,64,0,0.4)
color: #fff
```
- Hover: border-color #E84000

---

## 04 | Símbolo / Logo

> O produto usa a identidade visual do INTUS HUB.
> Logo INTUS HUB = símbolo hex (hexágono estilizado) em dourado sobre fundo escuro.
> Para o produto Super Agente, o laranja `#E84000` substitui o dourado nos elementos de campanha.

**Área de segurança do logo:** mínimo 20px de clearspace em todos os lados
**Fundo do logo:** sempre sobre `#0a0a0a` ou fundo escuro — nunca sobre fundo claro

---

## 05 | Elementos Visuais de Campanha

| Elemento | Descrição | Regra de uso |
|----------|-----------|--------------|
| Glow laranja | Radial glow `rgba(232,64,0,0.16)` irradiando de elementos-chave | Em cards de destaque, número "7" da garantia, hover em CTAs |
| Anel gradiente | `stroke: linear-gradient(#FF6020, #8C2000)` | Círculo da garantia, badges de destaque |
| Dot animado | `·` laranja pulsante | Separador no marquee, indicador ativo |
| Section eyebrow | Label pequeno acima do título (`section-eyebrow`) | SEMPRE antes de h2 de seção |
| Aspas de speech bubble | Fala de Diego ou dos agentes em destaque | Diego Card na seção Proof |
| Pulse ring | Anel pulsante ao redor do badge de garantia | Só na seção Guarantee |
| Badge de prova | "Super Agente" / "Seu Professor" | Cards de Aspira, Clóvis, Diego |

---

## 06 | Fotos e Imagens

### Diego Spanevello
- Arquivo: `img/diego.png`
- Estilo: Fundo escuro, iluminação com rim light azul (Sober Blue `#1E4D9B`), camiseta preta, telas ao fundo
- Tom: autoridade sem arrogância, sério mas acessível
- Fallback: Iniciais "DS" em div escura

### Aspira (Agente IA)
- Arquivo: `img/aspira.png`
- Estilo: Representação visual de agente de IA — identidade visual consistente
- Fallback: Iniciais "AS"

### Clóvis (Agente IA)
- Arquivo: `img/clovis.png`
- Estilo: Representação visual de agente de IA
- Fallback: Iniciais "CL"

### Alunos
- Denys Buso: `img/denys.jpg` — fallback "DB"
- Arcanjo: `img/arcanjo.jpg` — fallback "AR"

---

## 07 | Especificações Técnicas (Social)

| Formato | Dimensões | Uso |
|---------|-----------|-----|
| Feed quadrado | 1080×1080px | Instagram padrão |
| Feed retrato | 1080×1350px | Instagram 4:5 (preferencial) |
| Stories/Reels | 1080×1920px | Stories 9:16 |
| YouTube Thumb | 1280×720px | YouTube / YouTube Shorts |
| TikTok | 1080×1920px | TikTok vertical |

---

## 08 | Tom Visual

**Mood geral:** Técnico-premium, escuro, urgente mas credível
**Referência visual:** Dark UI de SaaS B2B premium — não genérico, não hype
**Proibido:** Fundo branco, gradientes coloridos genéricos, paleta "IA clichê" (azul neon + roxo), elementos de gamificação infantil
