import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sesion8/screens/amigospage.dart';
import 'package:flutter_application_1/pages/sesion8/screens/bandejapage.dart';
import 'package:flutter_application_1/pages/sesion8/screens/homepage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetsOptions = [

    Text('HOME'),
    AmigosPage(),
    HomePage(),
    BandejaPage(),
    Text('PAG 5'),
  ];

  void _onitemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetsOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Color.fromARGB(255, 197, 197, 197),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_outlined,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onitemTapped,
        ),
      ),
    );
  }
}
