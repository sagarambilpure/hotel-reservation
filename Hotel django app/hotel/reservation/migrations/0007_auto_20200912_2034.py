# Generated by Django 3.0.7 on 2020-09-12 15:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('reservation', '0006_reservation_no_guests'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reservation',
            name='no_guests',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='room',
            name='room_capacity',
            field=models.IntegerField(),
        ),
    ]
