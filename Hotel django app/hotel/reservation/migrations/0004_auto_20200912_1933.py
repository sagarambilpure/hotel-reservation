# Generated by Django 3.0.7 on 2020-09-12 14:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('reservation', '0003_auto_20200912_1900'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userofapp',
            name='email',
            field=models.EmailField(blank=True, max_length=254, verbose_name='email address'),
        ),
    ]
