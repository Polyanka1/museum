import 'package:flutter/material.dart';

class ExcursionDetail extends StatefulWidget {
  final String title;

  const ExcursionDetail({super.key, required this.title});

  @override
  State<ExcursionDetail> createState() => _ExcursionDetailState();
}

class _ExcursionDetailState extends State<ExcursionDetail> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 114,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, // убираем стандартную стрелку
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Верхняя часть (логотип + подпись)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/logo.jpg',
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 8),
                Container(width: 1, height: 18, color: const Color(0xFF434044)),
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

            // Нижняя часть — стрелка и заголовок на одной линии
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: const Color(0xFF004C91),
                    iconSize: 18,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Основной контент
      body: Center(
        child: Text(
          widget.title,
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
