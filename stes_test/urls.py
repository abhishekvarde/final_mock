# from django.contrib import admin
from django.urls import path, include
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.otp, name='otp'),
    path('otp/', views.otp, name='otp'),
    path('main_test/', views.main_test, name='main_test'),
    path('calculate_result/', views.calculate_result, name='calculate_result'),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
