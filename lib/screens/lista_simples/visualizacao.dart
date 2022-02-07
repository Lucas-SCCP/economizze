import 'package:economizze/screens/lista_simples/edicao.dart';
import 'package:economizze/database/app_database.dart';
import 'package:economizze/models/lista_model.dart';
import 'package:flutter/material.dart';

class ListaSimples extends StatefulWidget {
  const ListaSimples({Key? key}) : super(key: key);

  @override
  _ListaSimplesState createState() => _ListaSimplesState();
}


class _ListaSimplesState extends State<ListaSimples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas Simples'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => EdicaoListaSimples(),
                            ),
                          );
                        },
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.local_grocery_store),
                            title: Text('Lista do mercado'),
                            subtitle: Text('25 itens'),
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => EdicaoListaSimples(),
                            ),
                          );
                        },
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.local_grocery_store),
                            title: Text('Lista do churrasco'),
                            subtitle: Text('08 itens'),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => EdicaoListaSimples(),
            )
          );
        },
      ),
    );
  }
}

