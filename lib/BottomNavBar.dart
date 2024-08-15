// import 'package:flutter/material.dart';

// class BottomNavBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onTap;

//   BottomNavBar({required this.currentIndex, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//   currentIndex: currentIndex,
//   onTap: onTap,
//   selectedItemColor: Colors.blue, // Change the color of the selected icon
//   unselectedItemColor: Colors.grey, // Change the color of unselected icons
//   items: [
//     BottomNavigationBarItem(
//       icon: Icon(Icons.home),
//       label: 'Home',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.shopping_cart),
//       label: 'Products',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.local_offer),
//       label: 'Services',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.person),
//       label: 'Profile',
//     ),
//   ],
// );
//   }
// }





















import 'package:flutter/material.dart';
import 'package:shop_app/HomeScreen.dart';
import 'package:shop_app/ProductsScreen.dart';
import 'package:shop_app/ProfileScreen.dart';
import 'package:shop_app/ServicesScreen.dart';

class BottomNavBar extends StatefulWidget {
  // final ValueChanged<int> onTabTapped;

  BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  List _screens=[
    HomeScreen(),
    ProductsScreen(),
    ServicesScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            // widget.onTabTapped(index); // Notify the parent about the tab change
          });
        },
        selectedItemColor: Colors.blue, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
      ),
    );
  }
}

