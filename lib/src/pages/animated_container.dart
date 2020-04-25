import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerpage extends StatefulWidget {
  @override
  _AnimatedContainerpageState createState() => _AnimatedContainerpageState();
}

class _AnimatedContainerpageState extends State<AnimatedContainerpage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInCirc,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _changeShape,
      ),
    );
  }

  void _changeShape() {
    final rand = Random();
    setState(() {
      _width = rand.nextInt(300).toDouble();
      _height = rand.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(rand.nextInt(100).toDouble());
    });
  }
}
