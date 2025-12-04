import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/asset_colors.dart';
import '../../../providers/theme_provider.dart';

class HeaderWidget extends ConsumerWidget implements PreferredSizeWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.watch(themeProvider.notifier);
    final isDarkMode = themeNotifier.isDarkMode;
    return AppBar(
      title: const Text('FAJAR RAMADHAN'),
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      centerTitle: false,
      actionsPadding: EdgeInsets.only(right: 32),
      titleSpacing: 32,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}
