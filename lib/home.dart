import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xff51A8FF),
              width: double.infinity,
              height: 350,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hi Edi',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xffFFFFFF)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: SvgPicture.asset(
                          'assets/vectors/notification.svg',
                          fit: BoxFit.none,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Let's find\nyour top doctor!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Search here.....',
                        prefixIcon:
                            Icon(Icons.search, color: Colors.black, size: 25),
                        hintStyle: TextStyle(fontWeight: FontWeight.w300),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50)),
                        child: SvgPicture.asset(
                          'assets/vectors/heart.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50)),
                        child: SvgPicture.asset(
                          'assets/vectors/pills.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: const Color(0xff51A8FF).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(50)),
                        child: SvgPicture.asset(
                          'assets/vectors/Dentist.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: SvgPicture.asset(
                          'assets/vectors/fetus.svg',
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // height: 100,
                        // width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/images/Doctor2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Column(children: [
                        Text(
                          'Dr. Jenny Wilson',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          'Dental Surgeon',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text("4.8")
                          ],
                        )
                      ])
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // height: 100,
                        // width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/images/Doctor1.png',
                        ),
                      ),
                      const Column(children: [
                        Text(
                          'Dr. Kristin Watson',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          'Dental Surgeon',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text("4.8")
                          ],
                        )
                      ])
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
