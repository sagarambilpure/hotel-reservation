from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from .models import *
import datetime as dt
# Create your views here.


def index(request):
    if request.user.is_authenticated:
        return render(request, 'reservation/welcomeuser.html')
    return render(request, 'reservation/index.html')


def my_login(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        user = authenticate(username=email, password=password)
        if user is not None:
            login(request, user)
        # return redirect('welcomeuser.html')
            return render(request, 'reservation/welcomeuser.html', {})
        else:
            return render(request, 'reservation/login.html', {'loginfail': True})
    return render(request, 'reservation/login.html')


def welcomeuser(request):
    return render(request, 'reservation/welcomeuser.html')


def my_logout(request):
    logout(request)
    return render(request, "reservation/index.html", {})


def register(request):
    if request.method == 'POST':
        first_name = request.POST['name']
        email = request.POST['email']
        password = request.POST['password']
        phone = request.POST['phone']
        print(first_name, email, password, phone)
        try:
            user = UserOfApp.objects.create_user(
                first_name=first_name, username=email, email=email, password=password, phone=phone)
            user.save()
        except:
            return render(request, 'reservation/login.html', {'already_exists': True})
        return render(request, 'reservation/login.html', {'registration_success': True})
    return render(request, 'reservation/register.html')


def book(request):
    if request.method == 'POST':
        from_date = request.POST["from_date"].split("-")
        to_date = request.POST["to_date"].split("-")
        n_guest = request.POST["n_guest"]
        room_type = request.POST["type"]
        print(from_date, type(from_date))

        from_date = dt.date(int(from_date[0]), int(
            from_date[1]), int(from_date[2]))
        to_date = dt.date(int(to_date[0]), int(
            to_date[1]), int(to_date[2]))

        all_rooms = Room.objects.all()
        reserved_rooms = Reservation.objects.filter(
            check_in__lt=to_date).filter(check_out__gt=from_date)
        r_rooms_id = [i.room_id.room_id for i in reserved_rooms]
        avail_rooms = all_rooms.exclude(room_id__in=r_rooms_id)
        type_rooms = avail_rooms.filter(room_type=room_type)
        size_rooms = type_rooms.filter(room_capacity__gte=(int(n_guest)+1))
        if len(size_rooms) < 1:
            return render(request, 'reservation/book.html', {"no_rooms": True})
        else:
            room = size_rooms[0]
            reserve = Reservation(
                room_id=room, uid=request.user, check_in=from_date, check_out=to_date, no_guests=n_guest)
            reserve.save()
            return render(request, 'reservation/book.html', {"reserve_success": True, "room_id": room.room_id, "room_type": room_type, "from_date": from_date, "to_date": to_date})

    return render(request, 'reservation/book.html')


def search(request):
    if request.method == 'POST':
        from_date = request.POST["from_date"].split("-")
        to_date = request.POST["to_date"].split("-")
        print(from_date, type(from_date))

        from_date = dt.date(int(from_date[0]), int(
            from_date[1]), int(from_date[2]))
        to_date = dt.date(int(to_date[0]), int(
            to_date[1]), int(to_date[2]))

        all_rooms = Room.objects.all()
        reserved_rooms = Reservation.objects.filter(
            check_in__lt=to_date).filter(check_out__gt=from_date)
        r_rooms_id = [i.room_id.room_id for i in reserved_rooms]
        a_rooms = all_rooms.exclude(room_id__in=r_rooms_id)
        return render(request, 'reservation/search.html', {"a_rooms": a_rooms, "from": from_date, "to": to_date})
    return render(request, 'reservation/search.html')
