import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ContactsScreen extends StatelessWidget {
  final VoidCallback? onBackPressed;

  const ContactsScreen({super.key, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          screenTitle: 'Контакты',
          showBackButton: true,
          onBackPressed: onBackPressed,
        ),
        backgroundColor: const Color(0xFFF2F2F2),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // ← ДОБАВЛЕНО
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // ← ДОБАВЛЕНО
                      children: [
                        Text(
                            "Адрес:",
                            style: TextStyle(
                              color: Color(0xFF235D8E),
                              fontSize: 14,
                            )
                        ),
                        const SizedBox(height: 5),
                        Text("г. Витебск, пр-т Московский, 33",
                            style: TextStyle(
                              fontSize: 14,
                            ))
                      ],
                    ),
                    const SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // ← ДОБАВЛЕНО
                      children: [
                        Text(
                            "Телефон:",
                            style: TextStyle(
                              color: Color(0xFF235D8E),
                              fontSize: 14,
                            )
                        ),
                        const SizedBox(height: 5),
                        Text("8 (0212) 37-59-58",
                            style: TextStyle(
                              fontSize: 14,
                            ))
                      ],
                    ),
                    const SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // ← ДОБАВЛЕНО
                      children: [
                        Text(
                            "Время работы*:",
                            style: TextStyle(
                              color: Color(0xFF235D8E),
                              fontSize: 14,
                            )
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // ← ДОБАВЛЕНО
                              children: [
                                Text('Понедельник:',
                                  style: TextStyle(
                                    fontSize: 14,
                                  )
                                ),
                                Text('Вторник:',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('Среда:',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('Четверг:',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('Пятница:',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('Суббота:',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('Воскресенье:',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                              ],
                            ),
                            const SizedBox(width: 40),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // ← ДОБАВЛЕНО
                              children: [
                                Text('Выходной',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('10:00 - 16:00',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('10:00 - 16:00',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('10:00 - 16:00',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('10:00 - 16:00',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('Выходной',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                                Text('Выходной',
                                    style: TextStyle(
                                      fontSize: 14,
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "*только по предварительной записи ",
                          style: TextStyle(
                            color: Color(0xFF235D8E),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // ← ДОБАВЛЕНО
                      children: [
                        Text(
                            "О нас:",
                            style: TextStyle(
                              color: Color(0xFF235D8E),
                              fontSize: 14,
                            )
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Мемориальный музей П.М. Машерова Витебского государственного университета имени П.М. Машерова рассказывает об основных вехах жизненного пути нашего известного земляка, выпускника университета, видного политического и государственного деятеля эпохи Советской Беларуси,  Героя Советского Союза, Героя Социалистического труда –  Петра Мироновича Машерова. \n Музей был открыт 28 мая 1983 г. Большинство экспонатов музея являются частью  Государственного музейного фонда Республики Беларусь. Решением коллегии Министерства культуры Республики Беларусь  от 08.06.2015 г. №72 музею присвоено звание \"Народный\". \n В настоящее время на базе музея ведется культурно-просветительская, учебно-научная работа по ознакомлению студентов с историей Великой Отечественной войны, партизанским движением на территории Беларуси, а также культурными достижениями белорусского народа в ХХ веке.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}