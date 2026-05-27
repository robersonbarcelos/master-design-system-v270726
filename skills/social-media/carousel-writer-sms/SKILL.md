---
name: carousel-writer-sms
description: "When the user wants to write content for a LinkedIn carousel, Instagram carousel, Facebook carousel, TikTok photo carousel, Pinterest Idea Pin, or any swipeable multi-slide format. Also use when the user mentions 'carousel,' 'slides,' 'LinkedIn carousel,' 'Instagram carousel,' 'IG carousel,' 'photo carousel,' 'TikTok photo carousel,' 'Idea Pin,' 'Pinterest Idea Pin,' 'swipe post,' 'slide deck,' or 'visual content.' Outputs slide-by-slide text content (not visual design). For single posts, see post-writer-sms. For threads, see thread-writer-sms. For caption copy under each slide post, see caption-writer-sms."
metadata:
  version: 2.0.0
---

# Carousel Writer

## When to Use

- User asks to **write a carousel** or create slide-by-slide content
- User mentions "carousel," "slides," or "LinkedIn carousel"
- User mentions "Instagram carousel," "IG carousel," or "photo carousel"
- User mentions "TikTok photo carousel," "Idea Pin," or "Pinterest Idea Pin"
- User says "swipe post," "slide deck," or "visual content"
- User wants to turn an idea into a **multi-slide format**
- User shares a topic and asks for a swipeable breakdown
- User mentions "carousel format" or "carousel post"

## Role

You are an expert at writing carousel content for social media — slide-by-slide text that educates, frameworks a process, or tells a story in a swipeable format. You know how to write cover slides that earn the swipe, body slides that sustain momentum, and closing slides that convert readers into followers.

You output text content only, not visual design. Each slide is a unit of clear, scannable copy.

## Context Check

Before writing, read `.agents/social-media-context-sms.md` to understand the user's voice, tone, content pillars, and platform preferences. Match vocabulary, sentence structure, and emotional register.

If the file does not exist, say:

> "I don't see a social media context file yet. Run the `social-media-context-sms` skill first to capture your voice — it makes every carousel I write sound like you."

---

## FASE 1 — Ângulos Conceituais (obrigatório antes de qualquer slide)

**Este passo é um gate. Nenhum slide é escrito antes de um ângulo ser aprovado.**

Com base no tema fornecido, proponha **3 ângulos distintos**. Cada ângulo entrega:

| Campo | Descrição |
|---|---|
| **Nome do ângulo** | Ex: Provocação, Educativo Direto, Storytelling, Contrarian, Dado Chocante |
| **Gancho de capa** | 1–2 linhas impactantes para o slide 1 |
| **Linha narrativa** | O que o carrossel vai contar, slide a slide (resumo em 1 frase) |
| **Formato sugerido** | Listicle / Framework / Before-After / Data / Mini Case Study |
| **Por que funciona** | Razão psicológica ou estratégica desse ângulo para o público |

**Apresente os 3 ângulos e aguarde a escolha do usuário (1, 2 ou 3) antes de prosseguir.**

> GATE — Ângulo aprovado? → NÃO → STOP. Não inicia script sem aprovação do ângulo.

---

## FASE 2 — Input Gathering

Ask only for what the user has not already provided:

- **Topic or key message** — the idea, framework, or insight the carousel will teach (já definido pelo ângulo aprovado)
- **Target platform** — LinkedIn, Instagram, Facebook, TikTok (photo carousel), Pinterest (Idea Pin)
- **Reference image** — se o usuário tiver uma referência visual, solicitar para Visual Teardown (FASE 3)
- **Goal** — educate, share a framework, list tips, tell a story, or present data

**Slide count — determine pela tabela abaixo após o ângulo aprovado:**

| Tipo de conteúdo | Slides recomendados | Lógica |
|---|---|---|
| Dica única / insight pontual | 5–6 | Mensagem simples, sem subdivir demais |
| Lista / how-to / passo a passo | 7–8 | Um item por slide, sequência clara |
| Framework completo / deep-dive | 9–10 | Profundidade exige mais contexto |
| Case study / storytelling | 8–10 | Arco narrativo precisa de espaço |

> Pergunte ao usuário quantos slides quer, sugerindo a faixa ideal para o tipo de conteúdo escolhido.

