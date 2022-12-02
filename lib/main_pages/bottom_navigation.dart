import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/home_page.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/contact/contact_page.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/account/account_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  late int _selectedIndex = 0;
      
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const ContactPage(),
    const AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.red.shade900,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
            ),
            label: "Beranda",
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_contact_calendar,
              size: 35,
            ),
            label: "Kontak",
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 35,
            ),
            label: "Akun",
          ),
        ],
      ),
    );
  }
}
