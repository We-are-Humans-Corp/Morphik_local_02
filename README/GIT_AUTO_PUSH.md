# 🚀 Git Auto Push Commands

## 📋 Копируй и вставляй эти команды

### 1️⃣ Быстрый пуш с комментарием (ОБЯЗАТЕЛЬНО ИЗМЕНИ КОММЕНТАРИЙ!)
```bash
cd /Users/fedor/PycharmProjects/PythonProject/Morphik_local && \
git add . && \
git commit -m "feat: ЗДЕСЬ НАПИШИ ЧТО ИЗМЕНИЛ" && \
git push origin main
```

### 2️⃣ Пуш с тегом безопасности
```bash
cd /Users/fedor/PycharmProjects/PythonProject/Morphik_local && \
git add . && \
git tag -a v1.1-backup-$(date +%Y%m%d-%H%M) -m "Backup $(date +%Y-%m-%d)" && \
git commit -m "feat: ЗДЕСЬ НАПИШИ ЧТО ИЗМЕНИЛ" && \
git push origin main && \
git push origin v1.1-backup-$(date +%Y%m%d-%H%M)
```

### 3️⃣ Проверить статус перед пушем
```bash
cd /Users/fedor/PycharmProjects/PythonProject/Morphik_local && \
git status && \
echo "---" && \
git diff --stat
```

### 4️⃣ Полный цикл с проверкой
```bash
cd /Users/fedor/PycharmProjects/PythonProject/Morphik_local && \
echo "📊 Текущий статус:" && \
git status --short && \
echo "---" && \
echo "📝 Последние коммиты:" && \
git log --oneline -5 && \
echo "---" && \
echo "🏷️  Последний тег:" && \
git describe --tags --abbrev=0 && \
echo "---" && \
read -p "➡️  Введи комментарий для коммита: " commit_msg && \
git add . && \
git commit -m "$commit_msg" && \
git push origin main && \
echo "✅ Успешно запушено!"
```

## 🔴 ПРАВИЛА ДЛЯ ПУША

### ⚠️ ОБЯЗАТЕЛЬНО:
1. **ВСЕГДА** меняй комментарий коммита на актуальный
2. **НИКОГДА** не оставляй "ЗДЕСЬ НАПИШИ ЧТО ИЗМЕНИЛ"
3. **ОПИСЫВАЙ** что конкретно изменено

### 📝 Примеры ПРАВИЛЬНЫХ комментариев:
- `"feat: Добавлена авторизация через OAuth"`
- `"fix: Исправлена ошибка загрузки файлов"`
- `"update: Обновлена документация README"`
- `"refactor: Переработана структура базы данных"`
- `"test: Добавлены тесты для API endpoints"`

### ❌ Примеры НЕПРАВИЛЬНЫХ комментариев:
- `"update"` - слишком общий
- `"fix bug"` - непонятно какой баг
- `"123"` - бессмысленный
- `"ЗДЕСЬ НАПИШИ ЧТО ИЗМЕНИЛ"` - забыл изменить

## 🎯 Быстрые команды для конкретных случаев

### После изменения кода:
```bash
cd /Users/fedor/PycharmProjects/PythonProject/Morphik_local && \
git add . && \
git commit -m "feat: Добавлена новая функция [НАЗВАНИЕ]" && \
git push origin main
```

### После исправления бага:
```bash
cd /Users/fedor/PycharmProjects/PythonProject/Morphik_local && \
git add . && \
git commit -m "fix: Исправлена ошибка [ОПИСАНИЕ]" && \
git push origin main
```

### После обновления документации:
```bash
cd /Users/fedor/PycharmProjects/PythonProject/Morphik_local && \
git add . && \
git commit -m "docs: Обновлена документация [КАКАЯ]" && \
git push origin main
```

## 🔄 Откат последнего пуша (если что-то пошло не так)
```bash
cd /Users/fedor/PycharmProjects/PythonProject/Morphik_local && \
git reset --hard HEAD~1 && \
git push --force origin main
```

## 📌 ЗАПОМНИ:
**Комментарий коммита = история проекта. Пиши понятно!**