import 'package:flutter/material.dart';

void main() {
  runApp(CardScreen());
}

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("card")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 1.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("hola card uno"),
              ),
            ),

            Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(30.0)),
                side: BorderSide(color: Colors.redAccent),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("card ROUNDED"),
              ),
            ),
            Card(
              color: Colors.cyanAccent,
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("hola card tres"),
              ),
            ),
            Card(
              elevation: 15.0,
              child: Stack(
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/13123976/pexels-photo-13123976.jpeg',
                    height: 350,
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                  ),
                  Text("hola deadpool"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
