# Полная версия мини-приложения

## Что нужно добавить:

1. **Калькулятор анализов** - полный функционал:
   - Все категории анализов
   - Список тестов в каждой категории
   - Корзина для выбранных анализов
   - Подсчет общей стоимости
   - Учет стоимости забора материала

2. **Все врачи** - полный список:
   - Все 40+ врачей
   - Фильтрация по специальности
   - Поиск по имени
   - Детальная информация о каждом враче

3. **Все услуги** - полный каталог:
   - Все категории услуг
   - Детальная информация об услугах
   - Цены
   - Описания

4. **Подготовка к процедурам** - все типы:
   - УЗИ различных органов
   - ФГДС
   - Другие процедуры

5. **Акции** - список акций

6. **Навигация** - полная навигация между всеми уровнями

## JSON файлы для копирования в webapp:

- `data/medical/lab_tests_categorized.json` → `webapp/data/medical/lab_tests_categorized.json`
- `data/medical/doctors.json` → `webapp/data/medical/doctors.json`
- `data/medical/services.json` → `webapp/data/medical/services.json`
- `data/medical/promotions.json` → `webapp/data/medical/promotions.json`
- `data/preparation/analyses_preparation.json` → `webapp/data/preparation/analyses_preparation.json`
- `data/preparation/procedures_preparation.json` → `webapp/data/preparation/procedures_preparation.json`
- `data/clinic/contacts.json` → `webapp/data/clinic/contacts.json`

