# 🔧 Общая инфраструктура Morphik

Эта папка содержит общие сервисы для ВСЕХ версий Morphik.

## 🚀 Запуск инфраструктуры (один раз!)

```bash
# 1. Запустить общие сервисы
docker compose up -d

# 2. Загрузить модели в Ollama (если еще не загружены)
docker exec morphik_ollama_shared ollama pull llama3.2:3b
docker exec morphik_ollama_shared ollama pull nomic-embed-text
```

## 📦 Что здесь запускается:

- **Ollama** (порт 11434) - LLM модели
- **PostgreSQL** (порт 5432) - две БД: morphik_stable и morphik_experimental
- **Redis** (порт 6379) - очереди и кеш

## 🌐 Сеть

Все сервисы работают в сети `morphik_shared_network`.

## ⚡ Использование в версиях

Каждая версия (stable/experimental) подключается к этой сети и использует общие сервисы:

```yaml
# В docker-compose.yml каждой версии
networks:
  default:
    external:
      name: morphik_shared_network
```

## 🛑 Остановка

```bash
docker compose down
```

**Важно:** Данные сохраняются в volumes и не удаляются при остановке.