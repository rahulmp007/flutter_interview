import 'package:flutter/material.dart';

class PlaceItem extends StatelessWidget {
  final String placeName;
  const PlaceItem({super.key, required this.placeName});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 58, width: 58, child: CircleAvatar()),
        Text(placeName),
      ],
    );
  }
}
