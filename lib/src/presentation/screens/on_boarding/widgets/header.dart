import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.green,
      height: 412,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 42, right: 38),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Container(
                  // color: Colors.purple,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/ob1.jpg'),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        height: 202,
                        width: 134,
                      ),
                      SizedBox(width: 19),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/ob2.jpg'),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        width: 170,
                        height: 194,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: constraints.maxWidth / 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 260,
                        height: 159,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/ob3.jpg'),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        // color: Colors.purple,
                        child: Image.asset('assets/images/ptext1.png'),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
