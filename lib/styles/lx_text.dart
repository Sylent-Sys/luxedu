import 'package:flutter/material.dart';
import 'package:luxedu/styles/lx_sizes.dart';
import 'package:luxedu/styles/colors.dart';

class LXText {
  String string;
  BuildContext context;
  Color? color;
  FontWeight? weight;
  int? maxLines;
  TextAlign? textAlign;
  TextOverflow? overflow;
  double? fontSize;
  final bool isSelected;
  LXText({
    required this.context,
    required this.string,
    this.color,
    this.weight,
    this.maxLines,
    this.textAlign,
    this.overflow,
    this.fontSize,
    this.isSelected = false,
  });

  Widget _baseText() {
    return Text(
      string,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
      style: TextStyle(
        color: isSelected ? ColorPalette.black : color ?? ColorPalette.black,
        fontSize: fontSize ?? _getFontSize(8),
        fontWeight: isSelected ? FontWeight.bold : weight ?? FontWeight.normal,
      ),
    );
  }

  double _getFontSize(int dp) {
    double result = 8 - (0.5 * (dp - 1));
    return LXSizes(context: context, dp: result).getDp();
  }

  Widget getP(int p) {
    if (p > 0 && p < 15) {
      fontSize = _getFontSize(p);
      return _baseText();
    }
    return _baseText();
  }
}
