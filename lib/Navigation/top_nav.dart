import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 600) {
      
      return Scaffold(
        appBar: AppBar(
          title: const Text('VS-Pixels'),
          actions: <Widget>[
            TextButton(
              child: const Text('Pricing'),
              onPressed: () {
                // Implement your code here
              },
            ),
            TextButton(
              child: const Text('Models'),
              onPressed: () {
                // Implement your code here
              },
            ),
            TextButton(
              child: const Text('Profile'),
              onPressed: () {
                // Implement your code here
              },
            ),
          ],
        ),
      );
    } else {
      // UI for smaller screens
      return const Placeholder();
    }
    
  }
}