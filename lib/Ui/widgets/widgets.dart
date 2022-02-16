
import 'package:flutlab/Constants/color.dart';
import 'package:flutter/material.dart';

class ColorSwitcher extends StatelessWidget {
  final Color color;
  const ColorSwitcher({
    Key? key,  required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: primarygradient,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),);
  }
}


BoxShadow shadow() {
    return BoxShadow(
                          color: orangeColor.withOpacity(0.2),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(0, 7), //
                        );
  }