import 'package:flutter/material.dart';

class textScreen extends StatefulWidget {
  const textScreen({super.key});

  @override
  State<textScreen> createState() => _textScreenState();
}

class _textScreenState extends State<textScreen> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  void send(){
    print(_nameController.text);
    print(_musica);
    print(_favorito);
  }

  String? _musica;
  bool _favorito = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Form(
          key: _formKey ,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: "Digite nombre",
                  icon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 10,),

              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: "Musica favorita",
                  icon: Icon(Icons.person),
                ),
                value: _musica,
                items: const [
                  DropdownMenuItem(
                    value: "Rock",
                    child: Text("Rock")
                  ),
                  DropdownMenuItem(
                    value: "Pop",
                    child: Text("Pop")
                  ),
                  DropdownMenuItem(
                    value: "Electro",
                    child: Text("Electro")
                  )
                ],
                onChanged: (value) {
                  setState(() {
                    _musica = value;
                  });
                },
              ),

              const SizedBox(height: 10,),

              SwitchListTile(
                value: _favorito, 
                onChanged: (val) => setState(() {
                  _favorito = val;
                }),
                title: const Text("Favorito"),
              ),

              const SizedBox(height: 10,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: send, 
                  child: const Text("Send")),
              )
            ],
          )
        ),
      ),
    );
  }
}
