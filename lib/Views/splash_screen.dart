import 'package:flutter/material.dart';
import 'package:shopp_app/Views/home_screen.dart';
import 'package:shopp_app/Widgets/custom_elevatedbutton.dart';
import 'package:shopp_app/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String id = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'Assets/Images/splash.png',
                height: 300,
              ),
              const SizedBox(height: 25),
              Text(
                'Buy Fresh Grocery',
                style: TextStyle(
                  fontSize: 35,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              CustomElevatedButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
