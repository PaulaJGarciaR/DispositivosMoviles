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
    return ListView.builder(
      itemCount: character.length,
      itemBuilder: (context, index) {
        final size = MediaQuery.of(context).size;
        NarutoCharacter pj = character[index];
        return ListTile(
          onTap: () {
            print("Di tap");
          },
          title: Row(
            children: [
              Image.network(pj.images[0],
              width: size.width* 0.2,
              height: size.width* 0.2,),
              SizedBox(
                width: size.width*0.7,
                child:Column(children: [
                Text(pj.name),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: pj.jutsu.take(5).map((res){
                    return 
                    Chip(
                      label: Text(res),
                    );
                  }).toList()
                  ,
                )],)
              )
              
              
            ],
          ),
          

        );
      },
      );  
      }
}