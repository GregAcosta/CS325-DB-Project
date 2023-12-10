from rest_framework import serializers
import base64
from .models import Console

class ConsoleSerializer(serializers.ModelSerializer):
    image_data = serializers.SerializerMethodField()

    class Meta:
        model = Console
        fields = ['id', 'name', 'model', 'price', 'image_data']

    def get_image_data(self, obj):
        # obj is expected to be a dictionary with name, model, etc.
        blob = self.context['view'].get_random_image(obj['name'], obj['model'])
        if blob:
            return base64.b64encode(blob).decode()
        return None