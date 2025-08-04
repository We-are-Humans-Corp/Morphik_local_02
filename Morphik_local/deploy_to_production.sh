#!/bin/bash

# Полный скрипт деплоя на продакшн сервер

set -e  # Останавливаемся при ошибке

echo "🚀 Начинаем деплой на продакшн сервер 135.181.106.12"
echo ""

# 1. Синхронизация с промежуточной версией
echo "📂 Шаг 1: Синхронизация файлов..."
./sync_to_server_copy.sh

# 2. Переход в промежуточную директорию и git операции
SERVER_COPY_DIR="/Users/fedor/PycharmProjects/PythonProject/Morphik_server_135.181.106.12"

echo ""
echo "📝 Шаг 2: Коммит изменений в Git..."
cd "$SERVER_COPY_DIR"

# Проверяем статус git
git status

# Спрашиваем подтверждение
echo ""
read -p "Продолжить с коммитом? (y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    # Добавляем все изменения
    git add .
    
    # Запрашиваем сообщение коммита
    echo "Введите сообщение коммита:"
    read COMMIT_MSG
    
    # Коммитим
    git commit -m "$COMMIT_MSG" || echo "Нет изменений для коммита"
    
    # Пушим в GitHub
    echo ""
    echo "📤 Шаг 3: Push в GitHub..."
    git push origin main
    
    # Деплой на сервер
    echo ""
    echo "🌐 Шаг 4: Деплой на сервер 135.181.106.12..."
    
    ssh root@135.181.106.12 << 'EOF'
set -e

echo "📥 Получаем последние изменения из GitHub..."
cd /opt/morphik
git pull origin main

echo ""
echo "🐳 Перезапускаем Docker контейнеры..."
docker compose down
docker compose --profile ollama up -d --build

echo ""
echo "✅ Проверяем статус сервисов..."
sleep 10
docker compose ps

echo ""
echo "🔍 Проверяем доступность сервисов..."
curl -s http://localhost:8000/health || echo "API еще запускается..."
EOF

    echo ""
    echo "✅ Деплой успешно завершен!"
    echo ""
    echo "Проверьте:"
    echo "- UI: http://135.181.106.12:3000"
    echo "- API: http://135.181.106.12:8000"
    echo "- API Docs: http://135.181.106.12:8000/docs"
    
else
    echo "❌ Деплой отменен"
fi