import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart'; // Import your pages

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  // List of pages corresponding to each tab
  final List<Widget> _pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const ProfilePage(),
    // Add other pages here
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensure the icons stay centered
        backgroundColor: Colors.white, // Set background color to white
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '', // Remove the label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '', // Remove the label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '', // Remove the label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '', // Remove the label
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Highlight selected icon in blue
        unselectedItemColor: Colors.grey, // Set color for unselected icons
        onTap: _onItemTapped,
        showSelectedLabels: false, // Hide labels
        showUnselectedLabels: false, // Hide labels
      ),
    );
  }
}
