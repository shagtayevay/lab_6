import 'package:flutter/material.dart';
import 'package:lab_6/main_page.dart';
import 'package:lab_6/second_page.dart';

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int pageIndex = 0;

  final List<Widget> pages = [
    const MainPage(),
    const SecondPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Bottom Example", // Статический текст
          style: TextStyle(
            color: Colors.black, // Цвет текста
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: pages[pageIndex], // Отображаем текущую страницу
      bottomNavigationBar: buildMyNavBar(context), // Нижняя панель навигации
    );
  }

  // Метод для создания нижней панели навигации
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ), // BorderRadius.only
      ), // BoxDecoration
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Кнопка для главной страницы
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  ) // Icon
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 35,
                  ), // Icon
          ), // IconButton

          // Кнопка для второй страницы
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.work_rounded,
                    color: Colors.white,
                    size: 35,
                  ) // Icon
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.grey,
                    size: 35,
                  ), // Icon
          ), // IconButton
        ],
      ),
    );
  }
}
