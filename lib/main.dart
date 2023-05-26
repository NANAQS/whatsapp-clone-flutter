import 'package:flutter/material.dart';
import 'package:zapzap/src/components/headerCustom.dart';
import 'package:zapzap/src/view/contacts_screen.dart';
import 'package:zapzap/src/view/settings_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HeaderDefaultWidget(),
        "/contacts": (context) => const ContactsScreen(),
        "/settings": (context) => const SettingsScreen(),
      },
    );
  }
}
