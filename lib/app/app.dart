import 'package:flutter/material.dart';
import 'package:quiz_app/app/views/continent.dart';
import 'package:quiz_app/app/views/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/continent': (context) => const Continent(),
      },
    );
  }
}
