# Инструкция: Копирование JSON файлов в webapp

## Для работы мини-приложения нужно скопировать следующие файлы:

### 1. Создайте структуру папок:
```
webapp/
  data/
    medical/
    preparation/
    clinic/
```

### 2. Скопируйте файлы:

**Из `data/medical/` в `webapp/data/medical/`:**
- `lab_tests_categorized.json` - данные для калькулятора анализов
- `doctors.json` - список всех врачей
- `services.json` - каталог услуг
- `promotions.json` - акции

**Из `data/preparation/` в `webapp/data/preparation/`:**
- `analyses_preparation.json` - подготовка к анализам
- `procedures_preparation.json` - подготовка к процедурам

**Из `data/clinic/` в `webapp/data/clinic/`:**
- `contacts.json` - контакты клиники

## Команды для копирования (Windows PowerShell):

```powershell
# Создать папки
New-Item -ItemType Directory -Force -Path "webapp\data\medical"
New-Item -ItemType Directory -Force -Path "webapp\data\preparation"
New-Item -ItemType Directory -Force -Path "webapp\data\clinic"

# Копировать файлы
Copy-Item "data\medical\lab_tests_categorized.json" -Destination "webapp\data\medical\"
Copy-Item "data\medical\doctors.json" -Destination "webapp\data\medical\"
Copy-Item "data\medical\services.json" -Destination "webapp\data\medical\"
Copy-Item "data\medical\promotions.json" -Destination "webapp\data\medical\"
Copy-Item "data\preparation\analyses_preparation.json" -Destination "webapp\data\preparation\"
Copy-Item "data\preparation\procedures_preparation.json" -Destination "webapp\data\preparation\"
Copy-Item "data\clinic\contacts.json" -Destination "webapp\data\clinic\"
```

## Или вручную:

1. Откройте папку `data/medical/`
2. Скопируйте все 4 JSON файла
3. Вставьте в `webapp/data/medical/`
4. Повторите для `data/preparation/` и `data/clinic/`

## После копирования:

1. Загрузите обновленные файлы на Vercel
2. Мини-приложение сможет загружать данные из JSON файлов
3. Все функции будут работать с реальными данными

