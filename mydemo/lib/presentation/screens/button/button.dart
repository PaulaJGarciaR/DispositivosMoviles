import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("button back"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Wrap(
            spacing: 20.0,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("button uno"),
              ),
              ElevatedButton(onPressed: null, child: Text("disable")),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("whith icon"),
                icon: Icon(Icons.account_tree_sharp),
              ),
              FilledButton(onPressed: () {}, child: Text("fallied")),
              FilledButton(onPressed: null, child: Text("fallied")),
              FilledButton.icon(
                onPressed: () {},
                label: Text("fallied icon"),
                icon: Icon(Icons.add_a_photo),
              ),
              OutlinedButton(onPressed: () {}, child: Text("onlinebutton")),
              OutlinedButton(onPressed: null, child: Text("online Disable")),
              OutlinedButton.icon(
                onPressed: () {},
                label: Text("icon"),
                icon: Icon(Icons.abc_rounded),
              ),
              TextButton(onPressed: () {}, child: Text("texto")),
              TextButton(onPressed: null, child: Text("texto 2")),
              TextButton.icon(
                onPressed: () {},
                label: Text("texto 3"),
                icon: Icon(Icons.abc_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.read_more_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.read_more_outlined),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.deepOrangeAccent,
                  ),
                  iconColor: WidgetStatePropertyAll(Colors.amberAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
