import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxedu/helpers/routing/application.dart';
import 'package:luxedu/helpers/routing/routes.dart';
import 'package:luxedu/styles/colors.dart';

void main() {
  final router = FluroRouter();
  Routes.configureRoutes(router);
  Application.router = router;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: Application.router.generator,
      title: 'LuxEdu',
      theme: ThemeData(
        textTheme: GoogleFonts.vollkornTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: ColorPalette.whiteBackground,
        useMaterial3: true,
      ),
    );
  }
}
