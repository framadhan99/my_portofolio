import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/theme_provider.dart';

class HeaderMobileWidget extends ConsumerWidget implements PreferredSizeWidget {
  const HeaderMobileWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.watch(themeProvider.notifier);
    final isDarkMode = themeNotifier.isDarkMode;
    return AppBar(
      title: Text('Fajar Ramadhan'),
      // leading: Icon(Icons.menu),
      actions: [
        IconButton(
          icon: isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
          onPressed: () {
            themeNotifier.toggleTheme();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
