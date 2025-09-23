import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("button back"),
      
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
                child: const Text("button uno"),
              ),
              const ElevatedButton(onPressed: null, child: Text("disable")),
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text("whith icon"),
                icon: const Icon(Icons.account_tree_sharp),
              ),
              FilledButton(onPressed: () {}, child: const Text("fallied")),
              const FilledButton(onPressed: null, child: Text("fallied")),
              FilledButton.icon(
                onPressed: () {},
                label: const Text("fallied icon"),
                icon: const Icon(Icons.add_a_photo),
              ),
              OutlinedButton(onPressed: () {}, child: const Text("onlinebutton")),
              const OutlinedButton(onPressed: null, child: Text("online Disable")),
              OutlinedButton.icon(
                onPressed: () {},
                label: const Text("icon"),
                icon: const Icon(Icons.abc_rounded),
              ),
              TextButton(onPressed: () {}, child: const Text("texto")),
              const TextButton(onPressed: null, child: Text("texto 2")),
              TextButton.icon(
                onPressed: () {},
                label: const Text("texto 3"),
                icon: const Icon(Icons.abc_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.read_more_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.read_more_outlined),
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.deepOrangeAccent,
                  ),
                  iconColor: WidgetStatePropertyAll(Colors.amberAccent),/*o materialstate*/
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
