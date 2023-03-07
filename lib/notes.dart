import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  String nota;

  Note(this.nota);

  @override
  Widget build(BuildContext context){
    return Text(nota);
  }
}