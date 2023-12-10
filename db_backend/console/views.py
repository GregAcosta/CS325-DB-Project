import os
import random
import shutil
from .models import Console
from .serializers import ConsoleSerializer
from rest_framework import viewsets
from rest_framework.views import APIView
from rest_framework.response import Response

# create a function that will get a random image from the images folder

class ConsoleViewSet(viewsets.ModelViewSet):
    queryset = Console.objects.all()
    serializer_class = ConsoleSerializer

class ConsoleSearchView(APIView):
    @staticmethod
    def get_random_image(name, model):
        images_path = os.path.join(os.getcwd(), 'static', 'console_images', name, model)
        images = os.listdir(images_path)
        random_image = random.choice(images)
        with open(os.path.join(images_path, random_image), 'rb') as f:
            blob = f.read()
        return blob
    def get(self, request):
        name = request.query_params.get('name', None)
        model = request.query_params.get('model', None)

        if name and model:
            consoles = [
                {
                    'name': name,
                    'model': model,
                    'price': round(random.uniform(150, 200), 2),
                    'image': self.get_random_image(name, model)
                } for _ in range(25)
            ]
            serializer = ConsoleSerializer(consoles, many=True, context={'view': self})
            return Response(serializer.data)
        else:
            return Response({"error": "No search parameters provided"}, status=400)
