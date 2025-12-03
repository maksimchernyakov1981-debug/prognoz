# Скрипт для копирования JSON файлов в webapp
# Запуск: powershell -ExecutionPolicy Bypass -File copy_data_files.ps1

Write-Host "Копирование JSON файлов в webapp..." -ForegroundColor Green

# Создаем папки
New-Item -ItemType Directory -Force -Path "data\medical" | Out-Null
New-Item -ItemType Directory -Force -Path "data\preparation" | Out-Null
New-Item -ItemType Directory -Force -Path "data\clinic" | Out-Null

# Копируем файлы из корня проекта
$basePath = Split-Path -Parent $PSScriptRoot

# Медицинские данные
if (Test-Path "$basePath\data\medical\lab_tests_categorized.json") {
    Copy-Item "$basePath\data\medical\lab_tests_categorized.json" -Destination "data\medical\" -Force
    Write-Host "✓ Скопирован lab_tests_categorized.json" -ForegroundColor Green
}

if (Test-Path "$basePath\data\medical\doctors.json") {
    Copy-Item "$basePath\data\medical\doctors.json" -Destination "data\medical\" -Force
    Write-Host "✓ Скопирован doctors.json" -ForegroundColor Green
}

if (Test-Path "$basePath\data\medical\services.json") {
    Copy-Item "$basePath\data\medical\services.json" -Destination "data\medical\" -Force
    Write-Host "✓ Скопирован services.json" -ForegroundColor Green
}

if (Test-Path "$basePath\data\medical\promotions.json") {
    Copy-Item "$basePath\data\medical\promotions.json" -Destination "data\medical\" -Force
    Write-Host "✓ Скопирован promotions.json" -ForegroundColor Green
}

# Подготовка
if (Test-Path "$basePath\data\preparation\analyses_preparation.json") {
    Copy-Item "$basePath\data\preparation\analyses_preparation.json" -Destination "data\preparation\" -Force
    Write-Host "✓ Скопирован analyses_preparation.json" -ForegroundColor Green
}

if (Test-Path "$basePath\data\preparation\procedures_preparation.json") {
    Copy-Item "$basePath\data\preparation\procedures_preparation.json" -Destination "data\preparation\" -Force
    Write-Host "✓ Скопирован procedures_preparation.json" -ForegroundColor Green
}

# Контакты
if (Test-Path "$basePath\data\clinic\contacts.json") {
    Copy-Item "$basePath\data\clinic\contacts.json" -Destination "data\clinic\" -Force
    Write-Host "✓ Скопирован contacts.json" -ForegroundColor Green
}

Write-Host "`nГотово! Все файлы скопированы." -ForegroundColor Green
Write-Host "Теперь загрузите папку webapp на Vercel." -ForegroundColor Yellow

