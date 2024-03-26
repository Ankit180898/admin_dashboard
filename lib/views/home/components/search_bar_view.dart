import 'package:admin_dashboard/res/constants.dart';
import 'package:flutter/material.dart';

class SearchBarView extends StatelessWidget {
  final Function(String) onSearch;

  const SearchBarView({Key? key, required this.onSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 32.0), // Adjust horizontal padding
        child: TextField(
          onChanged: onSearch, // Trigger search on text change
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 16), // Adjust horizontal padding
              child: Icon(
                Icons.search,
                color: textColor,
                size: 24, // Adjust icon size
              ),
            ),

            hintText: 'Search...',
            hintStyle: const TextStyle(
                color: textColor, fontSize: 16), // Adjust font size
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 12, vertical: 12), // Adjust content padding
          ),
          cursorColor: textColor,
          style: normalText(16),
          cursorHeight: 20, // Adjust cursor height
        ),
      ),
    );
  }
}
