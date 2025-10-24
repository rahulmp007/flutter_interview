import 'package:flutter/material.dart';
import 'package:flutter_interview/src/presentation/screens/home/widgets/place_item.dart';

class PlaceList extends StatelessWidget {
  const PlaceList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: places.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 9),
            child: PlaceItem(placeName: places[index]),
          );
        },
      ),
    );
  }
}

List<String> places = [
  "Abuja",
  "NewYork",
  "Sydney",
  "Toronto",
  "London",
  "Japan",
  "Thailand",
  "India",
];
