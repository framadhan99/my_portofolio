import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portofolio/app/config/asset_colors.dart';

import '../../providers/theme_provider.dart' show themeProvider;

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.watch(themeProvider.notifier);
    final isDarkMode = themeNotifier.isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fajar Portofolio'),
        centerTitle: false,
        // foregroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.foregroundColor ?? Colors.white,
            ),
            child: const Text('Home'),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.foregroundColor ?? Colors.white,
            ),
            child: const Text('About Me'),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.foregroundColor ?? Colors.white,
            ),
            child: const Text('Projects'),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.foregroundColor ?? Colors.white,
            ),
            child: const Text('Contact'),
          ),

          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AssetColors.orangeColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text('Download CV'),
          ),
          SizedBox(width: 32),
          TextButton.icon(
            onPressed: () {
              themeNotifier.toggleTheme();
            },
            label: isDarkMode ? Text('Light') : Text('Dark'),
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.foregroundColor ?? Colors.white,
            ),
            icon: isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
          ),
        ],
      ),
    );
  }
}
