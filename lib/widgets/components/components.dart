import 'package:flutter/material.dart';
import 'package:shopping/core/theme/app_theme.dart';
Widget defaultButton({
  double width = double.infinity,
  bool isUppercase = true,
   VoidCallback? function,
  required String text,
  double radius = 10.0,
}) =>
    Container(
      height: 50.0,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUppercase ? text.toUpperCase() : text,
          style: const TextStyle(
            color:AppTheme.kcontentColor,
          ),
        ),
      ),
    );