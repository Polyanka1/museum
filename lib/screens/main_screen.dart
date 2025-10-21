import 'package:flutter/material.dart';
import 'excursion_list.dart';
import 'home_screen.dart';
import 'three_d_screen.dart';
import 'video_screen.dart';
import 'settings_screen.dart';
import 'excursion_detail.dart';
import 'contact_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  Widget? _currentDetailPage;

  late final List<Widget> _pages; // Объявляем позже

  final Color _iconColor = const Color(0xFF235D8E);

  @override
  void initState() {
    super.initState();

    _pages = [
      const HomeScreen(),
      ExcursionList(onExcursionSelected: _openExcursionDetail),
      const ThreeDScreen(),
      const VideoScreen(),
      SettingsScreen(onContactsSelected: _openContacts),
    ];
  }

  // Функция для открытия деталей экскурсии
  void _openExcursionDetail(String title) {
    setState(() {
      _currentDetailPage = ExcursionDetail(
        title: title,
        onBackPressed: _closeDetailPage,
      );
    });
  }

  void _openContacts() {
    setState(() {
      _currentDetailPage = ContactsScreen(onBackPressed: _closeDetailPage); // ← ИЗМЕНЕНО: добавлен callback
    });
  }

  void _closeDetailPage() {
    setState(() {
      _currentDetailPage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Widget currentBody = _currentDetailPage ?? _pages[_currentIndex];

    return Scaffold(
      body: currentBody,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        onTap: (index) {
          if (_currentDetailPage != null) {
            _closeDetailPage();
          }
          setState(() => _currentIndex = index);
        },
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
          size: 25,
          color: _iconColor,
        ),
      ),
      label: '',
    );
  }
}