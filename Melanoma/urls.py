"""Melanoma URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from MelanomaApp import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.CommonHome,name='CommonHome'),
    path('CustomerSignup/',views.CustomerSignup,name='CustomerSignup'),
    path('DoctorSignup/',views.DoctorSignup,name='DoctorSignup'),
    path('SignIn/',views.SignIn,name='Sign In'),
    
    
    
    
    
    path('AdminHome/',views.AdminHome,name='AdminHome'),
    path('AdminViewCustomers/',views.AdminViewCustomers,name='Admin View Customers'),
    path('AdminAddHospital/',views.AdminAddHospital,name='AdminAddHospital'),
    path('AdminViewHospital/',views.AdminViewHospital,name='AdminViewHospital'),
    path('AdminViewDoctors/',views.AdminViewDoctors,name='AdminViewDoctors'),
    path('AdminViewApprovedDoctors/',views.AdminViewApprovedDoctors,name='AdminViewApprovedDoctors'),
    path('AdminViewFeedback/',views.AdminViewFeedback,name='AdminViewFeedback'),
    
    
    
    
    path('DoctorHome/',views.DoctorHome,name='DoctorHome'),
    path('DoctorViewConsultationRequest/',views.DoctorViewConsultationRequest,name='DoctorViewConsultationRequest'),
    
    
    
    
    
    path('PatientHome/',views.PatientHome,name='PatientHome'),
    path('CustomerSearchDoctor/',views.CustomerSearchDoctor,name='CustomerSearchDoctor'),
    path('PatientUploadImage/',views.PatientUploadImage,name='PatientUploadImage'),
]
