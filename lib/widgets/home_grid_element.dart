import 'dart:math';
import 'package:flutter/material.dart';

import '../providers/home_grid_item_colors.dart';

class HomeGridElement extends StatelessWidget {
  final availableColors = homeGridColors;
  final String title;
  final String id;

  HomeGridElement({required this.id, required this.title});

  @override
  Widget build(BuildContext context) {
    final color = Random().nextInt(2);
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.grey, width: 1),
         //boxShadow: kElevationToShadow[2],//<BoxShadow>[
        //   BoxShadow(offset: Offset(0, 0.5),
        //   color: Colors.black26,
        //   blurStyle: BlurStyle.outer,
        //   blurRadius: 7),
        // ],
        borderRadius: BorderRadius.circular(20),
        gradient: availableColors[color],
      ),
      child: Center(child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),)),
    );
  }
}
