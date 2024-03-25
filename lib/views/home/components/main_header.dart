import 'package:admin_dashboard/res/constants.dart';
import 'package:admin_dashboard/views/home/components/profile_section.dart';
import 'package:admin_dashboard/views/home/components/search_bar_view.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  final Function(String) onSearch;
  const MainHeader({Key? key, required this.onSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SearchBarView(
            onSearch: onSearch,
          ),
          Spacer(),
          ProfileSection(),
        ],
      ),
    );
  }
}
