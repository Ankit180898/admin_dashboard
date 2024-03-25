import 'package:admin_dashboard/res/constants.dart';
import 'package:admin_dashboard/res/size_helpers.dart';
import 'package:admin_dashboard/views/home/components/main_header.dart';
import 'package:flutter/material.dart';

import 'components/left_panel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
          Container(
            decoration: BoxDecoration(
              color: bgColor,
            ),
            width: 300,
            child: LeftPane(
              mainNavAction: menuAction,
              selected: _currentPage,
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Container(
                height: displayHeight(context) * 0.12,
                child: MainHeader(
                  onSearch: (p0) => null,
                ),
              ),
            ],
          )),
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
