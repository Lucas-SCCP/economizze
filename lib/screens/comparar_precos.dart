import 'package:flutter/material.dart';

class CompararPrecos extends StatefulWidget {
  const CompararPrecos({Key? key}) : super(key: key);

  @override
  _CompararPrecosState createState() => _CompararPrecosState();
}

class _CompararPrecosState extends State<CompararPrecos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comparar Preços'),
      ),
    );
  }
}
