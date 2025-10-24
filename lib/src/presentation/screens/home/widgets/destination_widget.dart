import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(30),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/d1.jpg'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 19, right: 13),
                height: 25,
                width: 25,
                child: Image.asset('assets/icons/arrow.png'),
              ),
            ),

            Positioned(
              bottom: 10,
              right: 10,
              left: 10,
              child: Container(
                height: 56,
                padding: EdgeInsets.only(left: 13, top: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Nautilus Maldives",
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Icon(Icons.location_pin, color: Colors.white, size: 10),
                        Text(
                          "The Nautilus Maldives, Baa Atoll",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.lato(
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      width: 98,
                      height: 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ...List.generate(
                            4,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: Icon(
                                Icons.star,
                                size: 10,
                                color: Color(0xffFCD240),
                              ),
                            ),
                          ),
                          Text(
                            '4.6',
                            style: GoogleFonts.lato(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
