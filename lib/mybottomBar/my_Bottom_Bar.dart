import 'package:flutter/material.dart';
import 'package:testkart/Appcolors/Appcolor.dart';
import 'package:testkart/homepage/home_page.dart';
import 'package:testkart/loginscreen/ProfileScreen/ProfileS_creen.dart';


class MyBottomBar extends StatefulWidget {



  @override
  State<MyBottomBar> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Homepage(),

    Text(
      '1 page',
      style: optionStyle,
    ),
    Text(
      '2 page',
      style: optionStyle,
    ),
    Text(
      '3 page',
      style: optionStyle,
    ),
    ProfileScreen(),
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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.basegrey40Color,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:AppColors.baseDarkPinkColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
