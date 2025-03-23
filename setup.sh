#!/bin/bash

# 1️⃣ Устанавливаем Python и создаём виртуальное окружение
echo "🔹 Устанавливаем Python и создаём виртуальное окружение..."
python3 -m venv venv
source venv/bin/activate

# 2️⃣ Устанавливаем зависимости
echo "🔹 Устанавливаем зависимости из requirements.txt..."
pip install --upgrade pip
pip install -r requirements.txt

# 3️⃣ Выполняем миграции базы данных
echo "🔹 Применяем миграции базы данных..."
python manage.py migrate

# 4️⃣ Собираем статику
echo "🔹 Собираем статику..."
python manage.py collectstatic --noinput

# 5️⃣ Запускаем сервер Gunicorn
echo "🔹 Запускаем сервер Gunicorn..."
gunicorn resume_site.wsgi:application --bind 0.0.0.0:8000
