#!/bin/bash
# setup-client.sh
# Cria a estrutura de pasta para um novo cliente no Production System
#
# Uso:
#   ./setup-client.sh joao-silva
#   ./setup-client.sh clinica-dra-ana
#
# O nome deve ser em kebab-case (minusculas, sem espacos, sem acentos)

set -e

NOME=$1
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
TEMPLATE_DIR="$BASE_DIR/clients/_template"
CLIENT_DIR="$BASE_DIR/clients/$NOME"

# Validacao
if [ -z "$NOME" ]; then
    echo "Uso: ./setup-client.sh [nome-do-cliente]"
    echo "Exemplo: ./setup-client.sh joao-silva"
    exit 1
fi

# Verifica se o cliente ja existe
if [ -d "$CLIENT_DIR" ]; then
    echo "Cliente '$NOME' ja existe em: $CLIENT_DIR"
    echo "Abra a pasta no Claude Code para continuar."
    exit 0
fi

# Cria a estrutura
echo "Criando cliente: $NOME"

mkdir -p "$CLIENT_DIR/.agents"
mkdir -p "$CLIENT_DIR/runs"

# Copia os templates
cp "$TEMPLATE_DIR/.agents/social-media-context-sms.md" "$CLIENT_DIR/.agents/social-media-context-sms.md"
cp "$TEMPLATE_DIR/brand-spec.md" "$CLIENT_DIR/brand-spec.md"
cp "$TEMPLATE_DIR/DESIGN.md" "$CLIENT_DIR/DESIGN.md"
cp "$TEMPLATE_DIR/CLAUDE.md" "$CLIENT_DIR/CLAUDE.md"

# Formata o nome (capitaliza cada palavra)
NOME_FORMATADO=$(echo "$NOME" | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)} 1')

# Substitui o placeholder pelo nome do cliente
sed -i "s/\[NOME DO CLIENTE\]/$NOME_FORMATADO/g" "$CLIENT_DIR/CLAUDE.md"
sed -i "s/\[NOME DO CLIENTE\]/$NOME_FORMATADO/g" "$CLIENT_DIR/.agents/social-media-context-sms.md"
sed -i "s/\[NOME DO CLIENTE\]/$NOME_FORMATADO/g" "$CLIENT_DIR/brand-spec.md"
sed -i "s/\[NOME DO CLIENTE\]/$NOME_FORMATADO/g" "$CLIENT_DIR/DESIGN.md"

echo ""
echo "Estrutura criada com sucesso:"
echo "  clients/$NOME/"
echo "    .agents/social-media-context-sms.md"
echo "    brand-spec.md"
echo "    DESIGN.md"
echo "    CLAUDE.md"
echo "    runs/"
echo ""
echo "Proximo passo:"
echo "  Abra a pasta 'clients/$NOME' no Claude Code"
echo "  Claude vai iniciar o onboarding automaticamente."
