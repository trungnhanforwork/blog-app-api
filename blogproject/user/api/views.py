from rest_framework import status, generics
from rest_framework.authtoken.models import Token
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from user import models
from user.api.serializers import *
from user.api.permission import IsOwnerOrReadOnly

# from rest_framework_simplejwt.tokens import RefreshToken


@api_view(["POST",])
def logout_view(request):
    if request.method == "POST":
        request.user.auth_token.delete()
        return Response("Logout successfully", status=status.HTTP_200_OK)


@api_view(["POST",])
def registration_view(request):

    if request.method == "POST":
        serializer = RegistrationSerializer(data=request.data)

        data = {}

        if serializer.is_valid():
            account = serializer.save()

            data["response"] = "Registration Successful!"
            data["username"] = account.username
            data["email"] = account.email
            token = Token.objects.get(user=account).key
            data["token"] = token

            # refresh = RefreshToken.for_user(account)
            # data['token'] = {
            #                     'refresh': str(refresh),
            #                     'access': str(refresh.access_token),
            #                 }

        else:
            data = serializer.errors

        return Response(data, status=status.HTTP_201_CREATED)

@api_view(['GET'])
@permission_classes([IsAuthenticated])
def profile_view(request):
    
    if request.method == "GET":
    
        user = request.user
        serializer = ProfileSerializer(user)
        return Response(serializer.data)

class ChangePasswordView(generics.UpdateAPIView):
    permission_classes = (IsAuthenticated,)
    serializer_class = ChangePasswordSerializer
    
    def get_object(self):
        return self.request.user
    
    def update(self, request, *args, **kwargs):
        instance = self.request.user
        serializer = self.get_serializer(instance, data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_update(serializer)
        return Response(serializer.data)
    
class UpdateProfileView(generics.UpdateAPIView):
    permission_classes = (IsAuthenticated,)
    serializer_class = UpdateUserSerializer
    
    def get_object(self):
        return self.request.user
    
    def update(self, request, *args, **kwargs):
        instance = self.get_object()

        serializer = self.get_serializer(instance, data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_update(serializer)

        return Response(serializer.data)
