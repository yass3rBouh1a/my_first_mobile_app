import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BreakFast" ,
        style: TextStyle(
          color: Colors.black,
          fontSize: 24.0,
          fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        ),
      ),
    );
  }
}