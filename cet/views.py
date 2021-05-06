from datetime import date
from django.shortcuts import render, redirect

from django.db import connection

from django.contrib.auth import authenticate, login, logout


# Create your views here.


def welcome(request):
    return render(request, 'welcome.html')


def display_results(request):
    if request.user.is_authenticated and request.user.username == "super_admin":

        if request.method == 'POST':
            date_box = request.POST.get('date_box')
            cursor = connection.cursor()
            print("here")
            print(date_box)
            new = []

            date_box = date_box.split(" ")[0]
            new.append(date_box)
            new.append("%")
            date_box = new
            date_box = "".join(date_box)
            date_box = date_box.split("/")
            date_box = "-".join(date_box)

            query = """ 
                           SELECT sts.first_name,sts.last_name,sts.college,sts.address_line_1,sts.city,sts.district,sts.state,sts.email,sts.phone_no,sts.alt_phone_no,str.exam_type,str.physics_marks,str.chemistry_marks,str.math_marks,str.biology_marks,str.total_marks,au.date_joined 
                           FROM stes_test_student sts 
                           LEFT JOIN stes_test_results str ON sts.email = str.username
                           JOIN auth_user au ON au.username = sts.email
                           where au.date_joined like \"""" + date_box + """\" 
                           UNION 
                           SELECT sts.first_name,sts.last_name,sts.college,sts.address_line_1,sts.city,sts.district,sts.state,sts.email,sts.phone_no,sts.alt_phone_no,str.exam_type,str.physics_marks,str.chemistry_marks,str.math_marks,str.biology_marks,str.total_marks,au.date_joined
                           FROM stes_test_student sts
                           RIGHT JOIN stes_test_results str ON sts.email = str.username 
                           JOIN auth_user au ON au.username = sts.email
                           where au.date_joined like \"""" + date_box + """\";
                       """

            cursor.execute(query)

            qset = cursor.fetchall()

            print(qset)

            return render(request, 'display_results.html', {"qset": qset})

        else:
            cursor = connection.cursor()
            query = """ 
                        SELECT sts.first_name,sts.last_name,sts.college,sts.address_line_1,sts.city,sts.district,sts.state,sts.email,sts.phone_no,sts.alt_phone_no,str.exam_type,str.physics_marks,str.chemistry_marks,str.math_marks,str.biology_marks,str.total_marks,au.date_joined
                        FROM stes_test_student sts 
                        LEFT JOIN stes_test_results str ON sts.email = str.username
                        JOIN auth_user au ON au.username = sts.email
                        where au.date_joined like \"""" + str(date.today()) + """%\"
                        UNION 
                        SELECT sts.first_name,sts.last_name,sts.college,sts.address_line_1,sts.city,sts.district,sts.state,sts.email,sts.phone_no,sts.alt_phone_no,str.exam_type,str.physics_marks,str.chemistry_marks,str.math_marks,str.biology_marks,str.total_marks,au.date_joined
                        FROM stes_test_student sts
                        RIGHT JOIN stes_test_results str ON sts.email = str.username 
                        JOIN auth_user au ON au.username = sts.email
                        where au.date_joined like \"""" + str(date.today()) + """%\";
                    """
            cursor.execute(query)

            qset = cursor.fetchall()

            # print(qset)
            return render(request, 'display_results.html', {"qset": qset, "qset_length": len(qset)})

    else:
        if request.user.is_authenticated:
            logout(request)
        return redirect('admin_login')


def admin_login(request):
    if request.method == 'POST':

        email = request.POST.get('email')
        password = request.POST.get('password')

        user = authenticate(username=email, password=password)

        if user is not None:
            login(request, user)
            return redirect('display_results')
        else:
            print("Username :", user)
            return render(request, 'admin_login.html')

    return render(request, 'admin_login.html')
