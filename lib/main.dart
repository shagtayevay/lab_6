import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lab_6/generated/codegen_loader.g.dart';
import 'package:lab_6/registration_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        Locale('en'), 
        Locale('ru'), 
        Locale('kk'),
      ],
      path: 'assets/translations', // Путь к файлам перевода
      fallbackLocale: Locale('en'), // Локаль по умолчанию
      assetLoader: CodegenLoader(),
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
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: RegistrationPage(),
    );
  }
}



