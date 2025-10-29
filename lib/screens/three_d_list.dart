import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ThreeDListScreen extends StatelessWidget {
  final Function(String title, String description, String modelPath)? onModelSelected;

  const ThreeDListScreen({super.key, this.onModelSelected});

  final List<Map<String, String>> models = const [
    {
      'title': 'Дом Машерова',
      'description': '3D-модель дома, в котором жил Пётр Миронович Машеров.',
      'image': 'assets/models/model1.jpg',
      'model': 'assets/models/cottage_obj.obj',
    },
    // {
    //   'title': 'Памятник Машерову',
    //   'description': 'Модель памятника, установленного в честь Машерова в Витебске.',
    //   'image': 'assets/models/model2.jpg',
    //   'model': 'assets/models/monument_obj.obj',
    // },
    // {
    //   'title': 'Автомобиль Машерова',
    //   'description': '3D-модель автомобиля, на котором ездил Машеров.',
    //   'image': 'assets/models/model3.jpg',
    //   'model': 'assets/models/car_obj.obj',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(screenTitle: 'Экспонаты'),
      backgroundColor: const Color(0xFFF2F2F2),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 15),
        itemCount: models.length,
        itemBuilder: (context, index) {
          final item = models[index];
          return _buildModelBlock(
            context: context,
            title: item['title']!,
            description: item['description']!,
            imagePath: item['image']!,
            modelPath: item['model']!,
          );
        },
      ),
    );
  }

  Widget _buildModelBlock({
    required BuildContext context,
    required String title,
    required String description,
    required String imagePath,
    required String modelPath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: GestureDetector(
        onTap: () {
          if (onModelSelected != null) {
            onModelSelected!(title, description, modelPath);
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
              const Icon(Icons.threed_rotation_outlined,
                  color: Color(0xFF004C91), size: 28),
            ],
          ),
        ),
      ),
    );
  }
}