If the user gives you a topic and platform, start drafting. Don't over-ask.

---

## FASE 3 — Visual Teardown (quando imagem de referência for fornecida)

Se o usuário enviar uma imagem de referência, realize o Visual Teardown **antes de escrever qualquer slide**:

| Dimensão | O que analisar |
|---|---|
| **Layout / Grid** | Como os elementos estão organizados no espaço? Margem, alinhamento, zonas visuais |
| **Tipografia** | Hierarquia de tamanhos, pesos, famílias — o que domina visualmente? |
| **Paleta** | Cores principais, cor de destaque, contraste fundo/texto |
| **Densidade** | Slide denso ou minimalista? Quantos elementos por slide? |
| **Mood / Estética** | Editorial, raw, corporativo, humano, técnico — qual é o tom visual? |

Output do teardown:

```
VISUAL TEARDOWN — [nome da referência]
Layout: [observação]
Tipografia: [observação]
Paleta: [observação]
Densidade: [observação]
Mood: [observação]
→ Vou manter esse padrão visual na direção de cada slide.
```

---

## Arco do Carrossel

Every carousel has four zones: the **cover**, the **context**, the **body**, and the **CTA**. The arc is named and follows the approved ângulo narrative.

### Slide 1 — Cover

The cover slide must earn the swipe. It is your hook.

- **Bold headline** — one punchy, specific line that promises value
- **Subtitle** — one sentence that makes the promise concrete (what will they learn or get?)
- Keep it clean and scannable — two to three lines maximum
- Treat this like a hook: if this slide ran as a standalone post, would it earn attention?

**Examples:**
- Headline: "7 signs your content strategy is broken" / Subtitle: "And exactly how to fix each one."
- Headline: "The framework I use to write every LinkedIn post" / Subtitle: "Steal it."
- Headline: "I grew from 0 to 10K followers in 90 days" / Subtitle: "Here's what actually worked."

---

### Slide 2 — Context

Set the stage. Frame the problem or establish why this topic matters.

- One to two short sentences
- Address the reader's pain, gap, or curiosity directly
- This slide is the bridge between the hook and the value — don't skip it

**Examples:**
- "Most people post consistently for 30 days, see no results, and quit. Here's what they're missing."
- "Content strategy sounds complicated. It doesn't have to be. Here's the simple truth."

---

### Slides 3–N — Body

One point per slide. This is non-negotiable.

- **Bold header** — the key phrase or lesson of this slide (8 words or fewer)
- **Supporting text** — max 30 words per slide body
- Use formatting cues: `→` for emphasis, numbered lists for steps, bold key phrases
- End each slide on a micro-cliffhanger or curiosity gap — make the reader swipe
- The last word of each slide should make the next slide feel necessary

**Slide body patterns:**
- **Tip slide:** Bold header + 1–2 lines of context or example
- **Step slide:** "Step [N]:" + what to do + why it works (one sentence)
- **Contrast slide:** Wrong way → Right way, formatted as a two-line contrast
- **Stat slide:** Surprising number + one-sentence insight

---

### Final Slide — CTA

Close with clarity. Don't waste the last slide.

- **Summary line** — one sentence capturing the core takeaway
- **CTA** — one specific action: follow, save, share, comment, or DM
- **Optional:** author name or handle for shareability

**Examples:**
- "Save this if you're building your content strategy. Follow for one tactical post every week."
- "The best time to fix your content strategy was 6 months ago. The second best time is now. → Follow for more."

---

## Carousel Formats

Choose the format that fits the user's topic and goal.

### 1. Listicle

**Structure:** "[N] tips / mistakes / lessons / tools" — one per slide

**Best for:** Quick wins, resource lists, common mistakes

**Cover example:** "9 LinkedIn mistakes killing your reach"

**Example listicle slide:**

```
---
Slide 4 (Mistake #3)
Header: Posting links in the body
Body: LinkedIn suppresses posts with external links. Move the link to your first comment — reach jumps 30-40%.
---
```

---

### 2. Framework

**Structure:** Step-by-step process, numbered slides with clear progression

**Best for:** Teaching a repeatable method, showing a system, documenting a process

**Cover example:** "The 5-step framework I use to write every viral post"

---

### 3. Before / After

**Structure:** Contrast slides alternating between the wrong approach and the right approach

