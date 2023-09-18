import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final  int days=20;
  final  String name = "codepur";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Catalog App")
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $days of flutter by $name"),
            ),
          ),
          drawer: Drawer(),
    );
  }
        
}