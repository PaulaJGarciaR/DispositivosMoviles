import 'package:flutter/material.dart';
import 'package:mydemo/helpers/naruto_petition.dart';
import 'package:mydemo/model/naruto_character.dart';

class Peticionscreen extends StatelessWidget {
  const Peticionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final petition=NarutoPetition();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Peticion character naruto"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: FutureBuilder(future: petition.getCharacters(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListCharacter(character:snapshot.requireData);
        }),
        )
    );
  }
}

class ListCharacter extends StatelessWidget {
  final List<NarutoCharacter> character;

  const ListCharacter({super.key,required this.character});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}