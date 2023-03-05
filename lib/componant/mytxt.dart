import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyText extends StatelessWidget {
  const MyText(
      {super.key,
      required this.txt,
      required this.size,
      required this.color,
      this.FontWeight});
  final String txt;
  final double size;
  final Color color;
  final FontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(color: color, fontSize: size, fontWeight: FontWeight),
    );
  }
}
