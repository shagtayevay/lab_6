import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lab_6/generated/codegen_loader.g.dart';
import 'package:lab_6/registration_page.dart';

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ru'), Locale('kk')],
      path: 'assets/translations', // Путь к файлам переводов
      fallbackLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: "lab_6",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: RegistrationPage(),
    );
  }
}
