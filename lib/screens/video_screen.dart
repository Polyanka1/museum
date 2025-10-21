import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/custom_app_bar.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  final List<Map<String, String>> videos = const [
    {
      'title': 'ПОБЕДИТЕЛИ. ПЕТР МАШЕРОВ',
      'image': 'assets/video1.jpg',
      'youtube': 'https://youtu.be/vkO-HAahXPU?si=TI8zIO1Irye0dhgI',
    },
    {
      'title': 'ВСПОМИНАЯ ПЕТРА МИРОНОВИЧА МАШЕРОВА',
      'image': 'assets/video2.jpg',
      'youtube': 'https://youtu.be/nII2hvvKpfw?si=tRJGdSgr5HpuGPP0',
    },
    {
      'title': '100-ЛЕТИЕ П.М.МАШЕРОВ',
      'image': 'assets/video3.jpg',
      'youtube': 'https://youtu.be/dpWWUWlIcso?si=xCKPQfIXTZEKsvNH',
    },
    {
      'title': 'ПАРТИЗАНСКОЕ ДВИЖЕНИЕ. ДОРОГАМИ МАШЕРОВА',
      'image': 'assets/video4.jpg',
      'youtube': 'https://youtu.be/GuzH7L9TPZ8?si=YpPGRgMMklZQr6t6',
    },
    {
      'title': 'ПЕТР МАШЕРОВ',
      'image': 'assets/video5.jpg',
      'youtube': 'https://youtu.be/TU2jIBy_erg?si=cM092BlPFTU3mLs3',
    },
    {
      'title': 'НАШИ ЗВУЧАТ ИМЕНА',
      'image': 'assets/video6.jpg',
      'youtube': 'https://youtu.be/yWVFJpguqw8?si=vPMvtFDIP-btcLhq',
    },
    {
      'title': 'ЖИЗНЬ ПОСВЯЩЕННАЯ НАРОДУ',
      'image': 'assets/video7.jpg',
      'youtube': 'https://youtu.be/U67uLOo3Uv8?si=Ng1r41gKFFHBcNaT',
    },
    {
      'title': 'РОДИНА МОЯ, БЕЛОРУССКАЯ',
      'image': 'assets/video8.jpg',
      'youtube': 'https://youtu.be/ApBhmkJ8bWY?si=qMiMUbKoG6KfwJFk',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(screenTitle: 'Фонды'),
      backgroundColor: const Color(0xFFF2F2F2),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 15),
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final item = videos[index];
          return _buildVideoBlock(
            title: item['title']!,
            imagePath: item['image']!,
            youtubeUrl: item['youtube']!,
          );
        },
      ),
    );
  }

  Widget _buildVideoBlock({
    required String title,
    required String imagePath,
    required String youtubeUrl,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: GestureDetector(
        onTap: () async {
          final uri = Uri.parse(youtubeUrl);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri, mode: LaunchMode.externalApplication);
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              )
            ],
          ),
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              const Icon(Icons.play_circle_outline, color: Color(0xFF004C91), size: 28),
            ],
          ),
        ),
      ),
    );
  }
}
