import 'package:flutter/material.dart';

class LXSizes {
  BuildContext context;
  double dp = 1;
  double base = 0;
  final Map<String, double> dpCustom = {};
  LXSizes({
    required this.context,
    this.dp = 1,
  }) {
    base = getBase();
  }

  height() {
    return MediaQuery.of(context).size.height;
  }

  width() {
    return MediaQuery.of(context).size.width;
  }

  getBase() {
    if (width() > height()) {
      return width();
    } else {
      return height();
    }
  }

  getDp() {
    double result = base / 240;
    return (result / 2) * (dp + 1);
  }

  _initDpCustom() {
    dpCustom["border"] = 1;
  }

  getDpCustom({
    required name,
  }) {
    _initDpCustom();
    dp = dpCustom[name] ?? 1;
    return getDp();
  }
}
