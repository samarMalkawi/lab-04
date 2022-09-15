import 'package:flutter/material.dart';
import 'package:labfour/Home.dart';
void main() {
  runApp(MaterialApp(home: multiScreen(),));
}

class multiScreen extends StatelessWidget {
  const multiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
