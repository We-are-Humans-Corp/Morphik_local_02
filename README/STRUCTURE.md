# 📂 СТРУКТУРА ПРОЕКТА MORPHIK

## 🗂️ Основные директории (обновлено 31.07.2025)

```
Morphik_local/
├── Test/                           # 👈 ВСЯ РАБОТА ЗДЕСЬ
│   ├── infrastructure/            # 🔧 НОВОЕ! Общая инфраструктура
│   │   ├── docker-compose.yml    # Ollama, Redis, PostgreSQL
│   │   ├── init-databases.sh     # Инициализация БД
│   │   └── README.md             # Документация
│   │
│   ├── Morphik_local/             # ✅ СТАБИЛЬНАЯ версия
│   │   ├── core/                  # Backend API (Python/FastAPI)
│   │   ├── ee/ui-component/       # Frontend UI (Next.js)
│   │   ├── docker-compose.yml     # Конфигурация Docker
│   │   ├── morphik.toml          # Конфигурация системы
│   │   └── storage/              # Загруженные документы
│   │
│   ├── Morphik_experimental/      # 🧪 Для тестов и экспериментов
│   │   └── (такая же структура как в Morphik_local)
│   │
│   ├── morphik_stable_clean.yml   # 🆕 Упрощенный запуск stable
│   ├── morphik_experimental_clean.yml # 🆕 Упрощенный запуск experimental
│   ├── SIMPLE_SETUP.md           # 🆕 Инструкция по новой структуре
│   │
│   ├── backup_30.07.2025/        # 📦 Docker образы (актуальные)
│   │   ├── morphik-ui.tar.gz    # UI образ (69MB)
│   │   ├── morphik-api.tar.gz   # API образ (862MB)
│   │   └── start-morphik.sh     # Скрипт запуска
│   │
│   └── backups/                  # 💾 Резервные копии
│       ├── latest/              # Последняя резервная копия
│       └── archive/             # Архив старых версий
│
├── README/                       # 📚 Вся документация
│   ├── QUICK_START.md          # Быстрый старт
│   ├── STRUCTURE.md            # Этот файл
│   └── ...                     # Другие документы
│
└── Main/                        # 🗄️ Архив старых версий

```

## 🆕 Новая архитектура

### Разделение инфраструктуры и кода:
1. **infrastructure/** - общие сервисы для всех версий
2. **Morphik_local/** - только код стабильной версии
3. **Morphik_experimental/** - только код экспериментальной версии

### Преимущества:
- Модели LLM загружаются один раз
- Можно запускать обе версии одновременно
- Нет дублирования ресурсов
- Четкое разделение между инфраструктурой и кодом

## 🔑 Ключевые файлы

### В Test/Morphik_local/:

- `docker-compose.yml` - главный файл для запуска всех сервисов
- `morphik.toml` - конфигурация моделей и провайдеров
- `.env` - переменные окружения (создаётся автоматически)
- `README_WORKING.md` - описание текущей рабочей версии

### Скрипты управления (в Test/):

- `backup.sh` - создание резервной копии
- `rollback.sh` - откат к последней рабочей версии
- `experiment.sh` - переключение на экспериментальную версию
- `switch_to_stable.sh` - возврат к стабильной версии

## 🐳 Docker контейнеры

1. **morphik_local-ui** - Frontend (порт 3000)
2. **morphik_local-morphik** - Backend API (порт 8000)
3. **morphik_local-worker** - Фоновые задачи
4. **morphik_local-postgres** - База данных (порт 5432)
5. **morphik_local-redis** - Очереди и кеш (порт 6379)
6. **morphik_local-ollama** - Локальные LLM модели (порт 11434)

## 🔧 Где что менять

- **Backend логика**: `core/api.py`, `core/services/`
- **Frontend UI**: `ee/ui-component/components/`
- **Конфигурация Docker**: `docker-compose.yml`
- **Модели AI**: `morphik.toml`
- **База данных**: `core/database/`