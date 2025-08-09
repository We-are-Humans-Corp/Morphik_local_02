# 🤖 РЕКОМЕНДОВАННЫЕ АГЕНТЫ ДЛЯ MORPHIK

## 📋 Быстрый список для копирования в чат

Скопируйте нужную группу агентов и вставьте в чат Claude Code:

### 🔥 УРОВЕНЬ 1: КРИТИЧЕСКИ ВАЖНЫЕ АГЕНТЫ

```
@ai-engineer - Интеграция LLM, RAG системы, векторный поиск
@backend-architect - Дизайн API, микросервисы, масштабирование
@database-optimizer - Оптимизация PostgreSQL, pgvector, индексы
@python-pro - FastAPI, async/await, производительность
@security-auditor - JWT, безопасность документов, OWASP
```

### 💎 УРОВЕНЬ 2: ОЧЕНЬ ПОЛЕЗНЫЕ АГЕНТЫ

```
@frontend-developer - Next.js, React, UI для документов
@ml-engineer - ML модели, inference, мониторинг
@deployment-engineer - Docker, CI/CD, Kubernetes
@performance-engineer - Оптимизация, кеширование, нагрузочное тестирование
@typescript-pro - TypeScript для frontend, типизация
```

### 🛠️ УРОВЕНЬ 3: СПЕЦИАЛИЗИРОВАННЫЕ АГЕНТЫ

```
@data-engineer - ETL для документов, обработка данных
@test-automator - E2E тесты, интеграционное тестирование
@api-documenter - OpenAPI спецификации, документация
@devops-troubleshooter - Отладка production, анализ логов
@cloud-architect - IaC, развертывание в облаке
```

### 🎯 КООРДИНАЦИОННЫЕ АГЕНТЫ

```
@context-manager - Управление контекстом больших проектов
@architect-reviewer - Ревью архитектурных решений
```

## 📚 ДЕТАЛЬНОЕ ОПИСАНИЕ АГЕНТОВ

### 1. AI Engineer (@ai-engineer)
**Почему критичен для Morphik:**
- Эксперт в интеграции LLM (OpenAI, Anthropic, Google, Ollama)
- Специализация на RAG системах с векторными БД
- Оптимизация промптов для анализа документов
- Создание пайплайнов обработки документов

### 2. Backend Architect (@backend-architect)
**Почему критичен для Morphik:**
- Дизайн масштабируемых API на FastAPI
- Архитектура микросервисов для Docker
- Оптимизация схем баз данных
- Стратегии кеширования с Redis

### 3. Database Optimizer (@database-optimizer)
**Почему критичен для Morphik:**
- Оптимизация PostgreSQL с pgvector
- Настройка векторного поиска
- Индексирование для быстрого поиска документов
- Кеширование часто используемых данных

### 4. Python Pro (@python-pro)
**Почему критичен для Morphik:**
- Эксперт в FastAPI и async/await
- Оптимизация производительности Python
- Создание эффективных пайплайнов обработки
- Комплексное тестирование с pytest

### 5. Security Auditor (@security-auditor)
**Почему критичен для Morphik:**
- Безопасность загрузки и обработки документов
- JWT авторизация и контроль доступа
- Шифрование документов
- Соответствие GDPR/privacy требованиям

## 🚀 РЕКОМЕНДУЕМАЯ ПОСЛЕДОВАТЕЛЬНОСТЬ ИСПОЛЬЗОВАНИЯ

1. **Начальная настройка:**
   ```
   @context-manager - установить контекст проекта
   @ai-engineer - настроить обработку документов
   @backend-architect - спроектировать API
   ```

2. **Реализация:**
   ```
   @python-pro - реализовать backend логику
   @database-optimizer - оптимизировать БД
   @frontend-developer - создать UI
   ```

3. **Оптимизация и безопасность:**
   ```
   @security-auditor - аудит безопасности
   @performance-engineer - оптимизация производительности
   @test-automator - создать тесты
   ```

4. **Развертывание:**
   ```
   @deployment-engineer - настроить CI/CD
   @devops-troubleshooter - решить проблемы
   ```

## 💡 СОВЕТЫ ПО ИСПОЛЬЗОВАНИЮ

1. **Для сложных задач** используйте несколько агентов последовательно
2. **Context Manager** обязателен для больших проектов (>10k токенов)
3. **Architect Reviewer** используйте после больших изменений
4. Агенты могут вызываться автоматически или явно через @

## 📁 ФАЙЛЫ АГЕНТОВ В ПАПКЕ

Все файлы агентов находятся в папке `/agents/`:
- ai-engineer.md
- backend-architect.md
- database-optimizer.md
- python-pro.md
- security-auditor.md
- frontend-developer.md
- ml-engineer.md
- deployment-engineer.md
- performance-engineer.md
- typescript-pro.md
- data-engineer.md
- test-automator.md
- api-documenter.md
- devops-troubleshooter.md
- cloud-architect.md
- context-manager.md
- architect-review.md