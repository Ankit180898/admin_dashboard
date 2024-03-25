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
            filled: true,
            focusColor: null,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16), // Adjust horizontal padding
              child: const Icon(
                Icons.search,
                color: Colors.black,
                size: 24, // Adjust icon size
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20), // Adjust border radius
            ),
            hintText: 'Search...',
            hintStyle: const TextStyle(
                color: Colors.black, fontSize: 16), // Adjust font size
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 12, vertical: 12), // Adjust content padding
          ),
          cursorColor: Colors.black,
          style: normalText(16),
          cursorHeight: 20, // Adjust cursor height
        ),
      ),
    );
  }
}
