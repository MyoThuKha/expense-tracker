import 'package:flutter/material.dart';

TextStyle displayText({double? fontSize,FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: fontSize ?? 32,
    fontWeight: fontWeight ?? FontWeight.w500,
  );
}
