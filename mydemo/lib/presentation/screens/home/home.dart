import 'package:mydemo/config/router/router.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home screens"),
        
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'button');
          },
        ),
      ),

      drawer: Drawer(child: ListView(
      children: [ 
        ...Routers.pages.map( (res){
        return ListTile(
          title: Text(res.title),
          subtitle: Text(res.description),
          onTap: (){
            Navigator.pushNamed(context, res.patch);
          },
          leading: Icon(res.icon),
        );
      }).toList()
      
      ],
      
      
      )),
    );
  }
}
