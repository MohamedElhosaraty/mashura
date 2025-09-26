import 'package:flutter/material.dart';
import '../../../../../core/widgets/bottom_nav_bar.dart';
import '../../../home/presentation/page/home_screen.dart';
import '../../../my_bookings/presentation/page/my_bookings_screen.dart';
import '../../../profile/presentation/page/profile_screen.dart';

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
