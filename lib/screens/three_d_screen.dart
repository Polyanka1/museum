import 'package:flutter/material.dart';

class ThreeDScreen extends StatelessWidget {
  const ThreeDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 114, // Увеличиваем высоту AppBar
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10), // Отступ справа для иконки
                  child: Image.asset(
                    'assets/logo.jpg',
                    width: 40,
                    height: 40,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 1,
                      height: 18,
                      color: const Color(0xFF434044),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Интерактивный',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF004C91),
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    Text(
                      'мемориальный музей\nП. М. Машерова',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black87,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: const Text(
                'Экспонаты',
                style: TextStyle(fontSize: 18),
              ),
            ),

          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(child: Text('3д модели')),
    );
  }
}
