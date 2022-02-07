import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('usuarios');

class Database {
  static String? usuarioId;

  static Stream<QuerySnapshot> lerItens() {
    CollectionReference usuariosCollection = _mainCollection.doc(usuarioId).collection('usuarios');

    return usuariosCollection.snapshots();
  }
}