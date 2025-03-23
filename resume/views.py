from django.shortcuts import render
from .models import Resume

def resume_view(request):
    resume = Resume.objects.first()  # Получаем первую запись резюме
    return render(request, 'resume/resume.html', {'resume': resume})