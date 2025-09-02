import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Screen"),
        backgroundColor: Colors.indigoAccent,
      ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Wrap(
            spacing: 20.0,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Botón #1")),
              ElevatedButton(onPressed: null, child: Text("Disabled")),
              ElevatedButton.icon(onPressed: (){}, 
              label: Text("With Icon"),
              icon: Icon(Icons.handshake),),
              FilledButton(onPressed: (){}, child: Text("Filled")),
              FilledButton(onPressed: null, child: Text("Filled")),
              FilledButton.icon(onPressed: (){},icon: Icon(Icons.handshake),
              label: Text("With Icon"),),
              OutlinedButton(onPressed: (){}, child: Text("Outline")),
              OutlinedButton(onPressed: null, child: Text("Outline disabled")),
              OutlinedButton.icon(onPressed: (){},icon: Icon(Icons.handshake),
              label: Text("Outline"),),
              TextButton(onPressed: (){}, child: Text("Text one")),
              TextButton(onPressed: null, child: Text("Text two")),
              TextButton.icon(onPressed: (){},icon: Icon(Icons.handshake),
              label: Text("Text three"),),
              IconButton(onPressed: (){}, icon: Icon(Icons.security_update_good)),
              IconButton(onPressed: (){}, 
              icon: Icon(Icons.security_update_good),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.indigoAccent),
                iconColor: WidgetStatePropertyAll(Colors.white)
              ),
          )

            ],
          )),
    
        ),
      );
  }
}