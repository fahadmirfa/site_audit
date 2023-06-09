
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:site_audit/theme.dart';
import 'Screens/startscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Lock the orientation to portrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Site Audit Application',
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      home: StartScreen(),
    );
  }

}
