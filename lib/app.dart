import 'package:flutter/material.dart';
import 'package:resume/core/themes/app_theme.dart';

import 'features/home/ui/home_screen.dart';

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Resume App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
