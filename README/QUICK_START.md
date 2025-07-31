# 🚀 MORPHIK - БЫСТРЫЙ СТАРТ

## 📍 ГДЕ МЫ НАХОДИМСЯ

```
/Users/fedor/PycharmProjects/PythonProject/Morphik_local/
├── Test/                      # 👈 РАБОЧАЯ ДИРЕКТОРИЯ
│   ├── Morphik_local/        # ✅ Стабильная версия (НЕ ТРОГАТЬ!)
│   ├── Morphik_experimental/ # 🧪 Для экспериментов
│   └── backup_30.07.2025/    # 📦 Готовые Docker образы
└── README/                    # 📚 Вся документация
```

## 🏃 ЗАПУСК ЗА 1 МИНУТУ

```bash
cd /Users/fedor/PycharmProjects/PythonProject/Morphik_local/Test/Morphik_local
docker compose --profile ollama up -d
```

**Готово!** Система доступна:
- UI: http://localhost:3000
- API: http://localhost:8000

## 🔑 ДОСТУП

- Username: `fedor` / Password: `usertest1`
- Username: `testuser` / Password: `testpassword123`

## ⚠️ ВАЖНЫЕ ПРАВИЛА

1. **НИКОГДА** не меняйте код в `Morphik_local` без бэкапа
2. **ВСЕГДА** используйте `./backup.sh` перед изменениями
3. **ТЕСТИРУЙТЕ** в `Morphik_experimental`
4. **ОТКАТ** за 30 секунд: `./rollback.sh`

## 🛠️ ОСНОВНЫЕ КОМАНДЫ

```bash
# Создать резервную копию
./backup.sh

# Откатиться к последней рабочей версии
./rollback.sh

# Переключиться на экспериментальную версию
./experiment.sh

# Вернуться к стабильной версии
./switch_to_stable.sh
```

## 🔧 ЕСЛИ ЧТО-ТО СЛОМАЛОСЬ

1. Не паникуйте!
2. Запустите: `./rollback.sh`
3. Через 30 секунд всё снова работает

## 📋 ЧТО ДАЛЬШЕ?

- [Детальная документация](README_WORKFLOW.md)
- [История изменений](MORPHIK_CHANGELOG.md)
- [Настройка сервера](SERVER_ACCESS.md)
- [Git и деплой](GIT_DEPLOYMENT_SETUP.md)