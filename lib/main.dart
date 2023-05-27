//Librerias
import 'package:flutter/material.dart';
import 'package:kalan/splash_Screen.dart';

void main() => runApp(Kalan());

class Kalan extends StatelessWidget {
  const Kalan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //titulo
      title: "Kalan",
      //quitar marca de agua
      debugShowCheckedModeBanner: false,

      home: splashScreen(),
    );
  }
}

