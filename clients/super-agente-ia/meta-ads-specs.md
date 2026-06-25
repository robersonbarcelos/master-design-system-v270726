# Meta Ads Specs — Super Agente de IA

> Referência técnica de dimensões, safe zones e recuos para criativos Meta Ads.
> Aplica para todas as campanhas do produto (Feed + Stories/Reels).

---

## Formatos Obrigatórios

| Formato | Dimensão | Placements cobertos |
|---------|----------|---------------------|
| **Feed 1:1** | 1080×1080px | Feed, Marketplace, Right Column, Messenger |
| **Feed 4:5** | 1080×1350px | Feed single-image vertical (mais espaço mobile) |
| **Stories / Reels 9:16** | 1080×1920px | Stories + Reels (mesmo asset cobre os dois) |

---

## Safe Zones — Stories e Reels (1080×1920)

| Zona | Pixels | % frame | Regra |
|------|--------|---------|-------|
| **Topo — LIVRE** | 0 → 250px | ~14% | Ícone de perfil + tag "Patrocinado" — NADA de texto/logo aqui |
| **Safe Zone — CONTEÚDO** | **250px → 1248px** | **~51%** | Todo conteúdo visual vai aqui (headline, logo, claim, foto) |
| **Base — LIVRE** | 1248px → 1920px | ~35% | Botão de CTA nativo do Meta + caption — NADA de texto/logo aqui |
| **Laterais** | 87px cada lado | ~6% | Manter margem mínima para evitar corte em telas largas |

### Diagrama de referência (9:16)

```
[0px]
─────────────────────────────────────
  TOPO LIVRE (~250px)
  ícone de perfil + "Patrocinado"
─────────────────────────────────────
[250px]
  
  SAFE ZONE — COLOCA TUDO AQUI
  headline · logo · foto Diego
  claim · número âncora · ícone
  
  998px de altura disponível
  
[1248px]
─────────────────────────────────────
  BASE LIVRE (~672px)
  botão CTA do Meta + caption
─────────────────────────────────────
[1920px]
```

---

## Safe Zones — Feed (1080×1080 e 1080×1350)

| Regra | Aplicação |
|-------|-----------|
| Não colar texto nas bordas | Mínimo 40px de padding em todos os lados |
| Centralizar produto/oferta | Na área central visível, não encoberta pela UI |
| Logo INTUS HUB | Canto inferior — dentro da área segura |

---

## Checklist de Produção por Formato

### Feed 1:1 (1080×1080)
- [ ] Padding mínimo 40px em todos os lados
- [ ] Logo @intushub no canto inferior direito (dentro do padding)
- [ ] Texto principal centralizado no frame
- [ ] Paleta `#E84000` + `#0a0a0a`

### Feed 4:5 (1080×1350)
- [ ] Padding mínimo 40px em todos os lados
- [ ] Produto/oferta na metade superior (área mais visível no scroll)
- [ ] CTA visual (seta, botão fake) na parte inferior — mas dentro do frame
- [ ] Logo @intushub no canto inferior direito

### Stories/Reels 9:16 (1080×1920)
- [ ] NADA acima de y=250px (ícone de perfil cobre)
- [ ] TODO conteúdo entre y=250px e y=1248px
- [ ] NADA abaixo de y=1248px (CTA e caption do Meta cobrem)
- [ ] Margens laterais mínimas de 87px
- [ ] Logo @intushub posicionado entre y=1100px e y=1200px (perto do fim da safe zone)
- [ ] CTA visual (texto de CTA) entre y=900px e y=1150px

---

## Recomendação de Versões por Criativo

Para cada criativo da campanha, produzir:
1. **1:1** (1080×1080) — version padrão, maior distribuição
2. **9:16** (1080×1920) — version Stories/Reels, adaptada com safe zones

> Nota: não adaptar o 1:1 para 9:16 simplesmente adicionando barras pretas.
> A versão 9:16 deve ser redesenhada para a proporção vertical desde o início.
