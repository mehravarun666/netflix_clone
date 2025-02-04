import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix/presentation/screens/screen_core/screen_core.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animationController.forward();

    Future.delayed(const Duration(seconds: 3), () {
      animationController.stop();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
    });
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/json/netflix_logo.json',
            controller: animationController, onLoaded: (composition) {
          animationController.duration = composition.duration;
        }),
      ),
    );
  }
}
