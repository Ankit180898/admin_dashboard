import 'package:admin_dashboard/res/constants.dart';
import 'package:admin_dashboard/res/size_helpers.dart';
import 'package:admin_dashboard/views/home/components/main_header.dart';
import 'package:admin_dashboard/views/home/components/main_section.dart';
import 'package:admin_dashboard/views/home/components/right_panel.dart';
import 'package:flutter/material.dart';

import 'components/left_panel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(24),
              ),
              child: LeftPane(
                mainNavAction: menuAction,
                selected: _currentPage,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: displayHeight(context) * 0.12,
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: MainHeader(
                      onSearch: (p0) => null,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: MainSection(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(24),
              ),
              child: RightPanel(
                mainNavAction: menuAction,
                selected: _currentPage,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void menuAction(int page) {
    setState(() {
      _currentPage = page;
    });
  }
}
