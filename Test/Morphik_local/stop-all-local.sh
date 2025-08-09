#!/bin/bash

echo "🛑 Останавливаем все локальные сервисы Morphik"
echo "=============================================="

# Цвета для вывода
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Останавливаем UI процессы
echo -e "${YELLOW}🔄 Останавливаем UI процессы...${NC}"
pkill -f "npm run dev" 2>/dev/null
pkill -f "next dev" 2>/dev/null

# Останавливаем Docker контейнеры
echo -e "${YELLOW}🔄 Останавливаем Docker контейнеры...${NC}"
docker-compose -f docker-compose.local-api.yml down

# Очистка
echo -e "${YELLOW}🧹 Очистка...${NC}"
docker system prune -f 2>/dev/null

echo ""
echo -e "${GREEN}✅ Все сервисы остановлены${NC}"
echo ""
echo "Для повторного запуска используйте:"
echo "./start-full-local.sh"