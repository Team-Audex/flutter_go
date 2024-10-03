import 'package:flutter/material.dart';
import 'package:flutter_go/components/new_project_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      child: MaterialApp(
        home: Scaffold(
          body: Center(
            child: NewProjectCard(
              icon: Icons.add,
              name: 'Create a new project',
              iconColor: Colors.blue,
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
