from django.urls import path 
from .views import ConsoleSearchView

urlpatterns = [
    path('search-consoles/', ConsoleSearchView.as_view(), name='search-consoles')
]
