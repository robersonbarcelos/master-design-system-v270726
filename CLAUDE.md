# Master Social Design System — Regras Globais

> Este arquivo é lido automaticamente ao abrir qualquer pasta deste projeto.
> Estas regras se aplicam a TODOS os clientes e sessões de produção.

---

## REGRA CRÍTICA — JSON de Imagem (obrigatório)

**Sempre que o usuário enviar uma imagem de referência com intenção de gerar um prompt ou JSON para IA generativa (Freepik, Midjourney, ChatGPT Image, etc.), OBRIGATORIAMENTE:**

1. **Perguntar antes de gerar:**
   > "Quer que eu use a skill `json-prompt-generator` para analisar esta referência? Ela gera um JSON estruturado com campos `scene`, `style`, `technical`, `materials`, `composition` e `quality` — schema completo e pronto para usar."

2. **Se o usuário confirmar** (ou já tiver pedido explicitamente):
   - Acionar a skill `json-prompt-generator` localizada em `skills/design/json-prompt-generator/`
   - Seguir o workflow da skill: Analysis → JSON Prompt → Tweaks
   - Nunca usar o schema simplificado `{ "prompt": "...", "negative_prompt": "...", "aspect_ratio": "..." }`

3. **Nunca gerar JSON de imagem sem passar pela skill** quando há imagem de referência presente.

### Quando esta regra se aplica
- Usuário envia imagem + pede "recriar", "replicar", "fazer igual", "prompt disto", "JSON disto"
- Usuário envia imagem + pede variações com paleta do cliente
- Usuário envia imagem + pede "3 ideias" que resultarão em JSONs

### Exceção
- Se o usuário disser explicitamente "não precisa usar a skill" ou "usa o formato simples" → pode usar o schema básico

---

## Estrutura do Projeto

```
Master-social-design-system/
├── clients/          — Um subdiretório por cliente, cada um com CLAUDE.md próprio
├── skills/           — Skills compartilhadas entre todos os clientes
│   └── design/
│       └── json-prompt-generator/   ← USAR PARA TODO JSON DE IMAGEM COM REFERÊNCIA
```

---

## Regras Gerais de Produção

- Ao iniciar sessão em qualquer pasta de cliente, ler o CLAUDE.md daquele cliente primeiro
- Nunca misturar paleta, copy ou identidade visual entre clientes diferentes
- Sempre confirmar qual cliente está ativo antes de produzir qualquer conteúdo
