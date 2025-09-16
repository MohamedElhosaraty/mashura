import 'package:flutter/material.dart';
import 'package:mashura/feature/lawyer/home/presentation/page/home_screen.dart';
import 'package:mashura/feature/lawyer/my_bookings/presentation/page/my_bookings_screen.dart';
import 'package:mashura/feature/lawyer/profile/presentation/page/profile_screen.dart';
import '../../../../../core/widgets/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    MyBookingsScreen(),
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: MyBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onTabTapped,
        ),
      );
  }
}
