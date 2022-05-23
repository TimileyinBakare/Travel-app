import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color textColor;
  AppText({
    Key? key,
    required this.text,
    this.textColor = Colors.black54,
    this.size = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: textColor,
      ),
    );
  }
}
