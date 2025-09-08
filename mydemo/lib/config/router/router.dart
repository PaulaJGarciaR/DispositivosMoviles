import 'package:flutter/material.dart';
import 'package:mydemo/config/router/app_router.dart';
import 'package:mydemo/presentation/screens/form/form.dart';
import 'package:mydemo/presentation/screens/screen.dart';

class Routers {

static final List<AppRouter> pages = [

  AppRouter(
    patch: '/',
    title: 'Home',
    description: 'Este apartado acede a la página principal',
    icon: Icons.home,
    context: (context) => const HomeScreen(),
  ),

  AppRouter(
    patch: 'button',
    title: 'Button',
    description: 'Este apartado acede a la sección de botón',
    icon: Icons.radio_button_checked,
    context: (context) => const ButtonScreen(),
  ),

  AppRouter(
    patch: 'card',
    title: 'Card',
    description: 'Este apartado acede a la sección de tarjetas',
    icon: Icons.card_giftcard,
    context: (context) => const CardScreen(),
  ),

  AppRouter(
    patch: 'form',
    title: 'Formulario Screen',
    description: 'Este apartado acede a la sección de formulario',
    icon: Icons.format_list_bulleted,
    context: (context) => const FormScreen(),
  ),

];

static route() =>{ for (var page in pages) page.patch: page.context};

}