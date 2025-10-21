import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.2),

            // Центрированный блок с логотипом, линией и текстом
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // выравнивание по центру
                children: [
                  Image.asset(
                    'assets/logo.jpg',
                    width: size.width * 0.28,  // увеличиваем логотип
                    height: size.width * 0.4,
                  ),
                  // линия по высоте текста, отступ между логотипом и линией убран
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 1, // тонкая линия
                        height: 36, // высота заголовка + подзаголовка (пример)
                        color: const Color(0xFF434044),
                      ),
                    ],
                  ),
                  const SizedBox(width: 12), // небольшое расстояние между линией и текстом
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Интерактивный',
                        style: TextStyle(
                          fontSize: 20, // заголовок
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF004C91),
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                      Text(
                        'мемориальный музей\nП. М. Машерова',
                        style: TextStyle(
                          fontSize: 16, // подзаголовок
                          color: Colors.black87,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/main');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF004C91),
                  minimumSize: const Size(180, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'НАЧАТЬ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
