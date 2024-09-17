import 'package:flutter/material.dart';
import 'package:shopp_app/Views/home_screen.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {HomeScreen.id: (context) => const HomeScreen()},
      initialRoute: HomeScreen.id,
    );
  }
}
