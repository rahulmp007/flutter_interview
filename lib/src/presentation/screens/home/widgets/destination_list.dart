import 'package:flutter/material.dart';
import 'package:flutter_interview/src/presentation/screens/home/widgets/destination_widget.dart';

class DestinationList extends StatelessWidget {
  const DestinationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: DestinationWidget(),
        ),
      ),
    );
  }
}
