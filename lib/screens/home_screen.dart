import 'package:flutter/material.dart';
import '../widgets/custom_app_bar_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarHome(screenTitle: ''),
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(child: Text('Главная')),
    );
  }
}