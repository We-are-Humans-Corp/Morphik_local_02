#!/bin/bash

# Скрипт для запуска локального API с подключением к удаленному серверу
# API работает локально, но использует БД и сервисы с сервера 135.181.106.12

echo "🚀 Запуск Morphik API в режиме разработки..."
echo "🌐 Подключение к удаленному серверу: 135.181.106.12"

# Загрузка переменных окружения
if [ -f .env.server ]; then
    export $(cat .env.server | grep -v '^#' | xargs)
fi

# Переопределение переменных для прямого подключения
export DATABASE_URL="postgresql://morphik:morphik@135.181.106.12:5432/morphik"
export REDIS_URL="redis://135.181.106.12:6379"
export OLLAMA_BASE_URL="http://135.181.106.12:11434"

echo "✅ Конфигурация:"
echo "   - API (локально): http://localhost:8001"
echo "   - PostgreSQL (сервер): 135.181.106.12:5432"
echo "   - Redis (сервер): 135.181.106.12:6379"
echo "   - Ollama (сервер): 135.181.106.12:11434"
echo ""

# Проверка подключения к БД
echo "🔍 Проверка подключения к базе данных..."
docker run --rm postgres:15 psql "$DATABASE_URL" -c "SELECT 1" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "✅ Подключение к PostgreSQL успешно"
else
    echo "❌ Не удалось подключиться к PostgreSQL"
    exit 1
fi

# Запуск API через docker-compose
echo ""
echo "🔄 Запуск API с hot reload..."
echo "Для остановки нажмите Ctrl+C"
echo ""

docker-compose -f docker-compose.dev.yml --env-file .env.server up morphik-dev