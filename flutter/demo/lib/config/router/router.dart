import 'package:demo/config/router/app_router.dart';
import 'package:demo/presentation/screens/screen.dart';
import 'package:flutter/material.dart';


class Routers {
static final List<AppRouter> pages = [
  AppRouter(patch: 'card',
   title: 'Card2',
   description: 'Pantalla que contiene la configuracion de las cards',
   icon: Icons.card_travel,
   context: (context) => const CardScreen()),

  AppRouter(patch: 'card',
   title: 'Card',
   description: 'Pantalla que contiene la configuracion de las cards',
   icon: Icons.card_travel,
   context: (context) => const CardScreen()),

  AppRouter(patch: 'button',
   title: 'Button',
   description: 'Pantalla que contiene todos los botones',
   icon: Icons.smart_button,
   context: (context) => const ButtonScreen()),

   AppRouter(patch: '/',
   title: 'Home',
   description: 'Pantalla Inicial',
   icon: Icons.home,
   context: (context) => const HomeScreen())
];

  static route()=>{
    for (var page in pages) page.patch:page.context
  };
}