// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_interview/src/presentation/screens/home/widgets/destination_list.dart';
import 'package:flutter_interview/src/presentation/screens/home/widgets/place_list.dart';

class NavigationItem {
  final String name;
  final String iconpath;
  NavigationItem({required this.name, required this.iconpath});
}

List<NavigationItem> items = [
  NavigationItem(name: 'Home', iconpath: 'assets/icons/home.png'),
  NavigationItem(name: 'Chat', iconpath: 'assets/icons/message.png'),
  NavigationItem(name: 'Schedule', iconpath: 'assets/icons/calendar.png'),
  NavigationItem(name: 'Saved', iconpath: 'assets/icons/favourite.png'),
  NavigationItem(name: 'Profile', iconpath: 'assets/icons/person.png'),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...items.map(
              (e) => Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset(e.iconpath, fit: BoxFit.contain),
                    ),
                    Text(
                      e.name,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xff15111180).withValues(alpha: 0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16),
                HomeHeader(),
                SizedBox(height: 11),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore Amazing',
                        style: GoogleFonts.lato(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Destinations !',
                        style: GoogleFonts.lato(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffE29132),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 39,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hint: Text(
                              'Search',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 19),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(30),
                      ),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            scale: 3.5,

                            image: AssetImage('assets/icons/filter.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 22,
                  child: Text(
                    "Where would you like to visit?",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                PlaceList(),
                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Destinations',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See all",
                      style: GoogleFonts.lato(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff005BBF),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                DestinationList(),
                SizedBox(height: 26),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose Category',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See all",
                      style: GoogleFonts.lato(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff005BBF),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 26),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: Color(0xff005BBF)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 40,
                                child: Image.asset('assets/icons/beach.png'),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Beach',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 11),
                    Expanded(
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: Color(0xff005BBF)),
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              LayoutBuilder(
                                builder: (context, constraints) {
                                  return Container(
                                    padding: EdgeInsets.only(
                                      bottom: constraints.maxHeight / 3,
                                    ),
                                    height: 50,
                                    child: Image.asset(
                                      'assets/icons/mountain.png',
                                    ),
                                  );
                                },
                              ),
                              SizedBox(width: 4),

                              Text(
                                'Mountain',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage('assets/images/user.jpg')),
            SizedBox(width: 8.25),
            Text(
              'Hi, SheftyDesign',
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        Row(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(30),
              ),
              elevation: 1,
              child: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,

                  image: DecorationImage(
                    scale: 3,
                    image: AssetImage('assets/icons/setting.png'),
                  ),
                ),
              ),
            ),
            SizedBox(width: 4),
            Stack(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(30),
                  ),
                  elevation: 1,
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [],
                      image: DecorationImage(
                        scale: 2.6,
                        image: AssetImage('assets/icons/noti.png'),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff005BBF),
                    ),
                    height: 16,
                    width: 16,
                    child: Center(
                      child: Text(
                        '4',
                        style: GoogleFonts.lato(
                          fontSize: 6.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
