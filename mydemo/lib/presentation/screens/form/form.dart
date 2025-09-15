import 'package:proyecto/presentation/screens/form/radio/radioScreen.dart';
import 'package:proyecto/presentation/screens/form/text/textScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FormScren());
}

class FormScren extends StatefulWidget {
  const FormScren({super.key});

  @override
  State<FormScren> createState() => _FormScrenState();
}

class _FormScrenState extends State<FormScren> {
  int _indicador = 0;
  final List<Widget> _elementos = <Widget>[textScreen(), radioScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("formulario"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: _elementos[_indicador],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indicador,
        onTap: (value) {
          setState(() {
            _indicador = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.text_decrease),
            label: "text",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: "radio"),
        ],
      ),
    );
  }
}
