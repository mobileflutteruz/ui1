import 'package:flutter/material.dart';

class IconS extends StatelessWidget {
  IconS({Key? key, double? iconSize, IconData? iconIcon, Color? iconColor})
      : super(key: key);
  double? iconSize;
  IconData? iconIcon;
  Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconIcon,
      color: iconColor,
      size: iconSize,
    );
  }
}
