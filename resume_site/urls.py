from django.contrib import admin
from django.urls import path, include  # ← include используется для подключения приложения

urlpatterns = [
    path('', include('resume.urls')),  # ← Подключаем маршруты из приложения "resume"
]