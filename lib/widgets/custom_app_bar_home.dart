import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final String screenTitle;
  final bool showBackButton;

  const CustomAppBarHome({
    super.key,
    required this.screenTitle,
    this.showBackButton = false,
  });

  @override
  Size get preferredSize => const Size.fromHeight(48);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
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

        ],
      ),
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
    );
  }
}