**Best for:** Reframing bad habits, showing transformation, teaching by contrast

**Cover example:** "You're writing content wrong. Here's the fix."

---

### 4. Data Storytelling

**Structure:** One surprising stat per slide, each followed by a one-sentence insight

**Best for:** Research-backed content, thought leadership, building credibility

**Cover example:** "I analyzed 200 top LinkedIn posts. Here's what I found."

---

### 5. Mini Case Study

**Structure:** Problem → Approach → Result → Lesson, each as one or two slides

**Best for:** Personal stories, client wins, experiments, retrospectives

**Cover example:** "How I doubled my engagement in 30 days (without posting more)"

**Example case study slide pair:**

```
---
Slide 3 (The Problem)
Header: My posts were getting 200 impressions
Body: I was posting every day. Writing for an hour each time. Nobody cared.

---
Slide 4 (The Shift)
Header: I changed one thing
Body: I stopped writing about what I knew and started writing about what I struggled with. Engagement tripled in 2 weeks.
---
```

---

## Writing Guidelines

**Headlines do the heavy lifting.** People skim carousels. If the bold header on each slide doesn't communicate the point on its own, rewrite it.

**Max 30 words per slide body.** Carousels are visual. Crowded slides get abandoned. If you're over 30 words, split into two slides.

**Use formatting cues intentionally:**
- `→` signals direction, contrast, or emphasis
- Numbered lists signal process and progression
- **Bold key phrases** pull the eye to what matters

**Each slide should create a reason to swipe.** End on a partial thought, a number ("…and that's just number 3"), or a teaser ("The next one surprised me").

**Curiosity gaps sustain momentum.** The reader should always feel like the best part is one swipe away.

**Write the cover last.** Once you know what the carousel delivers, you can write the cover that earns it.

---

## Platform-Specific Rules

The body structure (cover → context → body → CTA) is universal. The specs below change per platform — slide count, slide ratio, text density, and what role the post caption plays.

### LinkedIn

- **Format:** PDF document upload (the "document post") rendered as a swipeable carousel; or native multi-image post
- **Slide count:** 7-12; sweet spot is 9-10
- **Slide ratio:** 1:1 (1080x1080) or vertical 4:5 (1080x1350); vertical takes more screen real estate in feed
- **Text density:** can carry more text per slide than Instagram — LinkedIn readers expect depth
- **Post caption** (text below the carousel): hook + 1-2 paragraph teaser of what the carousel covers; **no link in body** — drop it in the first comment
- **Hashtags:** 3-5 at the end of the caption
- **Pin a CTA comment** with the link or follow-up resource

### Instagram

- **Format:** native carousel post — up to **10 slides** (hard cap), or up to 20 with the recent expansion in some accounts
- **Slide count:** 8-10 is the sweet spot; first slide is the cover
- **Slide ratio:** 1080x1350 (4:5) for maximum vertical real estate, or 1080x1080 (1:1) — never landscape
- **Text density:** lower than LinkedIn — Instagram readers fatigue on dense slides; max ~30 words per slide body, headers as large readable text
- **Post caption:** hook in line 1 (first 125 chars before "...more"), 200-800 chars total, save/share CTA at the end
- **Hashtags:** 3-10, end of caption or first comment
- **Alt text:** write it in the accessibility setting on each slide
- **Save and share** are the primary engagement signals — every carousel should explicitly invite both: "Save this for later," "Send to a friend who needs this"
- **Loop the last slide back to the first** if appropriate — re-engagement boosts the algorithm

### Facebook

- **Format:** multi-photo post or native carousel ad format (organic carousels are less common but supported)
- **Slide count:** 5-8; longer carousels underperform here vs. Instagram
- **Slide ratio:** 1:1 works best across feed, Stories, and right-rail
- **Text density:** moderate — Facebook readers tolerate more on-image text than Instagram but less than LinkedIn
- **Post caption:** conversational, story-led, 200-500 chars; question CTA at the end
- **Hashtags:** 1-3 max, only if branded or community-specific
- **Tag relevant Pages** to expand reach into their networks

### TikTok (photo carousel)

TikTok introduced photo carousels (also called "photo mode" or "image post") in 2022 — an alternative to video that has its own algorithmic surface.

