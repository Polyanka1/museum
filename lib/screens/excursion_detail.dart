import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ExcursionDetail extends StatelessWidget {
  final String title;
  final VoidCallback? onBackPressed;

  const ExcursionDetail({
    super.key,
    required this.title,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        screenTitle: title,
        showBackButton: true,
        onBackPressed: onBackPressed, // Передаем callback для возврата
      ),
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}