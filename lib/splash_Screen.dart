import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kalan/home_page.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(milliseconds: 2500),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: "Kalan"),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2e2867), // Cambia este valor al color deseado
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Image(
                image: AssetImage('assents/icon.png'),
                width: 160, // Cambia este valor al ancho deseado
                height: 160, // Cambia este valor al alto deseado
              ),
            ),
            SizedBox(height: 32), // Espacio vertical entre el logo y el texto/indicador de progreso
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Bienvenido/Welcome"),
                  SizedBox(height: 16), // Espacio vertical entre el texto y el indicador de progreso
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}