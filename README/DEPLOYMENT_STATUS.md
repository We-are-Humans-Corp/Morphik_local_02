# 📊 DEPLOYMENT STATUS - MORPHIK

**Последнее обновление:** 31.07.2025 14:15

## 🟢 Текущий статус: РАБОТАЕТ (Experimental)

### 🏃 Активные контейнеры:

| Сервис | Контейнер | Статус | Порт |
|--------|-----------|---------|------|
| UI | morphik_experimental-ui-1 | ✅ Running | 3000 |
| API | morphik_experimental-morphik-1 | ✅ Running | 8000 |
| Worker | morphik_experimental-worker-1 | ✅ Running | - |
| PostgreSQL | morphik_experimental-postgres-1 | ✅ Healthy | 5432 |
| Redis | morphik_experimental-redis-1 | ✅ Healthy | 6379 |
| Ollama | morphik_experimental-ollama-1 | ✅ Running | 11434 |

### 🔗 Доступ:

- **UI:** http://localhost:3000 ✅
- **API:** http://localhost:8000 ✅
- **API Docs:** http://localhost:8000/docs ✅

### 👤 Учетные данные:

- Username: `fedor` / Password: `usertest1`
- Username: `testuser` / Password: `testpassword123`

### 🤖 Загруженные модели:

| Модель | Размер | Статус |
|--------|--------|---------|
| llama3.2:3b | 2.0 GB | ✅ Loaded |
| nomic-embed-text | 274 MB | ✅ Loaded |

### ✅ Что работает:

- ✅ Аутентификация и авторизация
- ✅ Загрузка документов (single и batch)
- ✅ Обработка файлов через Worker
- ✅ Генерация embeddings через Ollama
- ✅ Векторный поиск
- ✅ UI полностью функционален

### 🔧 Последние исправления:

1. **Ollama подключение** - исправлена ошибка "Name or service not known"
2. **Сетевая конфигурация** - все сервисы теперь в одной сети
3. **Worker** - корректно обрабатывает документы
4. **Статус документов** - правильно меняется с "processing" на "completed"

### 📁 Структура данных:

```
storage/
└── ingest_uploads/
    ├── 582b9306-4712-4e88-a7a9-1b084688c3eb/ (test_morphik.txt - completed)
    └── 628f49ae-aeeb-44e0-ba96-15a95a4e2bb1/ (CV_Ekaterina Nobs_en.pdf)
```

### 🐳 Docker ресурсы:

- **Используемые образы:** ~8 GB
- **Volumes:** 3 (postgres_data, ollama_data, redis_data)
- **Сети:** morphik_experimental_morphik-network

### ⚠️ Известные проблемы:

- Нет на данный момент

### 🚀 Следующие шаги:

1. Протестировать новую упрощенную структуру с общей инфраструктурой
2. Перенести успешные изменения в stable версию
3. Настроить мониторинг и логирование
4. Добавить автоматические тесты

### 📝 Команды управления:

```bash
# Проверить статус
docker ps | grep morphik

# Посмотреть логи
docker logs morphik_experimental-worker-1 --tail 50

# Перезапустить сервис
docker restart morphik_experimental-worker-1

# Остановить все
cd Test/Morphik_experimental && docker compose down
```

### 🔄 История развертываний:

| Дата | Версия | Статус | Примечание |
|------|---------|---------|------------|
| 31.07.2025 | experimental | ✅ Success | Исправлена загрузка файлов |
| 30.07.2025 | local | ✅ Success | Первоначальная настройка |