import 'package:expense_tracker/pages/create_expense.dart';
import 'package:expense_tracker/pages/setting_page.dart';
import 'package:expense_tracker/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: {
        "/splash": (context) => const Splash(),
        "/home": (context) => const HomePage(),
        "/create": (context)=> const CreateExpensePage(),
        SettingPage.routeName: (context)=> const SettingPage(),
      },
    );
  }
}
