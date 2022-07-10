# from turtle import mode
from django.db import models


class Person(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.expressions()
    address = models.CharField(max_length=100)
    appartment_num = models.CharField(max_length=5)
