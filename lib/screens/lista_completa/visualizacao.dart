import 'package:flutter/material.dart';

class ListaCompleta extends StatefulWidget {
  const ListaCompleta({Key? key}) : super(key: key);

  @override
  _ListaCompletaState createState() => _ListaCompletaState();
}

class _ListaCompletaState extends State<ListaCompleta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas Avançadas'),
      ),
    );
  }
}
