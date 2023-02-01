import 'package:flutter/material.dart';

class HomeGridElement extends StatelessWidget {
  const HomeGridElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [
            0.1,
            0.4,
            0.7,
            0.9,
          ],
          colors: [
            Colors.yellow,
            Colors.red,
            Colors.indigo,
            Colors.teal,
          ],
        ),
      ),
    );
  }
}
