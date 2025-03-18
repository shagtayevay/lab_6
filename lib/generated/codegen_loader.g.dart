// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _en = {
  "title": "Registration",
  "name": "Full Name",
  "full_name_hint": "What is your name?",
  "full_name_error": "Please enter your name",
  "phone": "Phone Number",
  "phone_hint": "Where can we call you?",
  "phont_hint_error": "Enter a valid 10-digit number",
  "email": "Email Address",
  "email_hint": "Where can we email you?",
  "email_hint_error": "Enter a valid email address",
  "password": "Password",
  "password_hint": "Enter your password",
  "password_hint_error": "Password must be at least 8 characters",
  "confirm_password": "Confirm Password",
  "confirm_password_hint": "Re-enter your password",
  "confirm_password_error": "Passwords do not match",
  "submit": "Submit Form",
  "back": "Back"
};
static const Map<String,dynamic> _kk = {
  "title": "Тіркелу",
  "name": "Толық аты",
  "full_name_hint": "Сіздің атыңыз кім?",
  "full_name_error": "Өтінеміз, атыңызды енгізіңіз",
  "phone": "Телефон нөмірі",
  "phone_hint": "Қайда қоңырау шалуға болады?",
  "phont_hint_error": "Дұрыс 10 таңбалы нөмірді енгізіңіз",
  "email": "Электрондық пошта мекенжайы",
  "email_hint": "Қай мекенжайға хат жібере аламыз?",
  "email_hint_error": "Дұрыс электрондық поштаны енгізіңіз",
  "password": "Құпия сөз",
  "password_hint": "Құпия сөзіңізді енгізіңіз",
  "password_hint_error": "Құпия сөз кемінде 8 таңбадан тұруы керек",
  "confirm_password": "Құпия сөзді растаңыз",
  "confirm_password_hint": "Құпия сөзіңізді қайта енгізіңіз",
  "confirm_password_error": "Құпия сөздер сәйкес келмейді",
  "submit": "Форманы жіберу",
  "back": "Артқа"
};
static const Map<String,dynamic> _ru = {
  "title": "Регистрация",
  "name": "Полное имя",
  "full_name_hint": "Как вас зовут?",
  "full_name_error": "Пожалуйста введите ваше имя",
  "phone": "Номер телефона",
  "phone_hint": "Куда можно позвонить?",
  "phont_hint_error": "Введите действительный 10-значный номер",
  "email": "Адрес электронной почты",
  "email_hint": "Куда мы можем написать вам?",
  "email_hint_error": "Введите действительную электронную почту",
  "password": "Пароль",
  "password_hint": "Введите ваш пароль",
  "password_hint_error": "Пароль должен содержать не менее 8 символов",
  "confirm_password": "Подтвердите пароль",
  "confirm_password_hint": "Повторно введите пароль",
  "confirm_password_error": "Пароль не совпадает",
  "submit": "Отправить форму",
  "back": "Назад"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": _en, "kk": _kk, "ru": _ru};
}
