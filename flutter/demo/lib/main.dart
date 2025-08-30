import 'package:flutter/material.dart';
import 'package:demo/config/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      initialRoute: '/',
      routes: Routers.route(),
      );
  }
}