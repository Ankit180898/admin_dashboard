import 'package:admin_dashboard/res/constants.dart';
import 'package:flutter/material.dart';

class MainNavItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback action;
  final IconData? icon;

  const MainNavItem(this.title, this.icon, this.isSelected, this.action,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: RawMaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        fillColor: isSelected ? Colors.white.withOpacity(0.15) : null,
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        onPressed: action,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (icon != null) // Check if icon is not null
              Icon(icon!, color: Colors.white, size: 20),
            const SizedBox(width: 10),
            Text(
              title,
              style: titleText(16),
            ),
          ],
        ),
      ),
    );
  }
}
