import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text, required this.color, required this.textSize});
  final String text;
  final Color color;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style:  TextStyle(color: color,fontSize: textSize,),);
  }
}