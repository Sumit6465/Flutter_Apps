import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:language_page/Start_Screens/info_slides.dart';
import 'package:language_page/Start_Screens/language_page.dart';
import 'package:language_page/Start_Screens/logo_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  var delegate = await LocalizationDelegate.create(
      fallbackLocale: 'en_US',
      supportedLocales: ['en_US', 'es', 'fa', 'ar', 'ru']);
  runApp(LocalizedApp(delegate, const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;
    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          localizationDelegate
        ],
        home: const LogoPage(),
      ),
    );
  }
}
