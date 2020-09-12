from django.contrib import admin
from .models import *


class UserAdmin(admin.ModelAdmin):
    list_display = ['username', 'first_name']
    search_fields = ['username', 'first_name']


class RoomAdmin(admin.ModelAdmin):
    list_display = ["room_id", "room_type", 'room_capacity']
    search_fields = ["room_id", "room_type", 'room_capacity']


class ReservationAdmin(admin.ModelAdmin):
    list_display = ['rid', "room_id", 'uid', "no_guests",
                    "check_in", "check_out"]
    search_fields = ['rid', "room_id", 'uid', "no_guests",
                     "check_in", "check_out"]


# Register your models here.
admin.site.register(UserOfApp, UserAdmin)
admin.site.register(Room, RoomAdmin)
admin.site.register(Reservation, ReservationAdmin)

admin.site.site_header = "Hotel Admin"
admin.site.site_title = "Admin Page"
admin.site.index_title = "Hotel Admin Page"
