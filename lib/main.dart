import 'package:flutter/material.dart';
import 'package:personal_finance/common/color_extension.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal App',
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Inter",
          colorScheme: ColorScheme.fromSeed(
              seedColor: TColor.primary,
              background: TColor.gray80,
              primary: TColor.primary,
              primaryContainer: TColor.gray60,
              secondary: TColor.secondary)),
    );
  }
}
