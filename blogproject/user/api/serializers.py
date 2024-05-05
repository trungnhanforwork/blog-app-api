from django.contrib.auth.models import User
from rest_framework import serializers


class RegistrationSerializer(serializers.ModelSerializer):
    retype_password = serializers.CharField(style={'input_type': 'password'}, write_only=True)

    class Meta:
        model = User
        fields = ['username', 'email', 'password', 'retype_password']
        extra_kwargs = {'password' : {'write_only': True}}
        
    def save(self):

        password = self.validated_data['password']
        retype_password = self.validated_data['retype_password']

        if password != retype_password:
            raise serializers.ValidationError({'error': 'Password is not match!'})

        if User.objects.filter(email=self.validated_data['email']).exists():
            raise serializers.ValidationError({'error': 'Email already exists!'})

        account = User(email=self.validated_data['email'], username=self.validated_data['username'])
        account.set_password(password)
        account.save()

        return account
