import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BoldText extends StatelessWidget {
  double size;
  final String text;
  final Color textColor;
  BoldText({
    Key? key,
    required this.text,
    this.textColor = Colors.black,
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
