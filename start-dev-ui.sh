#!/bin/bash

echo "🚀 Запускаем UI в режиме разработки..."

# Переходим в папку UI
cd Morphik_local/ee/ui-component

# Устанавливаем зависимости если нужно
if [ ! -d "node_modules" ]; then
    echo "📦 Устанавливаем зависимости..."
    npm install
fi

# Настраиваем переменные окружения для подключения к Docker сервисам
export NEXT_PUBLIC_API_URL=http://localhost:8000
export API_URL=http://localhost:8000

echo "✨ Запускаем Next.js в режиме разработки..."
echo "📝 Изменения в коде будут применяться автоматически!"
echo "🌐 UI доступен на http://localhost:3000"

# Запускаем dev сервер
npm run dev