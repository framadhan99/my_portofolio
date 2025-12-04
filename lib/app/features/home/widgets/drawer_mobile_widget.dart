import 'package:flutter/material.dart';

class DrawerMobileWidget extends StatelessWidget {
  const DrawerMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Fajar Ramadhan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          // SizedBox(height: 8),
          Divider(
            endIndent: 150,
            // color: AssetColors.orangeColor,
            thickness: 0.5,
          ),
          SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.foregroundColor ?? Colors.white,
            ),
            child: const Text('Home'),
          ),
          SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.foregroundColor ?? Colors.white,
            ),
            child: const Text('About Me'),
          ),
          SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.foregroundColor ?? Colors.white,
            ),
            child: const Text('Projects'),
          ),
          SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.foregroundColor ?? Colors.white,
            ),
            child: const Text('Contact'),
          ),
        ],
      ),
    );
  }
}
