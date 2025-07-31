#!/bin/bash

# Скрипт для остановки всего стека Morphik

echo "🛑 Остановка Morphik..."
echo ""

# Остановка UI процесса
echo "🖥️  Остановка UI..."
pkill -f "next-server" || echo "UI процесс не найден"

# Остановка контейнеров
echo "🐳 Остановка Docker контейнеров..."
docker compose --profile ollama down

echo ""
echo "✅ Все сервисы остановлены"
echo ""

# Опционально можно добавить очистку
if [ "$1" == "--clean" ]; then
    echo "🧹 Очистка данных..."
    docker compose --profile ollama down -v
    echo "✅ Данные очищены"
fi