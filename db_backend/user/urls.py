from django.urls import path 
from . import views

urlpatterns = [
    path('create/', views.CreateUserView.as_view(), name='create-user'),
    path('login/', views.LoginView.as_view(), name='login'),
]
