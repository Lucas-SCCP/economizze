import 'package:economizze/screens/lista_simples/visualizacao.dart';
import 'package:flutter/material.dart';

class EdicaoListaSimples extends StatefulWidget {
  const EdicaoListaSimples({Key? key}) : super(key: key);

  @override
  _EdicaoListaSimplesState createState() => _EdicaoListaSimplesState();
}

class _EdicaoListaSimplesState extends State<EdicaoListaSimples> {

  var listaController = new TextEditingController();
  var itemCarneController = new TextEditingController();
  var itemRefrigeranteController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    listaController.value = TextEditingValue(text: 'Lista do mercado');
    itemCarneController.value = TextEditingValue(text: 'Carne');
    itemRefrigeranteController.value = TextEditingValue(text: 'Refrigerante');

    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Lista Simples'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[

                Card(
                  child: ListTile(
                    leading: Icon(Icons.local_grocery_store),
                    title: TextField(
                      controller: listaController,
                    ),
                    subtitle: Text('25 itens'),
                  ),
                ),



                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {

                            },
                            child: Icon(Icons.drag_indicator),
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: TextField(
                            controller: itemCarneController,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {

                            },
                            child: Icon(Icons.delete),
                          ),
                        )
                      ],
                    ),
                  ),
                ),


                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {

                            },
                            child: Icon(Icons.drag_indicator),
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: TextField(
                            controller: itemRefrigeranteController,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {

                            },
                            child: Icon(Icons.delete),
                          ),
                        )
                      ],
                    ),
                  ),
                ),


                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 0,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 10,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Digite o nome do item'
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {

                            },
                            child: Icon(Icons.add),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => ListaSimples()
            ),
          );
        },
      ),
    );
  }
}
