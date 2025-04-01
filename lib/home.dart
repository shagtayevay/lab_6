import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('title'.tr()),
            Text('name'.tr()),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await context
                        .setLocale(Locale('ru')); // Переключаем на русский
                  },
                  child: Text("RU"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await context
                        .setLocale(Locale('kk')); // Переключаем на казахский
                  },
                  child: Text("KZ"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
