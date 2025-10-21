// import 'package:flutter/material.dart';
//
// class ExcursionList extends StatelessWidget {
//   const ExcursionList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 114, // Увеличиваем высоту AppBar
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 10), // Отступ справа для иконки
//                   child: Image.asset(
//                     'assets/logo.jpg',
//                     width: 40,
//                     height: 40,
//                   ),
//                 ),
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Container(
//                       width: 1,
//                       height: 18,
//                       color: const Color(0xFF434044),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 12),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: const [
//                     Text(
//                       'Интерактивный',
//                       style: TextStyle(
//                         fontSize: 11,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF004C91),
//                         fontFamily: 'Times New Roman',
//                       ),
//                     ),
//                     Text(
//                       'мемориальный музей\nП. М. Машерова',
//                       style: TextStyle(
//                         fontSize: 11,
//                         color: Colors.black87,
//                         fontFamily: 'Times New Roman',
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 7),
//               child: const Text(
//                 'Виртуальная экскурсия',
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: Colors.white,
//       ),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(vertical: 15),
//         children: [
//           _buildExcursionButton('ДЕТСТВО'),
//           _buildExcursionButton('ТРУДОВЫЕ БУДНИ'),
//           _buildExcursionButton('ПАМЯТЬ'),
//           _buildExcursionButton('ГОДЫ УЧЕБЫ'),
//           _buildExcursionButton('ВОЕННОЕ ВРЕМЯ'),
//           _buildExcursionButton('РАБОТА'),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildExcursionButton(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.white,
//           minimumSize: const Size(double.infinity, 60),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//           ),
//           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//         ),
//         child: Align(
//           alignment: Alignment.centerLeft,
//           child: Text(
//             title,
//             style: const TextStyle(fontSize: 14, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'excursion_detail.dart'; // <-- импортируем новую страницу

class ExcursionList extends StatelessWidget {
  const ExcursionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 114,
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Text(
                'Виртуальная экскурсия',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15),
        children: [
          _buildExcursionButton(context, 'ДЕТСТВО'),
          _buildExcursionButton(context, 'ТРУДОВЫЕ БУДНИ'),
          _buildExcursionButton(context, 'ПАМЯТЬ'),
          _buildExcursionButton(context, 'ГОДЫ УЧЕБЫ'),
          _buildExcursionButton(context, 'ВОЕННОЕ ВРЕМЯ'),
          _buildExcursionButton(context, 'РАБОТА'),
        ],
      ),
    );
  }

  Widget _buildExcursionButton(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExcursionDetail(title: title),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
