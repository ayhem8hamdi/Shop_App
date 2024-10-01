import 'package:flutter/material.dart';
import 'package:shopp_app/Views/home_screen.dart';
import 'package:shopp_app/Views/item_screen.dart';
import 'package:shopp_app/Views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        ItemScreen.id: (context) => const ItemScreen()
      },
      initialRoute: SplashScreen.id,
    );
  }
}
