# WHITE LABEL — Roteiro Padrão para Novos Clientes

> Referência base para onboarding de novos clientes.
> Use esta pasta como ponto de partida — copie a estrutura, substitua com dados reais do cliente.

---

## Como usar

1. Execute `setup-client.ps1 -ClientName "nome-do-cliente"` para criar a pasta automaticamente
2. Use os arquivos desta pasta como referência de estrutura e profundidade de preenchimento
3. Popule os 8 arquivos com os dados reais do cliente (skill, briefing, reunião inicial)
4. Nunca use dados genéricos em produção — cada arquivo deve ter dados reais

---

## Estrutura obrigatória de cada cliente

```
clients/[nome-do-cliente]/
├── .agents/
│   └── social-media-context-sms.md   ← Contexto para o agente SMS (identidade, público, pilares, grade)
├── brand-spec.md                      ← Paleta, tipografia, logo, plataformas, dimensões
├── production-rules.md                ← Regras de copy e visual — lido antes de cada entrega
├── content-system.md                  ← Pilares, grade, copy por tipo, CTAs, hashtags, ficha
├── visual-system.md                   ← Grupos visuais, JSONs, workflow de prompt
├── references/
│   ├── dados-ancora.md                ← Dados reais da marca para ancorar copy
│   ├── temas.md                       ← Banco de temas por pilar — alimentar continuamente
│   └── copies-aprovadas.md            ← Copies reais aprovadas — calibrador de tom
└── CLAUDE.md                          ← Instruções operacionais do projeto (gerado pelo sistema)
```

---

## O que cada arquivo contém

### `.agents/social-media-context-sms.md`
O arquivo mais estratégico. Contém:
- Identidade completa (nome, nicho, produto, diferencial)
- Público-alvo (dor, desejo, objeção, nível de consciência)
- Tom de voz com exemplos concretos
- Pilares de conteúdo (4-6 pilares máximo)
- Grade semanal por plataforma
- O que a marca NUNCA faz
- Competidores e diferenciação

**Profundidade esperada:** 100-150 linhas de dados reais. Não é resumo — é contexto operacional.

---

### `brand-spec.md`
Contém:
- Tagline e conceito central
- Paleta de cores com hex + regras de uso por contexto
- Tipografia (fontes, pesos, casos de uso)
- Logo (versões, regras de uso, proibições)
- Templates/plataformas (dimensões, formatos)
- Referências visuais aprovadas

**Profundidade esperada:** Específico o suficiente para que qualquer designer produza sem briefing adicional.

---

### `production-rules.md`
Contém:
- Regras críticas (idioma, paleta, tom)
- Gatilho pré-copy obrigatório (perguntas a responder antes de escrever)
- Vocabulário aprovado (❌ nunca / ✅ sempre)
- Copies aprovadas de referência
- Regras de prompt visual
- Checklist antes de entregar

**Profundidade esperada:** Curto e direto — regras operacionais, não teoria.

---

### `content-system.md`
Contém:
- Pilares/editorias com objetivo, tom e % de frequência
- Grade semanal (dia / formato / pilar)
- Volume mensal
- Copy por pilar com exemplos reais
- CTAs hierarquizados
- Hashtags por categoria
- Ficha de entrega

**Profundidade esperada:** Completo o suficiente para produzir uma semana inteira sem briefing.

---

### `visual-system.md`
Contém:
- Especificações técnicas (dimensões por formato)
- Grupos visuais por pilar (quando usar, layout, paleta, mood)
- Workflow de produção de prompts (fluxo obrigatório)
- Regras de prompt (SEMPRE / NUNCA)
- Negative prompt padrão
- JSON template(s) aprovado(s)

**Profundidade esperada:** Suficiente para gerar prompt de imagem sem consultar o cliente.

---

### `references/dados-ancora.md`
Contém:
- Dados reais da marca (números, credenciais, datas, provas sociais)
- Dados de produto/serviço
- Dados competitivos
- Frases de posicionamento aprovadas
- Tabela de rotação semanal

**Regra crítica:** Nunca inventar dado. Nunca usar dado não confirmado. Se não tem dado, não tem âncora.

---

### `references/temas.md`
Contém:
- Banco de temas por pilar com ângulo sugerido e formato ideal
- Status de uso ([ ] pendente / [USADO — DD/MM])
- Temas evergreen (atemporais — reformatar periodicamente)

**Regra:** Alimentar continuamente. No mínimo 5-7 temas por pilar antes de iniciar produção.

---

### `references/copies-aprovadas.md`
Contém:
- Copies reais aprovadas organizadas por pilar/editoria
- Legendas completas com variações (A/B/C quando houver)
- Copies publicadas com performance (adicionar após publicação)

**Regra:** Só entra cópia aprovada pelo cliente. Nenhuma copy gerada vai direto para este banco sem revisão.

---

## Checklist de onboarding completo

```
ONBOARDING — [NOME DO CLIENTE]

COLETA DE DADOS
[ ] Skill do cliente recebida ou briefing inicial preenchido
[ ] Identidade visual aprovada (paleta, logo, fontes)
[ ] Produto/serviço documentado com diferenciais
[ ] Público-alvo definido com dor/desejo/objeção reais
[ ] Pilares de conteúdo validados com o cliente
[ ] Grade semanal aprovada (frequência e plataformas)
[ ] Exemplo de voz/tom aprovado (post de referência ou gravação)

ARQUIVOS OBRIGATÓRIOS
[ ] .agents/social-media-context-sms.md — preenchido com dados reais
[ ] brand-spec.md — paleta + logo + tipografia + dimensões
[ ] production-rules.md — regras críticas + checklist
[ ] content-system.md — pilares + grade + CTAs
[ ] visual-system.md — grupos visuais + JSON template
[ ] references/dados-ancora.md — dados reais + rotação
[ ] references/temas.md — banco inicial mínimo (5 temas por pilar)
[ ] references/copies-aprovadas.md — bank de referência inicial

VALIDAÇÃO
[ ] Primeiro criativo produzido e aprovado → add em copies-aprovadas.md
[ ] Primeiro post publicado → registrar performance
[ ] Revisão dos dados-ancora após primeira semana
```

---

## Regras para novos clientes

1. **Nunca iniciar produção sem `.agents/social-media-context-sms.md` preenchido**
2. **Nunca publicar sem `production-rules.md` lido**
3. **Nunca inventar dado âncora — se não tem, não usa**
4. **Cada copy aprovada entra em `copies-aprovadas.md` imediatamente**
5. **Temas usados são marcados como `[USADO — DD/MM]` no mesmo dia**
6. **A pasta do cliente é o único lugar de verdade — não confiar em memória ou chat**
