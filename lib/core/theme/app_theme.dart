import 'package:flutter/material.dart';
class AppTheme {
  static const kprimaryColor = Color.fromARGB(255, 242, 104, 77);
  static const kcontentColor = Color.fromARGB(255, 255, 255, 255);
  static const secondaryColor = Color.fromARGB(255, 0, 5, 5);
  static const thirdColor = Color.fromARGB(255, 57, 57, 57);
  static const kTextSuccsesColor = Colors.green;

  /// Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: kcontentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        ),
        elevation: 0,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: kcontentColor,
        selectedItemColor: kprimaryColor,
        unselectedItemColor: secondaryColor,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
      dialogBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      dialogTheme: _dialoglightTheme(kcontentColor, secondaryColor),
      useMaterial3: true,
      colorScheme: _lightColorScheme,
      appBarTheme: _lightAppBarTheme,
      scaffoldBackgroundColor: kcontentColor,
      cardColor: kcontentColor,
      inputDecorationTheme: _inputDecorationTheme(secondaryColor, kcontentColor),
      elevatedButtonTheme: _lightElevatedButtonTheme(),
      floatingActionButtonTheme: _floatingActionButtonTheme(
          kcontentColor, const Color.fromARGB(0, 28, 57, 65)),
      textTheme: _getTextTheme(),
      splashFactory: InkRipple.splashFactory,
      splashColor: kprimaryColor.withOpacity(0.08),
      textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: kprimaryColor.withOpacity(1.0),
        selectionColor: kprimaryColor.withOpacity(0.6),
        cursorColor: kprimaryColor.withOpacity(1.0),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: kTextSuccsesColor,
        contentTextStyle: const TextStyle(color: kcontentColor),
        behavior: SnackBarBehavior.floating,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  /// Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        ),
        elevation: 5,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: secondaryColor,
        selectedItemColor: kprimaryColor,
        unselectedItemColor: kcontentColor,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
      ),
      dialogBackgroundColor: const Color.fromARGB(255, 57, 57, 57),
      dialogTheme: _dialogDarkTheme(secondaryColor, kcontentColor),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: kTextSuccsesColor,
        contentTextStyle: const TextStyle(color: kcontentColor),
        behavior: SnackBarBehavior.floating,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      useMaterial3: true,
      colorScheme: _darkColorScheme,
      appBarTheme: _darkAppBarTheme,
      scaffoldBackgroundColor: secondaryColor,
      cardColor: const Color.fromARGB(255, 57, 57, 57),
      inputDecorationTheme: _inputDecorationTheme(kcontentColor, thirdColor),
      elevatedButtonTheme: _darkElevatedButtonTheme(),
      floatingActionButtonTheme: _floatingActionButtonTheme(
          const Color.fromARGB(255, 57, 57, 57), kcontentColor),
      textTheme: _getTextTheme(),
      splashFactory: InkRipple.splashFactory,
      splashColor: kprimaryColor.withOpacity(0.08),
      textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: kprimaryColor.withOpacity(1.0),
        selectionColor: kprimaryColor.withOpacity(0.6),
        cursorColor: kprimaryColor.withOpacity(1.0),
      ),
    );
  }

  /// Dialog Dark Theme
  static DialogTheme _dialogDarkTheme(
      Color backgroundColor, Color contentColor) {
    return DialogTheme(
      backgroundColor: thirdColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      titleTextStyle: TextStyle(
        color: contentColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: TextStyle(
        color: contentColor,
        fontSize: 16,
      ),
    );
  }

  /// Dialog light Theme
  static DialogTheme _dialoglightTheme(
      Color backgroundColor, Color contentColor) {
    return DialogTheme(
      backgroundColor: kcontentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      titleTextStyle: TextStyle(
        color: contentColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: TextStyle(
        color: contentColor,
        fontSize: 16,
      ),
    );
  }

  /// Light Color Scheme
  static const ColorScheme _lightColorScheme = ColorScheme(
    primary: secondaryColor,
    secondary: secondaryColor,
    surface: kcontentColor,
    error: Color.fromARGB(255, 242, 104, 77),
    onPrimary: kcontentColor,
    onSecondary: kcontentColor,
    onSurface: secondaryColor,
    onError: kcontentColor,
    brightness: Brightness.light,
  );

  /// Dark Color Scheme
  static const ColorScheme _darkColorScheme = ColorScheme(
    primary: kcontentColor,
    secondary: kcontentColor,
    surface: secondaryColor,
    error: Color.fromARGB(255, 242, 104, 77),
    onPrimary: secondaryColor,
    onSecondary: secondaryColor,
    onSurface: kcontentColor,
    onError: secondaryColor,
    brightness: Brightness.dark,
  );

  /// AppBar Theme for Light Mode
  static const AppBarTheme _lightAppBarTheme = AppBarTheme(
    centerTitle: true,
    elevation: 0,
    backgroundColor: kcontentColor,
    iconTheme: IconThemeData(color: secondaryColor),
  );

  /// AppBar Theme for Dark Mode
  static const AppBarTheme _darkAppBarTheme = AppBarTheme(
    centerTitle: true,
    elevation: 0,
    backgroundColor: secondaryColor,
    iconTheme: IconThemeData(color: secondaryColor),
  );

  /// Input Decoration Theme
  static InputDecorationTheme _inputDecorationTheme(Color borderColor, Color backgroundColor) {
    return InputDecorationTheme(
      fillColor: backgroundColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: borderColor),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      hintStyle: TextStyle(
        color: borderColor.withOpacity(0.7),
      ),
      labelStyle: TextStyle(
        color: borderColor,
      ),
    );
  }

  /// Elevated Button Theme for both Light and Dark modes
  static ElevatedButtonThemeData _lightElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: secondaryColor, // النص سيكون أبيض في الوضع الفاتح
        backgroundColor: kcontentColor, // لون الزر في الوضع الفاتح
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0, // الظل في الوضع الفاتح
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none, // إخفاء اللون تحت النص
        ),
      ),
    );
  }

  static ElevatedButtonThemeData _darkElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: kcontentColor, // النص سيكون أسود في الوضع الداكن
        backgroundColor: thirdColor, // لون الزر في الوضع الداكن
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0, // الظل في الوضع الداكن
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none, // إخفاء اللون تحت النص
        ),
      ),
    );
  }

  /// Floating Action Button Theme
  static FloatingActionButtonThemeData _floatingActionButtonTheme(
      Color backgroundColor, Color foregroundColor) {
    return FloatingActionButtonThemeData(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    );
  }

  /// Text Theme
  static TextTheme _getTextTheme() {
    const fontFamily = 'Roboto-Regular';

    return const TextTheme(
      displayLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        height: 1.5,
        textBaseline: TextBaseline.alphabetic,
      ),
      displayMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 28,
        fontWeight: FontWeight.bold,
        height: 1.5,
        textBaseline: TextBaseline.alphabetic,
      ),
      displaySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        height: 1.5,
        textBaseline: TextBaseline.alphabetic,
      ),
      bodyLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.normal,
        height: 1.5,
        textBaseline: TextBaseline.alphabetic,
      ),
      bodyMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        height: 1.5,
        textBaseline: TextBaseline.alphabetic,
      ),
      bodySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        height: 1.5,
        textBaseline: TextBaseline.alphabetic,
      ),
    );
  }
}
