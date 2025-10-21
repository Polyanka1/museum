import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ThreeDScreen extends StatelessWidget {
  const ThreeDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(screenTitle: 'Экспонаты'),
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(child: Text('3д модели')),
    );
  }
}