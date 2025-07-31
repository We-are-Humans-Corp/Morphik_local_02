# 🎯 MORPHIK - ГЛАВНЫЙ README

## 📌 ДЛЯ НОВЫХ РАЗРАБОТЧИКОВ

**Начните с этих файлов:**
1. [QUICK_START.md](QUICK_START.md) - запуск за 1 минуту
2. [STRUCTURE.md](STRUCTURE.md) - где что находится
3. [README_WORKFLOW.md](README_WORKFLOW.md) - как безопасно работать
4. [SIMPLE_SETUP.md](../Test/SIMPLE_SETUP.md) - новая упрощенная структура

## 🚀 Morphik Version - 31.07.2025

### 🆕 Что нового:
- ✅ Исправлена загрузка файлов
- ✅ Решены проблемы с подключением к Ollama
- ✅ Создана упрощенная структура проекта
- ✅ Можно запускать stable и experimental версии одновременно

## Быстрый запуск

```bash
./start-morphik.sh
```

Этот скрипт запустит ВСЮ систему Morphik без вопросов и сборок.

## Остановка

```bash
./stop-morphik.sh
```

## Что включено

- **API** (morphik_local-morphik) - порт 8000
- **UI** (morphik_local-ui) - порт 3000  
- **База данных** (morphik_local-postgres)
- **Redis** (redis:7-alpine)
- **Worker** (morphik_local-worker)
- **Ollama** (ollama/ollama) - порт 11434

## Доступ

- UI: http://localhost:3000
- API: http://localhost:8000
- API Docs: http://localhost:8000/docs

## Логин

- Username: `fedor`
- Password: `usertest1`

Или:
- Username: `testuser`
- Password: `testpassword123`

## Текущее состояние проекта (31.07.2025)

### ✅ Работает сейчас:
- **Experimental версия** полностью функциональна
- Загрузка и обработка файлов исправлена
- Ollama интегрирован с моделями llama3.2:3b и nomic-embed-text
- Worker корректно обрабатывает документы

### 📁 Новая структура:
```
Test/
├── infrastructure/           # Общие сервисы (Ollama, Redis, PostgreSQL)
├── Morphik_local/           # Стабильная версия
├── Morphik_experimental/    # Экспериментальная версия
└── Упрощенные конфиги для запуска
```

### 🔧 Что было исправлено:
- Проблема "Name or service not known" при подключении к Ollama
- Сетевая изоляция между контейнерами
- Процесс обработки файлов теперь завершается успешно
- Все URL изменены с api.morphik.ai на localhost

## Образы Docker

Сохранены в этой папке:
- morphik-ui.tar.gz
- morphik-api.tar.gz
- morphik-worker.tar.gz
- morphik-postgres.tar.gz

## Восстановление образов

Если нужно загрузить образы заново:

```bash
docker load < morphik-ui.tar.gz
docker load < morphik-api.tar.gz
docker load < morphik-worker.tar.gz
docker load < morphik-postgres.tar.gz
```