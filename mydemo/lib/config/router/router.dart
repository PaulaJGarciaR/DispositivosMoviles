import 'package:mydemo/config/router/app_router.dart';
import 'package:mydemo/presentation/screens/form/form.dart';
import 'package:mydemo/presentation/screens/peticion/peticionScreen.dart';
import 'package:mydemo/presentation/screens/screen.dart';
import 'package:flutter/material.dart';

class Routers {
  static final List<AppRouter> pages = [
    AppRouter(
      patch: '/',
      title: 'home',
      description: 'pantalla inicial',
      icon: Icons.home,
      context: (context) => const HomeScreen(),
    ),
    AppRouter(
      patch: 'button',
      title: 'Button',
      description: 'pantalla que contiene todos los botones',
      icon: Icons.smart_button,
      context: (context) => const ButtonScreen(),
    ),
    AppRouter(
      patch: 'card',
      title: 'Card',
      description: 'pantalla  que contiene todos las cards',
      icon: Icons.card_giftcard,
      context: (context) => const CardScreen(),
    ),
    AppRouter(
      patch: 'card2',
      title: 'Card2',
      description: 'pantalla  que contiene todos las cards',
      icon: Icons.card_giftcard,
      context: (context) => const CardScreen(),
    ),
    AppRouter(
      patch: 'forms',
      title: 'forms',
      description: 'pantalla  que contiene todos las formularios',
      icon: Icons.card_giftcard,
      context: (context) => const FormScren(),
    ),
    AppRouter(
      patch: 'count',
      title: 'Count',
      description: 'pantalla  que contiene un contador',
      icon: Icons.card_giftcard,
      context: (context) => const CountScreen(),
    ),
    AppRouter(
      patch: 'peticion',
      title: 'Peticion',
      description: 'pantalla  que contiene una peticion',
      icon: Icons.card_giftcard,
      context: (context) => const Peticionscreen(),
    ),
  ];
  static route() => {for (var page in pages) page.patch: page.context};
}
