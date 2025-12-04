import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../config/theme_app.dart';

// StateNotifier is a best method for manage complex state
class ThemeNotifier extends StateNotifier<ThemeData> {
  // initialize the inital theme with lightTheme
  ThemeNotifier() : super(AppTheme.lightTheme);

  // Getter for checking is theme current is dark mode
  bool get isDarkMode => state.brightness == Brightness.dark;

  // function for switch theme
  void toggleTheme() {
    state = isDarkMode ? AppTheme.lightTheme : AppTheme.darkTheme;
  }
}

// StateNotifierProvider exposed for accessible by widget
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier();
});
