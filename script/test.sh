#!/bin/bash
set -e

echo "🛡️ JINC Apps: DevOps Quality Gate (Local Vibe Check)"
echo "==================================================="

echo "📦 1. Atualizando Audit DB..."
gem install bundler-audit
bundle audit update

echo "🔍 2. Verificando Segurança (bundler-audit)..."
bundle audit check

echo "🔨 3. Compilando o site (Jekyll Build)..."
bundle exec jekyll build

echo "🔗 4. Validando HTML e Links (html-proofer)..."
bundle exec htmlproofer ./_site --disable-external || echo "⚠️ Aviso: HTML Proofer falhou localmente (comum no Windows por falta do libcurl). A validação real ocorrerá no CI (Ubuntu)."

echo "✅ Verificação local concluída! (Consulte eventuais avisos acima)"
