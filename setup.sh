#!/bin/bash

echo "🔹 Активируем виртуальное окружение..."
python3 -m venv venv
source venv/bin/activate

echo "🔹 Устанавливаем зависимости..."
pip install --upgrade pip
pip install -r requirements.txt

echo "🔹 Применяем миграции базы данных..."
python manage.py migrate

echo "🔹 Собираем статику..."
python manage.py collectstatic --noinput
