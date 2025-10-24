import 'package:flutter/material.dart';
import 'package:flutter_interview/src/presentation/screens/on_boarding/widgets/header.dart';
import 'package:flutter_interview/src/presentation/widgets/app_button.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.only(right: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Skip",
                    style: GoogleFonts.josefinSans(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 21),
            Header(),
            SizedBox(height: 4),
            Container(child: Image.asset('assets/images/ptext2.png')),
            Container(
              margin: EdgeInsets.only(left: 30),
              height: 50,
              child: Text(
                'We believe traveling around the world shouldn’t be hard.',
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 30),

              child: Row(
                children: [
                  ...List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        width: 19,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: index == 0
                              ? Color(0xff005BBF)
                              : Color(0xff005bbf99).withValues(alpha: 0.7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            AppButton(isOutlineButton: false, buttonText: 'Sign In'),
            SizedBox(height: 14),
            AppButton(isOutlineButton: true, buttonText: 'Create Account'),
          ],
        ),
      ),
    );
  }
}
