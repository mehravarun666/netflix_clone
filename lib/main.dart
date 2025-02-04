import 'package:flutter/material.dart';
import 'package:netflix/presentation/screens/splash_screen/splash.dart';


main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        colorScheme: const ColorScheme.dark(
          // primary:Colors.black,
          background: Colors.black,
          secondary: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      home: const Splash(),
    );
  }
}
