from django.contrib.auth import authenticate
from django.shortcuts import render, redirect
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import authenticate, login as auth_login, logout

# Create your views here.
def home(request):
    return render(request,'home.html')

def login_view(request):
    if request.user.is_authenticated:
        return render(request, 'home.html')
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            auth_login(request, user)
            return redirect('/profile')
        else:
            msg = 'Invalid credentials'
            form = AuthenticationForm(request.POST)
            return render(request, 'login.html', {'form': form, 'msg': msg})
    else:
        form = AuthenticationForm()
        return render(request,'login.html', {'form': form})
    
def profile(request):
    return render(request, 'profile.html')

def signout(request):
    logout(request)
    return redirect('/home')