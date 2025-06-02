import 'package:gita_sloka/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/text_size_provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => TextSizeProvider(),
    child: const BhagavadGitaApp(),
  ),
);

class BhagavadGitaApp extends StatelessWidget {
  const BhagavadGitaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bhagavad Gita',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Poppins',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFF8C00),
          elevation: 0,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF8E1),
      ),
      home: const SplashScreen(), // Mengubah home ke SplashScreen
    );
  }
}
