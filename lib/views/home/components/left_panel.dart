import 'package:admin_dashboard/views/home/components/main_nav_item.dart';
import 'package:flutter/material.dart';

class LeftPane extends StatelessWidget {
  /// declaration of variables
  final int selected;
  final Function mainNavAction;
  const LeftPane(
      {Key? key, required this.selected, required this.mainNavAction})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        /// the logo
        SizedBox(
          height: 100,
          width: 200,
          child: Center(
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.scaleDown,
              height: 100,
              width: 100,
            ),
          ),
        ),
        const Divider(
          thickness: 0.5,
          color: Colors.white12,
        ),

//. The Upper or Main Navigation Menu
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            MainNavItem(
              "New Releases",
              Icons.rocket_launch_rounded,
              selected == 0, // Check if this item is selected
              () => mainNavAction(
                  0), // Pass the index to the callback function
            ),
            MainNavItem(
              "Most Popular",
              Icons.emoji_events_rounded,
              selected == 1, // Check if this item is selected
              () => mainNavAction(
                  1), // Pass the index to the callback function
            ),
            MainNavItem(
              "Recommended",
              Icons.verified_rounded,
              selected == 2, // Check if this item is selected
              () => mainNavAction(
                  2), // Pass the index to the callback function
            ),
            MainNavItem(
              "Top Chart",
              Icons.diamond_rounded,
              selected == 3, // Check if this item is selected
              () => mainNavAction(
                  3), // Pass the index to the callback function
            ),
          ],
        )),
      
     
      ],
    );
  }
}
