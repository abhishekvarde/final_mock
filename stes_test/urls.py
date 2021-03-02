# from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.welcome, name='welcome'),
    path('register/', views.register, name='register'),
    path('otp/', views.otp, name='otp'),
    path('rules/', views.rules, name='rules'),
    path('main_test/', views.main_test, name='main_test'),
    path('calculate_result/', views.calculate_result, name='calculate_result'),
    path('scroller/', views.scroller, name='scroller'),
    path('select_qset/', views.select_qset, name="select_qset"),
    path('validate/', views.check_qset, name='validate'),
    path('edit/', views.edit, name='edit')
]
