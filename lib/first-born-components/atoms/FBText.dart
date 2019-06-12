import '../../utils/textUtils.dart';
import 'package:flutter/material.dart';

class FBText extends StatelessWidget {
  FBText(
      {this.color = Colors.black87,
      this.align = TextAlign.left,
      this.bold = false,
      this.size = "p",
      @required this.data});

  final String data;
  final Color color;
  final String size;
  final TextAlign align;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    var fontWeight = FontWeight.normal;

    if (bold) {
      fontWeight = FontWeight.bold;
    }

    return Text(
      data,
      style: TextStyle(
          fontWeight: fontWeight,
          color: color,
          fontSize: TextUtil.getSize(size)),
      textAlign: align,
    );
  }
}
