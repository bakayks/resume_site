from django.urls import path
from .views import resume_view  # ← Импортируем представление из текущего приложения

urlpatterns = [
    path('', resume_view, name='resume'),
]