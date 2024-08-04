import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routName = "/";
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    Timer(Duration(seconds: 2),
          (){
      Navigator.pushReplacementNamed(context, LayoutView.routName);
          },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/splash (1).png",
    fit: BoxFit.cover,
    );
  }
}
