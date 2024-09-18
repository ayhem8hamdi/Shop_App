import 'package:flutter/material.dart';
import 'package:shopp_app/Views/splash_screen.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {SplashScreen.id: (context) => const SplashScreen()},
      initialRoute: SplashScreen.id,
    );
  }
}
