import 'package:flutter/material.dart';
import 'package:shop_app/BottomNavBar.dart';
import 'package:shop_app/Splash.dart';
// import 'package:shop_app/BottomNavBar.dart';

// import 'package:shop_app/HomeScreen.dart';
// import 'package:shop_app/ProductsScreen.dart';
// import 'package:shop_app/ServicesScreen.dart';
// import 'package:shop_app/ProfileScreen.dart';
   
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: BottomNavBar(), // Set the initial screen here
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0; // Index for the currently selected tab

//   final List<Widget> _tabs = [
//     // Define your screens for each tab here
//     // For example: HomeScreen(), ShopScreen(), ProfileScreen()
//     const Center(child: Text('Home')),
//     const Center(child: Text('Products')),
//     const Center(child: Text('Services')),
//     const Center(child: Text('Profile')),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Your App Name'),
//       ),
//       body: _tabs[_currentIndex], // Display the selected tab's screen
//       bottomNavigationBar: BottomNavBar(
//         onTabTapped: _onTabTapped,
//       ),
//     );
//   }
//   void _onTabTapped(int index) {
//   setState(() {
//     _currentIndex = index;
//   });
// }
// }


