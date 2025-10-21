import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/language_bottom_sheet.dart';
import 'contact_screen.dart';

class SettingsScreen extends StatelessWidget {
  final VoidCallback? onContactsSelected;

  const SettingsScreen({super.key, this.onContactsSelected});

  Future<void> _openExternalLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Не удалось открыть ссылку: $url');
    }
  }

  void _showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const LanguageBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(screenTitle: 'Прочее'),
      backgroundColor: const Color(0xFFF2F2F2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        children: [
          _buildSettingsButton(
            context,
            title: 'Контакты',
            onTap: () {
              if (onContactsSelected != null) {
                onContactsSelected!();
              } else {
                // Fallback на случай если callback не передан
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactsScreen()),
                );
              }
            },
          ),
          _buildSettingsButton(
            context,
            title: 'Язык',
            trailing: const Text(
              'Русский',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            onTap: () => _showLanguageBottomSheet(context),
          ),
          _buildSettingsButton(
            context,
            title: 'Проекты',
            onTap: () => _openExternalLink('https://www.vsu.by/musei/memorialnyj-muzej-p-m-masherova/meropriyatiya-muzeya-p-m-masherova.html'),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsButton(
      BuildContext context, {
        required String title,
        required VoidCallback onTap,
        Widget? trailing,
      }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        title: Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.black87),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (trailing != null) trailing,
            const Icon(Icons.arrow_forward_ios, color: Color(0xFF004C91), size: 16),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}