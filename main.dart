import 'package:flutter/material.dart';
import 'loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEALER YAMAHA',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Colors.black, onBackground: Colors.black
        ),
      ),
      debugShowCheckedModeBanner: false, //Menghapus tulisam debug
      home: LoginScreen(),
    );
  }
}