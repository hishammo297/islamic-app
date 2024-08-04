
import 'package:flutter/material.dart';
import 'package:islamic/core/application_theme_manger.dart';
import 'package:islamic/layout/layout_view.dart';
import 'package:islamic/modules/quran/quran_details_view.dart';
import 'package:islamic/modules/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationThemeManger.lightThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        SplashView.routName : (context) => const SplashView(),
        LayoutView.routName: (context) => const LayoutView(),
        QuranDetailsView.routeName:  (context) =>  QuranDetailsView(),
      },
    );
  }
}

