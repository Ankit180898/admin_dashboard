import 'package:admin_dashboard/res/constants.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Text widget for user's name
        Text(
          "Ankit Kumar",
          style: normalText(16),
        ),
        SizedBox(
          width: 20,
        ),

        /// Circular profile thumbnail
        CircleAvatar(
          backgroundImage: AssetImage("assets/mine.jpg"),
          radius: 20,
        ),

        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
