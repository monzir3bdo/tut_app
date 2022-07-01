import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/app/app.dart';
class Test1 extends StatelessWidget {
  const Test1({Key? key}) : super(key: key);
  void updateAppState(){
    MyApp.instance.appState=10;
  }
  // Tom looked at the woman and said i'm surprised you came 
  void printAppState(){
    print(MyApp.instance.appState);
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
