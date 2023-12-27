import 'package:flutter/material.dart';
import 'package:frontend_ndfy/Navigation/bottom_nav.dart';

class Topics extends StatelessWidget {
  const Topics({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 600) {
      // UI for larger screens
      return Scaffold(
        appBar: AppBar(
          title: const Text('Topics for Larger Screens'),
        ),
        body: const Center(
          child: Text('This is a larger screen'),
        ),
        bottomNavigationBar: const BottomNavBar(),
      );
    } else {
      // UI for smaller screens
      return const Scaffold(
        bottomNavigationBar: BottomNavBar(),
      );
    }
  }

}