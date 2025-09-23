import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mydemo/presentation/providers/count_provider.dart';

class CountScreen extends ConsumerWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nombre = ref.watch(nombreProvider);
    final count = ref.watch(countProvider);
    final dark = ref.watch(darkThemeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Count"),
        actions: [
          IconButton(onPressed: (){
            ref.read(darkThemeProvider.notifier).update((res) => !res);
          }, icon: !dark? Icon(Icons.dark_mode): Icon(Icons.light_mode) )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$nombre"),
              Text("Hola contador"),
              Text("cliks : $count"),
              FloatingActionButton(onPressed: (){
                //ref.read(countProvider.notifier).state++;
                //ref.read(countProvider.notifier).update((state) => state + 1);
                ref.read(countProvider.notifier).update((res){
                  res = res + 2;
                  return res;
                });
              },child: Icon(Icons.plus_one),)
            ],
          ),
        ),
      ),
    );
  }
}