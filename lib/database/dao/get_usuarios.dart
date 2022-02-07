import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class getUsuarios extends StatelessWidget {
  final String documentId;
  final String campo;

  getUsuarios(this.documentId, this.campo);

  @override
  Widget build(BuildContext context) {
    CollectionReference usuarios = FirebaseFirestore.instance.collection('usuarios');

    return FutureBuilder<DocumentSnapshot>(
      future: usuarios.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Infelizmente ocorreu algum erro.");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Informação não encontrada");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;

          return Text(data[campo]);
        }

        return Text("Carregando");
      },
    );
  }
}
