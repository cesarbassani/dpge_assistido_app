import 'package:dpge_assistido_app/modules/agendamento/agendamento_page.dart';
import 'package:dpge_assistido_app/modules/login/login_page.dart';
import 'package:dpge_assistido_app/modules/solicitacoes/home_page.dart';
import 'package:dpge_assistido_app/splash_page.dart';
import 'package:dpge_assistido_app/utils/config/application_config.dart';
import 'package:dpge_assistido_app/utils/ui/ui_config.dart';
import 'package:flutter/material.dart';

void main() async {
  await ApplicationConfig().configureApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: UiConfig.title,
      theme: UiConfig.theme,
      routes: {
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
        '/agendamento': (_) => const AgendamentoPage(),
      },
    );
  }
}
