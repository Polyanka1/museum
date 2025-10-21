import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import 'excursion_detail.dart';

class ExcursionList extends StatelessWidget {
  final Function(String)? onExcursionSelected;

  const ExcursionList({super.key, this.onExcursionSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(screenTitle: 'Виртуальная экскурсия'),
      backgroundColor: const Color(0xFFF2F2F2),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15),
        children: [
          _buildExcursionButton(context, 'ДЕТСТВО'),
          _buildExcursionButton(context, 'ТРУДОВЫЕ БУДНИ'),
          _buildExcursionButton(context, 'ПАМЯТЬ'),
          _buildExcursionButton(context, 'ГОДЫ УЧЕБЫ'),
          _buildExcursionButton(context, 'ВОЕННОЕ ВРЕМЯ'),
          _buildExcursionButton(context, 'РАБОТА'),
        ],
      ),
    );
  }

  Widget _buildExcursionButton(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          if (onExcursionSelected != null) {
            onExcursionSelected!(title);
          } else {
            // Fallback
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExcursionDetail(title: title),
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ),
    );
  }
}