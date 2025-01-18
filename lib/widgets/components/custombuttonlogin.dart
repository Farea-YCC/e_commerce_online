import 'package:flutter/material.dart';
import 'package:shopping/core/theme/app_theme.dart';

class CustomButtonLogin extends StatelessWidget {
  final void Function()? onPressed;
  final String title;

  const CustomButtonLogin({
    super.key,
    this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 55,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      //color: Color.fromRGBO(143, 148, 251, 1), // Light blue
      color: AppTheme.kprimaryColor,
      textColor:AppTheme.kcontentColor,
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // Add an empty SizedBox to create space between text and icon
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
