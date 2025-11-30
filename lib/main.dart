import 'package:flutter/material.dart';
import 'package:thimar_app/views/about.dart';

void main() {
  runApp(const ThimarApp());
}

class ThimarApp extends StatefulWidget {
  const ThimarApp({super.key});

  @override
  State<ThimarApp> createState() => _ThimarAppState();
}

class _ThimarAppState extends State<ThimarApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      builder: (context, child) =>
          Directionality(textDirection: TextDirection.rtl, child: child!),
      home: const Aboutview(),
    );
  }
}
