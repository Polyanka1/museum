import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String screenTitle;
  final bool showBackButton;
  final VoidCallback? onBackPressed;

  const CustomAppBar({
    super.key,
    required this.screenTitle,
    this.showBackButton = false,
    this.onBackPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(100);

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
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14.5),
                child: Text(
                  screenTitle,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              if (showBackButton)
                Positioned(
                  left: -15,
                  top: 0,
                  bottom: 0,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: onBackPressed ?? () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios_new),
                        color: const Color(0xFF004C91),
                        iconSize: 18,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      const SizedBox(width: 6), // отступ между стрелкой и текстом
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
    );
  }
}