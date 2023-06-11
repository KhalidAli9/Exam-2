import 'package:flutter/material.dart';
import 'package:flutter_exsam/Screens/Screens.dart';

import 'conistans/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screens(),
    );
  }
}
