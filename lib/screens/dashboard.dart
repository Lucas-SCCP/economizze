import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:economizze/database/dao/get_usuarios.dart';
import 'package:economizze/screens/lista_simples/visualizacao.dart';
import 'package:economizze/screens/lista_completa/visualizacao.dart';
import 'package:economizze/screens/comparar_precos.dart';
import 'package:economizze/screens/configuracoes.dart';
import 'package:economizze/screens/minha_conta.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../database/app_database.dart';
import '../database/dao/get_usuarios.dart';

class Dashboard extends StatelessWidget {
  final double _larguraBotao = 180;
  final double _alturaBotao = 150;

  final double _tamanhoIcone = 60;

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Economizze'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        // child: Text('Teste'),
                        backgroundImage: NetworkImage('https://scontent.fbau3-2.fna.fbcdn.net/v/t1.6435-9/139537256_10225471718686437_5154811623996204043_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGx8BjhFhz7F9WxrZiLM4mA7IS0UQCd6b7shLRRAJ3pvsHP63vYipAvB6ifRPEW2D4&_nc_ohc=wT410ZOzmeYAX8aQQc_&_nc_ht=scontent.fbau3-2.fna&oh=00_AT_YGYvUSTpxL3xTG2Z0Iv97ghn3pt2r1nGZ_1E6nR9-kg&oe=6206458E'),
                        radius: 20,
                      ),
                      title: getUsuarios('fGL1FATGK29dnfk53P1V', 'nome'),
                      subtitle: getUsuarios('fGL1FATGK29dnfk53P1V', 'email'),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MinhaConta(),
                          ),
                        );
                      },
                      child: Text('Minha conta'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[900],
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      )
                    ),
                  ],
                ),
            ),
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                    color: Theme.of(context).primaryColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ListaSimples(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        height: _alturaBotao,
                        width: _larguraBotao,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.checklist,
                              color: Colors.white,
                              size: _tamanhoIcone,
                            ),
                            Text(
                              'Listas Simples',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                    color: Theme.of(context).primaryColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ListaCompleta(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        height: _alturaBotao,
                        width: _larguraBotao,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.checklist,
                              color: Colors.white,
                              size: _tamanhoIcone,
                            ),
                            Text(
                              'Listas Avançadas',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                    color: Theme.of(context).primaryColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CompararPrecos(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        height: _alturaBotao,
                        width: _larguraBotao,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.manage_search,
                              color: Colors.white,
                              size: _tamanhoIcone,
                            ),
                            Text(
                              'Comparar Preços',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                    color: Theme.of(context).primaryColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Configuracoes(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        height: _alturaBotao,
                        width: _larguraBotao,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: _tamanhoIcone,
                            ),
                            Text(
                              'Configurações',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),


        ],
      ),
    );



  }
}
