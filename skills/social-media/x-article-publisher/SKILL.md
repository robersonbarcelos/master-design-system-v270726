---
name: x-article-publisher
metadata:
  version: 1.2.0
  location: global
  canonical_location: "C:\\Users\\User\\.claude\\skills\\x-article-publisher\\SKILL.md"
  source: "https://github.com/wshuyi/x-article-publisher-skill"
---

# x-article-publisher

Skill de **publicação** — recebe um arquivo Markdown gerado pelo `article-writer-sms`
e publica no X (Twitter) Articles via automação de browser (Playwright MCP).

**Fonte única:** `C:\Users\User\.claude\skills\x-article-publisher\SKILL.md`

**Scripts auxiliares:** `C:\Users\User\.claude\skills\x-article-publisher\scripts\`
- `parse_markdown.py` — extrai título, imagens com block_index, HTML
- `copy_to_clipboard.py` — copia imagem ou HTML para área de transferência
- `table_to_image.py` — converte tabela Markdown em PNG

**Pré-requisitos:**
- Playwright MCP conectado
- Conta X com Premium+ ativa e logada no browser
- Python 3.9+ com `pip install Pillow pywin32 clip-util` (Windows)

**Nunca publica automaticamente — sempre salva como rascunho.**
