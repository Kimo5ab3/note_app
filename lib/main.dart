import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './notes.dart';

void main() {
  runApp(NoteApp());
}

class NoteApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _NoteAppState();
}

class _NoteAppState extends State<NoteApp> {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Note App')),
        body: Column(children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(labelText: 'Scrivi la tua nota'),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green.shade600),
              foregroundColor: MaterialStateProperty.all(Colors.white)
            ),
            child: const Text('Salva nota'),
          ),
          //qui vanno inserite le note recuperate da notes.dart
          //Notes(nota),
        ]),
      ),
    );
  }
}
