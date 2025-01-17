import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}
/* hey */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomePage()
    
    );
  }
}
