# Generated by Django 3.0.7 on 2020-09-12 13:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('reservation', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='userofapp',
            name='phone',
            field=models.CharField(default=False, max_length=14),
        ),
    ]
