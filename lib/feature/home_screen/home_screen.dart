import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String home = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [],
      ),
    );
  }
}
