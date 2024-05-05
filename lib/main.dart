import 'package:flutter/material.dart';
import 'package:qr_code_genarator/splash_screen.dart';
import 'homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Qr Code Generator",
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
    );
  }
}




