import 'package:flutter/material.dart';
import 'package:playflow/view/login/login_view.dart';
import 'package:playflow/view/splash/splash_view.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    debugShowCheckedModeBanner: false,
    home: const SplashView(),
  ));
}