import 'package:flutter/material.dart';
import 'package:flutter_go/home_drawer/home_drawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        drawer: HomeDrawer(),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
