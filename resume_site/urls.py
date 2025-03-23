from django.contrib import admin
from django.urls import path, include  # ← include используется для подключения приложения

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('resume.urls')),  # ← Подключаем маршруты из приложения "resume"
]