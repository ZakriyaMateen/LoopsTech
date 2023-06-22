import 'package:flutter/material.dart';
import 'package:loopstech/Constants/Color.dart';
import 'package:loopstech/Views/Screens/CategoryScreen.dart';
import 'package:loopstech/Views/Screens/ProductScreen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex=0;
  List<Widget> _screens=[
    CategoryScreen(),
    ProductScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      backgroundColor: AppColors().backgroundColor,

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors().backgroundColor,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,showSelectedLabels: false,
          selectedItemColor: AppColors().iconColor,
          unselectedItemColor: AppColors().cardColor,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.category,),label: ''),
          ],
          onTap: (val){
            onItemTap(val);
          },
        ),
    );
  }
  void onItemTap(val){
    setState(() {
      _currentIndex=val;
    });
  }
}
