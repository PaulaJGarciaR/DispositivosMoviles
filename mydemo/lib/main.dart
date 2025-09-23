import 'package:flutter/material.dart';
import 'package:mydemo/config/router/router.dart';
import 'package:mydemo/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mydemo/presentation/providers/count_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkTheme = ref.watch(darkThemeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routers.route(),
      theme: AppTheme(dark: darkTheme, selectColor: 1).getTheme(),
    );
  }
}
