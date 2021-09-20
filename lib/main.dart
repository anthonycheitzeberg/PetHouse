// @dart=2.9
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:pet_house/principal.dart';
import 'package:pet_house/themes.dart';
import 'package:pet_house/utils/user_preferences.dart';

Future main() async {
  // LicenseRegistry.addLicense(() async* {
  //   final license = await rootBundle.loadString('google_fonts/OFL.txt');
  //   yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Pet House';

  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeProvider.of(context),
          title: title,
          home: Principal(),
        ),
      ),
    );
  }
}
