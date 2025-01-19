import '../imports/imports.dart';

class MyApp extends StatefulWidget {
  final SharedPreferences prefs;

  const MyApp({super.key, required this.prefs});

  @override
  MyAppState createState() => MyAppState();

  static void setLocale(BuildContext context, Locale locale) {
    final state = context.findAncestorStateOfType<MyAppState>();
    state?.setLocale(locale);
  }
}

class MyAppState extends State<MyApp> {
  late Locale _locale;

  @override
  void initState() {
    super.initState();
    // احصل على اللغة المحفوظة أو اضبط اللغة الافتراضية
    _locale = _getSavedLocale();
  }

  /// إرجاع اللغة المحفوظة أو اللغة الافتراضية
  Locale _getSavedLocale() {
    final languageCode = widget.prefs.getString('language_code') ?? 'en';
    final countryCode = widget.prefs.getString('country_code') ?? 'US';
    return Locale(languageCode, countryCode);
  }

  /// تعيين اللغة الجديدة وحفظها في SharedPreferences
  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
    widget.prefs.setString('language_code', locale.languageCode);
    widget.prefs.setString('country_code', locale.countryCode ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => SearchProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider(widget.prefs)),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: _locale, // اللغة الحالية
        supportedLocales: const [
          Locale('en', 'US'), // الإنجليزية
          Locale('ar', 'AE'), // العربية
          Locale('fr', 'FR'), // الفرنسية
          Locale('es', 'ES'), // الإسبانية
          Locale('de', 'DE'), // الألمانية
        ],
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        initialRoute: '/BottomNavBar',
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
