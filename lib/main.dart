import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:economizze/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Economizze());
}

class Economizze extends StatelessWidget {
  const Economizze({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[800],
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green[900]),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.greenAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.green[800],
        )
      ),
      home: Dashboard(),
    );
  }
}
