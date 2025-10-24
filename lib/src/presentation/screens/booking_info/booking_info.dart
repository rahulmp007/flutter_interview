import 'package:flutter/material.dart';

class BookingInfo extends StatelessWidget {
  const BookingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/details'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
