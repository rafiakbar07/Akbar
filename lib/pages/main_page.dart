import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/color_config.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List _pages = [
    const HomePage(),
      const SearchPage(),
      const ProfilePage() 
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConfig.primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
              ),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
              ),
            label: 'Search',
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
              ),
            label: 'Profile',
            ),
        ],
        ),
    );
  }
}