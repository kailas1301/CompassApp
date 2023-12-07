import 'package:flutter/material.dart';

class NeuCircle extends StatelessWidget {
  final child;
  const NeuCircle({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      alignment: Alignment.center,
      margin: EdgeInsets.all(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:  const Color.fromARGB(255, 34, 34, 33),
        boxShadow: [
          BoxShadow(
              color:  const Color.fromARGB(255, 34, 34, 33),
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
          BoxShadow(
              color:  const Color.fromARGB(255, 34, 34, 33),
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 34, 34, 33),
            const Color.fromARGB(255, 34, 34, 33),
            const Color.fromARGB(255, 34, 34, 33),
            const Color.fromARGB(255, 34, 34, 33),
          ],
          stops: [0.1, 0.3, 0.8, 1],
        ),
      ),
      child: child,
    );
  }
}