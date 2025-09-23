import 'package:flutter/material.dart';

void main() {
  runApp(const CardScreen());
}

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("card"),
        
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Card(
              elevation: 1.0,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("hola card uno"),
              ),
            ),

            const Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(30.0)),
                side: BorderSide(color: Colors.redAccent),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("card ROUNDED"),
              ),
            ),
            const Card(
              color: Colors.cyanAccent,
              elevation: 8.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(child: Text("hola card tres")),
              ),
            ),
            Card(
              elevation: 15.0,
              child: Stack(
                children: [
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/3903/3903967.png',
                    height: 350,
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                  ),
                  const Text("hola Caballerito"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
