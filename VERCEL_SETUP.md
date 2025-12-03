# Настройка мини-приложения на Vercel

## Проблема
Если мини-приложение не открывается, проверьте следующее:

## Решение 1: Проверьте структуру файлов на Vercel

На Vercel файл `index.html` должен быть в корне проекта или в папке `webapp`.

### Вариант A: Файл в корне проекта
Если `index.html` находится в корне проекта на Vercel:
```env
WEBAPP_URL=https://prognoz-ivory.vercel.app/
```

### Вариант B: Файл в папке webapp
Если `index.html` находится в папке `webapp`:
```env
WEBAPP_URL=https://prognoz-ivory.vercel.app/webapp/index.html
```

## Решение 2: Обновите .env файл

1. Откройте файл `.env` в корне проекта
2. Добавьте или обновите строку:
```env
WEBAPP_URL=https://prognoz-ivory.vercel.app/
```
3. Перезапустите бота

## Решение 3: Проверьте доступность

Откройте в браузере:
- https://prognoz-ivory.vercel.app/ - должен открыться сайт
- https://prognoz-ivory.vercel.app/index.html - если файл в корне
- https://prognoz-ivory.vercel.app/webapp/index.html - если файл в папке webapp

Используйте тот URL, который работает в браузере.

## Решение 4: Настройка Vercel (если нужно)

Если файл не открывается, создайте файл `vercel.json` в корне проекта:

```json
{
  "rewrites": [
    {
      "source": "/",
      "destination": "/index.html"
    }
  ]
}
```

## Важно

- URL должен заканчиваться на `/` если файл в корне
- URL должен заканчиваться на `/index.html` если файл в подпапке
- После изменения .env обязательно перезапустите бота
- Проверьте, что сайт открывается в браузере перед настройкой бота

