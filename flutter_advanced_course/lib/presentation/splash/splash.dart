import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/presentation/resources/routes_manager.dart';

import '../resources/color_manager.dart';
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? timer;
  _startTimer(){
    timer=Timer(const Duration(seconds: 2),_goNext);
  }
  _goNext(){
    Navigator.pushReplacementNamed(context,Routes.onBoardingRoute);
  }
  @override
   void initState(){
    _startTimer();
    super.initState();
    _startTimer();
  }
  @override
  void dispose(){
    timer?.cancel;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body:const Center(
        child: Image(
          image:AssetImage('assets/images/splash_logo.png')
        ),
      )
    );
  }
}
