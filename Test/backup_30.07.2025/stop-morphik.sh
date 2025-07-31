#!/bin/bash

# Остановка Morphik

echo "🛑 Остановка Morphik..."

# Переход в основную директорию
cd "$(dirname "$0")/.."

# Остановка контейнеров
docker compose --profile ollama down

echo "✅ Morphik остановлен"