from django.db import models

class Console(models.Model):
    name = models.CharField(max_length=100)  # e.g., 'Xbox'
    model = models.CharField(max_length=100)  # e.g., '360'
    price = models.DecimalField(max_digits=10, decimal_places=2)  # Price

    def __str__(self):
        return f"{self.name} {self.model}"
