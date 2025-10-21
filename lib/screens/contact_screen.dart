import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ContactsScreen extends StatelessWidget {
  final VoidCallback? onBackPressed; // ← ДОБАВЛЕНО: callback для кнопки назад

  const ContactsScreen({super.key, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        screenTitle: 'Контакты',
        showBackButton: true, // ← ДОБАВЛЕНО: показываем кнопку назад
        onBackPressed: onBackPressed, // ← ДОБАВЛЕНО: передаем callback
      ),
      backgroundColor: const Color(0xFFF2F2F2),
      body: const Center(
        child: Text('Страница контактов'),
      ),
    );
  }
}