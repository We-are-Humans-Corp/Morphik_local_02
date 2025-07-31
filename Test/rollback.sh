#!/bin/bash
# Скрипт для быстрого отката к последней рабочей версии

echo "🔄 Откат к последней резервной копии..."

# Проверяем наличие бэкапа
if [ ! -d "backups/latest" ] || [ ! "$(ls -A backups/latest/*.tar 2>/dev/null)" ]; then
    echo "❌ Резервная копия не найдена!"
    echo "💡 Сначала выполните ./backup.sh"
    exit 1
fi

# Останавливаем контейнеры
echo "🛑 Остановка текущих контейнеров..."
docker compose down

# Загружаем образы из бэкапа
echo "📥 Восстановление образов из резервной копии..."
docker load < backups/latest/ui.tar
docker load < backups/latest/api.tar
docker load < backups/latest/worker.tar
docker load < backups/latest/postgres.tar

# Запускаем контейнеры
echo "🚀 Запуск восстановленной версии..."
docker compose --profile ollama up -d

# Ждём запуска
sleep 10

# Проверяем статус
echo ""
echo "📊 Статус после отката:"
docker ps --format "table {{.Names}}\t{{.Status}}"

echo ""
echo "✅ Откат завершён!"
echo "🌐 Проверьте систему: http://localhost:3000"