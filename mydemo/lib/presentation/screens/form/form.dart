import 'package:flutter/material.dart';
import 'package:mydemo/presentation/screens/form/radio/radio_screen.dart';
import 'package:mydemo/presentation/screens/form/text/text_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  int _indicador = 0;

  final List<Widget> _elementos = <Widget>[
    const RadioScreen(),
    const TextScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario Screen"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: _elementos[_indicador],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indicador,
        onTap: (value) {
          setState(() {
            _indicador = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: "Text"),
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: "Radio"),
        ],
      ),
    );
  }
}
