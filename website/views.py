from django.shortcuts import render, HttpResponse


def main(request):
    list = [i for i in range(10)]

    return render(request, template_name='main.html', context={'list': list})


def qwe(request):
    list = [i for i in range(10, 20)]

    return render(request, template_name='sec.html', context={'list': list})
