import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CARD"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Card(
              elevation: 1.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Tarjeta 1"),
              ),
            ),
            const Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(15.0)),
                side: BorderSide(color: Color.fromARGB(255, 151, 114, 251)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Tarjeta rounded"),
              ),
            ),
            const Card(
              color: Color.fromARGB(255, 181, 154, 254),
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Tarjeta 3"),
              ),
            ),
            Card(
              elevation: 8.0,
              child: Stack(
                children: [
                  Image.network(
                    'https://i.redd.it/3840x2160-a-silent-voice-multiple-colors-versions-v0-6dj4z2zb0rd91.png?width=3840&format=png&auto=webp&s=459bde8e75da598f9aeab42a51437bb8cab304d6',
                    height: 350,
                    // fit: BoxFit.fill,
                    width: double.infinity,
                  ),

                  const Text("Hola Pau"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}