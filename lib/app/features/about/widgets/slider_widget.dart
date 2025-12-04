import 'package:flutter/material.dart';

import '../../../config/asset_colors.dart';

class SliderWidget extends StatelessWidget {
  final double value;
  final String label;
  final String title;

  const SliderWidget({
    super.key,
    required this.value,
    required this.label,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        Slider(
          padding: EdgeInsets.zero,
          activeColor: AssetColors.orangeColor,
          value: value,
          min: 0,
          max: 1,
          divisions: 10,
          label: label,
          thumbColor: Colors.orangeAccent,
          onChanged: (double a) {},
        ),
      ],
    );
  }
}
