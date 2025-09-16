import 'package:flutter/material.dart';
import 'package:mydemo/config/router/router.dart';
import 'package:mydemo/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routers.route(),
      theme: AppTheme(dark: true,selectColor: 3).getTheme(),
    );
  }
}
