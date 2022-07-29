import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.fontSize = 30,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  final String text;
  final Color color;
  final double? fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  const NormalText({
    Key? key,
    this.color = Colors.grey,
    required this.text,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
      ),
    );
  }
}
