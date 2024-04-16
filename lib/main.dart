import "package:flutter/material.dart";
import "package:maybe_marquee/screen/home_screen.dart";

/* 
  • References: 
    - https://gist.github.com/rohan20/ab7b2d9650dc68f228f1b548dd383a37
    - https://stackoverflow.com/questions/51114778/how-to-check-if-flutter-text-widget-was-overfloweds
*/

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Maybe Marquee",
      theme: themeData(brightness: Brightness.light),
      darkTheme: themeData(brightness: Brightness.dark),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData themeData({required Brightness brightness}) {
    final ThemeData themeData = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorSchemeSeed: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      applyElevationOverlayColor: true,
    );
    return themeData;
  }
}
