import 'package:flutter/material.dart';
import 'excursion_list.dart';
import 'home_screen.dart';
import 'three_d_screen.dart';
import 'video_screen.dart';
import 'settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    ExcursionList(),
    ThreeDScreen(),
    VideoScreen(),
    SettingsScreen(),
  ];

  final Color _iconColor = const Color(0xFF235D8E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        showSelectedLabels: false, // убираем лейблы
        showUnselectedLabels: false, // убираем лейблы
        backgroundColor: Colors.white,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          _buildNavItem(Icons.home_outlined, 0),
          _buildNavItem(Icons.headphones_outlined, 1),
          _buildNavItem(Icons.threed_rotation_outlined, 2),
          _buildNavItem(Icons.skip_next, 3),
          _buildNavItem(Icons.info_outlined, 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData iconData, int index) {
    bool isActive = _currentIndex == index;
    return BottomNavigationBarItem(
      icon: Container(
        padding: const EdgeInsets.all(8),
        decoration: isActive
            ? BoxDecoration(
          color: _iconColor.withOpacity(0.25),
          borderRadius: BorderRadius.circular(12),
        )
            : null,
        child: Icon(
          iconData,
          size: 25, // увеличиваем размер
          color: _iconColor,
        ),
      ),
      label: '',
    );
  }
}
