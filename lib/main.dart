import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Add this line

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dyslexia Reader',
      theme: ThemeData(fontFamily: 'OpenDyslexic', useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {'/home': (context) => HomeScreen()},
    );
  }
}
