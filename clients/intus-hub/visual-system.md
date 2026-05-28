# Visual System — Intus Hub

> Sistema de produção visual: paletas, grupos visuais, regras de prompt, especificações técnicas.

---

## 01 | Especificações Técnicas

| Formato | Dimensões | Uso |
|---------|-----------|-----|
| Feed quadrado | 1080×1080px | Instagram post padrão |
| Feed retrato | 1080×1350px | Instagram post 4:5 |
| Stories | 1080×1920px | Instagram / WhatsApp |
| Thumbnail YouTube | 1280×720px | YouTube |
| TikTok vertical | 1080×1920px | TikTok |

---

## 02 | Grupos Visuais por Pilar

### GRUPO 1 — IA Aplicada
- **Paleta:** laranja `#E84000` + preto `#0a0a0a` (campanha SA) OU azul/dourado institucional
- **Elementos:** telas de terminal, mockup Telegram com Aspira, foto Diego expressivo
- **Mood:** técnico acessível, produto real em uso
- **Tipografia:** Syne 800 headline + JetBrains Mono para dados/código

### GRUPO 2 — Anti-ruído
- **Paleta:** preto `#0a0a0a` + branco `#F0F4FF` — sem laranja dominante
- **Elementos:** tipografia grande como único elemento, contraste extremo
- **Mood:** direto, impactante — frase ocupa quase todo o frame
- **Tipografia:** Syne 800 enorme + zero elemento decorativo

### GRUPO 3 — Prova Real
- **Paleta:** preto `#0a0a0a` + dourado `#F0B429` (para destaque de dado)
- **Elementos:** foto real de cliente / depoimento / screenshot de resultado
- **Mood:** autenticidade — foto real supera imagem gerada
- **Tipografia:** dado em JetBrains Mono + nome/contexto em Space Grotesk

### GRUPO 4 — Educação de Estrutura
- **Paleta:** azul institucional `#1E4D9B` + preto `#050D1F` + dourado pontual
- **Elementos:** carrossel passo a passo, diagrama do mecanismo, símbolos técnicos
- **Mood:** clareza, profundidade — educador que respeita a inteligência do público
- **Tipografia:** Syne headline + Space Grotesk corpo

### GRUPO 5 — Conversão
- **Paleta:** laranja `#E84000` + preto (campanha) — máxima urgência visual
- **Elementos:** preço com âncora riscada, garantia destacada, logo SA
- **Mood:** urgência elegante — não barato, não genérico
- **Tipografia:** Syne 800 para preço + Space Grotesk para garantia

---

## 03 | Componentes de Layout Aprovados

| Componente | Especificação |
|-----------|---------------|
| Speech Bubble | Fundo `#050D1F` 85% opacidade + borda azul 1px + texto branco |
| Barra de Pilares | Faixa inferior escura + ícones line + JetBrains Mono all caps |
| Badge Hex | Símbolo hexagonal com ícone temático no núcleo |
| Botão Primário Azul | Fundo `#1E4D9B` + texto `#F0F4FF` bold |
| Botão CTA Dourado | Fundo `#F0B429` + texto `#050D1F` bold |
| Botão Secundário | Fundo `#0c1e40` + borda `#1E4D9B` 1px + texto `#7aabcc` |
| Tag/Label | JetBrains Mono all-caps, 12px |

---

## 04 | Regras de Fotografia — Diego

**Padrão institucional:**
- Rim light: azul sóbrio `#1E4D9B` de um lado
- Key light: branco ou dourado quente do outro
- Fundo: bokeh azul (telas) ou névoa escura
- Expressão: confiante/direto (Cripto/Negócios) ou levemente sorridente (IA/Educação)
- Camiseta preta fitted — padrão visual

**Paleta campanha Super Agente:**
- Iluminação: azul-elétrico + telas + eventual acento laranja
- Fundo sempre escuro — NUNCA branco

---

## 05 | Regras Gerais de Prompt Visual

### SEMPRE incluir
- Fundo escuro: `#0a0a0a` ou `#050D1F`
- Tipografia: Syne 800 para headline — fill puro, sem efeitos
- HUB: sempre em dourado `#F0B429` (nunca azul) na versão institucional
- Proporcão: 70% azul / 20% dourado / 10% branco (institucional)

### NUNCA incluir
- Fundo branco ou claro
- Text-stroke ou outline na Syne
- Electric blue `#0055FF` saturado em grandes áreas
- Glassmorphism genérico
- Gradiente roxo/azul de IA padrão
- Mistura de paleta campanha (laranja) com institucional (azul/dourado) no mesmo criativo

### Checklist visual
- [ ] Fundo escuro?
- [ ] HUB em dourado (versão institucional)?
- [ ] Syne sem efeitos?
- [ ] Azul sóbrio (#1E4D9B) — não elétrico?
- [ ] Campanha SA e institucional separadas (sem mistura)?
