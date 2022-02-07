import 'package:flutter/material.dart';

class MinhaConta extends StatefulWidget {
  const MinhaConta({Key? key}) : super(key: key);

  @override
  _MinhaContaState createState() => _MinhaContaState();
}

class _MinhaContaState extends State<MinhaConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Conta'),
      ),
    );
  }
}
