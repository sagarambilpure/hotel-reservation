from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.auth import get_user_model
from django.core.validators import MinValueValidator
import datetime as dt
from django.core.exceptions import ValidationError


def validate_date(date):
    if date.date() < dt.date.today():
        raise ValidationError("The date cannot be in the past!")


class UserOfApp(AbstractUser):
    phone = models.CharField(max_length=14, default=False)

    def __str__(self):
        # return f"uid={self.uid}, uname={self.uname}, upass={self.upass}"
        return self.first_name


class Room(models.Model):
    room_id = models.AutoField(primary_key=True)
    room_type = models.CharField(max_length=10, choices=(
        ("Standard", "Standard"), ("Deluxe", "Deluxe"), ("Luxury", "Luxury")))
    room_capacity = models.IntegerField(validators=[MinValueValidator(1)])

    def __str__(self):
        # return f"uid={self.uid}, uname={self.uname}, upass={self.upass}"
        return str(self.room_id)


class Reservation(models.Model):
    rid = models.AutoField(primary_key=True)
    uid = models.ForeignKey(
        UserOfApp, on_delete=models.CASCADE, db_column='uid')
    room_id = models.ForeignKey(
        Room, on_delete=models.CASCADE, db_column='room_id')
    check_in = models.DateTimeField(validators=[validate_date])
    check_out = models.DateTimeField(validators=[validate_date])
    no_guests = models.IntegerField(default=0)
