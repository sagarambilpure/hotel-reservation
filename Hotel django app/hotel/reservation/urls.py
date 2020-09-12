from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('login', views.my_login, name='login'),
    path('logout', views.my_logout, name='logout'),
    path('register', views.register, name='register'),
    path("welcomeuser", views.welcomeuser, name="welcomeuser"),
    path("search", views.search, name="search"),
    path("book", views.book, name="book"),
]
