import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import '../widgets/custom_app_bar.dart';

class ThreeDDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String modelPath;
  final VoidCallback? onBackPressed;

  const ThreeDDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.modelPath,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        screenTitle: title,
        showBackButton: true,
        onBackPressed: onBackPressed,
      ),
      backgroundColor: const Color(0xFFF2F2F2),
      body: Column(
        children: [
          Expanded(
            child: Cube(
              onSceneCreated: (Scene scene) {
                scene.world.add(Object(fileName: modelPath));
                scene.camera.zoom = 15;
              },
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
