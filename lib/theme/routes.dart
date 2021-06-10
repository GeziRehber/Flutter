import 'package:flutter/material.dart';
import 'package:flutter_app3/Anasayfa.dart';
import 'package:flutter_app3/KayitOl.dart';
import 'package:flutter_app3/Login.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static const String menu = '/menu';

  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => Login(),
      authRegister: (context) => Register(),

      menu: (context) => MyApp2(),
    };
  }
}