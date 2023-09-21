// import 'package:flutter/material.dart';
// import 'package:resto/screens/screenBooking.dart';
// import 'package:resto/screens/screenhome.dart';
// import 'package:resto/screens/screenprofile.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _selectedIndex = 0;
//   void navigateBottomBar(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   final List<Widget> _pages = [
//     HomeScreen(),
//     BookingListScreen(),
//     ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: navigateBottomBar,
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Booking'),
//             BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
//           ]),
//     );
//   }
// }
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:resto/screens/screenBooking.dart';
import 'package:resto/screens/screenhome.dart';
import 'package:resto/screens/screenprofile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    BookingListScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
          currentIndex: _selectedIndex,
          onTap: navigateBottomBar,
          backgroundColor: Color.fromARGB(255, 128, 98, 248),
          dotIndicatorColor: Colors.white,
          items: [
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Colors.white,
            ),
            DotNavigationBarItem(
                icon: Icon(Icons.list),
                selectedColor: Colors.white,
                unselectedColor: Color.fromARGB(255, 0, 0, 0))
          ]),
    );
  }
}
