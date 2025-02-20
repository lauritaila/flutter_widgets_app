import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {

  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();

}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.indigo;
  double _borderRadius = 10.0;

  void changeShape(){
      final random = Random();
      _width = random.nextInt(300).toDouble() + 50;
      _height = random.nextInt(300).toDouble() + 50;
      _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = random.nextInt(100).toDouble() + 20;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated"),
      ), 
      body: Center(
        child: AnimatedContainer(
        curve: Curves.easeOutCubic,
        width: _width <= 0 ? 10 : _width, 
        height: _height <= 0 ? 10 : _height, 
        duration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
          color: _color, 
          borderRadius: BorderRadius.circular(_borderRadius <= 0 ? 0 : _borderRadius)
        )),
      ),
      floatingActionButton: FloatingActionButton(onPressed: changeShape, child: const Icon(Icons.play_arrow_rounded),)
    );
  }
}