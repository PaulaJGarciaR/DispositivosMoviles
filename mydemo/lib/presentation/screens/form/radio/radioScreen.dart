import 'package:flutter/material.dart';

class radioScreen extends StatefulWidget {
  const radioScreen({super.key});

  @override
  State<radioScreen> createState() => _radioScreenState();
}

class _radioScreenState extends State<radioScreen> {

  String _generoMusical = 'Rock';

  bool _football = false;
  bool _basketball = false;
  bool _voleiball = false;
  bool _skating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Seleccione genero musical"),
          RadioListTile(
            title: Text("Rock"),
            value: "Rock",
            groupValue: _generoMusical,
            onChanged: (value){
              setState(() {
                _generoMusical = value ?? "";
              });
            },
          ),
          RadioListTile(
            title: Text("Pop"),
            value: "Pop",
            groupValue: _generoMusical,
            onChanged: (value){
              setState(() {
                _generoMusical = value ?? "";
              });
            },
          ),
          Text("CheckBox"),
          CheckboxListTile(
            title: Text("Futbol"),
            value: _football, 
            onChanged: (value){
              setState(() {
                _football = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("Basketball"),
            value: _basketball, 
            onChanged: (value){
              setState(() {
                _basketball = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("voleibol"),
            value: _voleiball, 
            onChanged: (value){
              setState(() {
                _voleiball = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("patinaje"),
            value: _skating, 
            onChanged: (value){
              setState(() {
                _skating = value!;
              });
            },
          ),
        ],
      ),
    ),
    );
  }
}
