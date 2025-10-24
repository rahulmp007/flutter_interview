// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final bool? isOutlineButton;
  final String buttonText;
  const AppButton({super.key, this.isOutlineButton, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 47, right: 59),
      decoration: BoxDecoration(
        color: isOutlineButton == false ? Color(0xff005BBF) : null,
        borderRadius: BorderRadius.circular(30),
        border: isOutlineButton == true
            ? Border.all(color: Color(0xff005BBF))
            : null,
      ),
      height: 46,
      child: Center(
        child: Text(
          buttonText,
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: isOutlineButton == true ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
