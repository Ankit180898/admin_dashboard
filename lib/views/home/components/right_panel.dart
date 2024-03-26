import 'package:admin_dashboard/views/home/components/main_nav_item.dart';
import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  /// declaration of variables
  final int selected;
  final Function mainNavAction;
  const RightPanel(
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
      
      ],
    );
  }
}
