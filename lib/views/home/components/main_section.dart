import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import 'right_panel.dart'; // Assuming RightPanel is another widget

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // Wrap the first Container with Expanded
          child: Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Expanded(
          // Wrap the second Container with Expanded
          child: Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ],
    );
  }
}
