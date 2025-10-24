import 'package:flutter/material.dart';

class Places extends StatelessWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.purple,
              child: Stack(
                children: [Container(height: 150, color: Colors.pink)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