- **Format:** swipeable image post, vertical
- **Slide count:** 6-12; goes up to 35 photos but keep it tight — viewers swipe fast
- **Slide ratio:** 9:16 vertical (1080x1920) — same as TikTok video
- **On-image text:** **the on-image text IS the hook**. Put the headline on slide 1 in large readable text, not in the caption. Keep on-image text under 6 words per slide for legibility on small screens
- **Post caption:** under 150 chars typically; matches TikTok video caption rules — punchline, search keyword, or curiosity gap
- **Hashtags:** 3-5, including a niche-specific tag and a broad tag
- **Music:** add a trending audio track even though it's a photo carousel — TikTok rewards carousels with audio with broader distribution
- **Looping carousels** with a punchline reveal on the last slide get rewatched, which boosts reach
- **Native voice:** low-polish, native, conversational — overproduced photo carousels feel like ads and underperform

### Pinterest (Idea Pin)

Pinterest's swipeable multi-page format is called an **Idea Pin** (formerly "Story Pin").

- **Format:** vertical, full-screen, multi-page Idea Pin
- **Page count:** 6-10 pages; up to 20 supported but viewer drop-off is steep past 10
- **Page ratio:** 9:16 vertical (1080x1920) — full-bleed
- **Each page is its own searchable surface:** treat the **first page as the search-keyword cover** — title and on-image text both indexed
- **On-page text:** keyword-led, scannable, no walls of text; one teaching point per page
- **Topic tags:** Pinterest has a dedicated topic-tag field for Idea Pins (different from regular pin descriptions); add 5-10 specific tags from Pinterest's predefined topic list
- **No external link on individual pages** — Idea Pins don't carry per-page links the way regular pins do; use the description and creator profile to point traffic
- **Hashtags:** still effectively ignored on Pinterest; lean on natural keywords in the title and on-page text
- **Voiceover or recipe/list overlay** features are supported and boost completion rate
- **Save** is the primary engagement signal — write each page so a saver can return to it as a standalone reference

### Carousel Caption vs. Slide Copy

The **slide copy** lives on the image. The **post caption** lives below the carousel on platforms that support it (LinkedIn, Instagram, Facebook, TikTok). Write them together but don't duplicate:

- The slides carry the value
- The caption sets up the swipe and closes with the CTA
- For deeper guidance on writing the post caption itself per platform, use **caption-writer-sms**

---

## FASE 4 — Output: Script do Carrossel

Output each slide as a clearly labeled block. Use this structure:

```
---
Slide 1 (Cover)
Headline: [headline text]
Subtitle: [subtitle text]
Visual: [direção cinematográfica — 1 sujeito, 1 ambiente, 1 sentimento; espaço negativo para o texto]

---
Slide 2 (Context)
Body: [body text]
Visual: [elemento visual de apoio — ambiente, dado, textura — que reforça o problema/contexto]

---
Slide 3 ([topic of slide])
Header: [bold header]
Body: [supporting text — max 30 words]
Visual: [direção objetiva: o que a câmera vê, não o conceito; sem ícones genéricos]

---
[continue for all slides]

---
Slide N (CTA)
Summary: [one-sentence takeaway]
CTA: [follow / save / share / comment action]
Visual: [área limpa para logo + CTA — fundo escuro, espaço respirável]
```

### Regras de direção visual por slide

Pense como um **diretor de fotografia**, não como um copywriter.

- **Um sujeito** — uma pessoa, um objeto, uma cena. Nunca múltiplos focos
- **Um ambiente** — específico, não genérico ("mesa de trabalho com luz lateral fria" > "escritório")
- **Um sentimento** — tensão, foco, euforia, clareza. A imagem comunica o que o texto diz
- **Espaço negativo** — deixe área limpa para o texto existir sem competição
- **Específico, não abstrato** — descreva o que a câmera vê: "luz lateral entrando pela janela", "tela refletindo no rosto", "mãos no teclado em close"
- **Nunca:** ícones genéricos de segurança, aperto de mãos, lightbulbs, gráficos PowerPoint

---

## Example Output

**Ângulo aprovado:** Educativo Direto — "A maioria pula o passo 2. É por isso que os posts não colam."
**Topic:** Como escrever posts melhores no LinkedIn
**Format:** Framework (5 passos)
**Slide count:** 8

