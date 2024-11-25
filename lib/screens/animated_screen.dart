import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  //Método
  void changeShape() {
   /*
    _width += 30;
    _height += 30;
    _color = Colors.deepOrange;
    _borderRadius = BorderRadius.circular(40);
    setState(() {});*/
    final rndm = Random();
    _width = rndm.nextInt(300).toDouble() + 70;
    _height = rndm.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(rndm.nextInt(255), rndm.nextInt(255), rndm.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(rndm.nextInt(100).toDouble() + 10);
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contenedor Animado'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.decelerate,
          duration: const Duration(milliseconds: 400),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeShape(),
        child: const Icon(Icons.propane_sharp),
      ),
    );
  }
}