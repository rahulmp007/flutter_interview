import 'package:flutter/material.dart';
import 'package:flutter_interview/src/presentation/screens/on_boarding/on_boarding.dart';

class TravelHub extends StatelessWidget {
  const TravelHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnBoarding(),
    );
  }
}