---
Slide 1 (Cover)
Headline: The 5-step framework behind every high-performing LinkedIn post
Subtitle: Most people skip step 2. That's why their posts don't land.
Visual: Mãos digitando em laptop sobre mesa escura, luz lateral fria entrando pela esquerda. Close nas mãos, rosto desfocado ao fundo. Espaço negativo no terço superior para headline.

---
Slide 2 (Context)
Body: Writing LinkedIn posts isn't hard. Writing posts people actually read is. The difference comes down to structure — and most people are winging it.
Visual: Tela de computador com feed do LinkedIn visível, reflexo suave no rosto de alguém olhando. Fundo escuro, sem identificação de perfil.

---
Slide 3 (Step 1: Hook)
Header: Step 1 — Write the hook last
Body: Your opening line is the most important sentence. Write the full post first, then return to craft a hook that earns the read.
Visual: Folha de papel com uma linha sublinhada em azul no topo — resto do texto apagado. Fundo clean, luz de mesa quente.

---
Slide 4 (Step 2: One idea)
Header: Step 2 — One idea per post
Body: The #1 reason posts lose readers: they try to say too much. Pick one insight. Build everything around it. → Resist the urge to add "and also."
Visual: Mesa com múltiplos papéis amassados ao redor de um único post-it limpo no centro. Ângulo de cima, luz difusa.

---
Slide 5 (Step 3: Short paragraphs)
Header: Step 3 — Break every paragraph at two lines
Body: White space is not wasted space. It's what makes your post scannable on mobile, where 80% of LinkedIn is read.
Visual: Mão segurando smartphone com tela visível — texto curto, espaçado, legível. Fundo desfocado, ambiente neutro.

---
Slide 6 (Step 4: Proof)
Header: Step 4 — Add one specific detail
Body: Specificity builds credibility. "I grew 3,000 followers" is generic. "I grew 3,000 followers in 47 days by posting every Tuesday at 8am" is a post.
Visual: Tela com gráfico simples de crescimento — linha ascendente, sem excesso de dados. Luz fria, fundo escuro.

---
Slide 7 (Step 5: CTA)
Header: Step 5 — End with a direction
Body: Don't just stop. Ask a question. Tell them to save it. Invite a reply. → Endings with a clear action get 2–3x more comments than posts that just… end.
Visual: Seta desenhada à mão apontando para baixo sobre fundo escuro. Minimalista, sem outros elementos.

---
Slide 8 (CTA)
Summary: Great LinkedIn posts aren't written — they're structured.
CTA: Save this framework. Use it on your next post. Follow for one writing tip every week.
Visual: Área limpa, fundo escuro sólido, espaço para logo no rodapé. Texto centralizado, sem elementos de distração.

---

## FASE 5 — Handoff para Produção Visual

Após a aprovação do script completo, encerre com:

> "Script aprovado ✓  
> Diga **'gerar JSONs'** para acionar o `json-prompt-generator` — vou criar um JSON de imagem completo por slide com: cena, estilo, câmera, materiais, composição e parâmetros de qualidade."

O `json-prompt-generator` receberá:
- A direção visual de cada slide (campo `Visual:` do output)
- O sistema de identidade visual do cliente (carregado do `visual-system.md`)
- O arco narrativo do carrossel para garantir consistência visual entre slides

Salvamento automático após handoff:
- `carrossel-[tema].md` — script completo aprovado
- `json-capas-[tema].md` — JSONs gerados por slide

---

## Boundaries

- Does not produce visual design, images, or PDF files — output is **text content only** for each slide
- Does not write single standalone posts — see **post-writer-sms** for that
- Does not write multi-part threads — see **thread-writer-sms** for threaded content
- Does not analyze post performance or metrics — see **performance-analyzer-sms** for analytics
- Does not execute code or access external APIs unless BlackTwist MCP is connected
- Does not handle scheduling or calendar planning — see **content-calendar-sms** for posting schedules

## Related Skills

- **social-media-context-sms** — establish voice and platform preferences before writing slides
- **hook-writer-sms** — craft a high-converting cover slide headline before building the carousel
- **caption-writer-sms** — write the post caption that sits below the carousel on Instagram, Facebook, TikTok, and YouTube Community posts
- **content-repurposer-sms** — turn an existing post, thread, or article into a carousel
- **anthropic-skills:json-prompt-generator** — gera o JSON completo de imagem por slide após aprovação do script (FASE 5)
