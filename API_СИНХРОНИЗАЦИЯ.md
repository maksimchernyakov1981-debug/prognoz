# Автоматическая синхронизация через API

## Преимущества
✅ **Нет необходимости копировать файлы** - данные загружаются напрямую из бота  
✅ **Всегда актуальные данные** - мини-приложение получает данные в реальном времени  
✅ **Не нужно обновлять Vercel** - данные обновляются автоматически при изменении в боте  

## Как это работает

1. Бот запускает HTTP API сервер на порту 8080 (по умолчанию)
2. Мини-приложение загружает данные через API endpoints
3. При изменении данных в боте они сразу доступны через API

## Настройка

### Шаг 1: Установка зависимостей

```bash
pip install aiohttp
```

### Шаг 2: Настройка переменных окружения

Добавьте в `.env` файл:

```env
# API сервер (опционально, по умолчанию localhost:8080)
API_HOST=localhost
API_PORT=8080

# URL API для мини-приложения (если бот на другом сервере)
API_URL=http://localhost:8080
```

### Шаг 3: Настройка мини-приложения

В `webapp/index.html` измените URL загрузки данных:

**Было:**
```javascript
fetch(`/data/medical/promotions.json?t=${cacheBuster}`)
```

**Стало:**
```javascript
fetch(`http://localhost:8080/api/promotions?t=${cacheBuster}`)
```

Или используйте переменную окружения:
```javascript
const API_URL = 'http://localhost:8080'; // или ваш URL
fetch(`${API_URL}/api/promotions?t=${cacheBuster}`)
```

### Шаг 4: Настройка для продакшн

Если бот работает на сервере:

1. **Настройте доступ к API:**
   - Откройте порт 8080 в файрволе
   - Или используйте reverse proxy (nginx)

2. **Настройте HTTPS:**
   - Используйте nginx с SSL сертификатом
   - Или используйте ngrok для тестирования

3. **Обновите URL в мини-приложении:**
   ```javascript
   const API_URL = 'https://your-bot-server.com:8080';
   ```

## Доступные API endpoints

- `GET /api/promotions` - Акции
- `GET /api/services` - Услуги
- `GET /api/doctors` - Врачи
- `GET /api/lab_tests` - Анализы
- `GET /api/analyses_preparation` - Подготовка к анализам
- `GET /api/procedures_preparation` - Подготовка к процедурам
- `GET /api/contacts` - Контакты

## Пример использования

```javascript
// Загрузка акций
async function loadPromotions() {
    const response = await fetch('http://localhost:8080/api/promotions');
    const data = await response.json();
    console.log(data);
}
```

## Безопасность

Для продакшн рекомендуется:
1. Добавить аутентификацию (API ключи)
2. Использовать HTTPS
3. Ограничить доступ по IP
4. Добавить rate limiting

## Отладка

Проверьте работу API:
```bash
curl http://localhost:8080/api/promotions
```

Или откройте в браузере:
```
http://localhost:8080/api/promotions
```

