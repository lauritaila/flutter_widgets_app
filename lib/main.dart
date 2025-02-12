import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/config/theme/app_theme.dart';

void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 8).getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Widgets"), 
        ),
        body: Center(
          child: Text("Hello World"),
        )
    ));
  }
}