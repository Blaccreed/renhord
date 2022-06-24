import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:renhord/screens/Connexion.dart';
import 'package:renhord/screens/Stepper.dart';
import 'package:renhord/screens/productType.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#06d6a0'),
          title: Text("Formulaire de revente renhord"),
        ),
        backgroundColor: HexColor('#f2fdfa'),
        body: const Center(child: Home()),
      ),
    );
  }
}


