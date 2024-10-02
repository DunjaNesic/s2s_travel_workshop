import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:s2s_travel_workshop/utils/global_colors.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    late int _selectedIndex;

    _BottomNavBarState() : _selectedIndex = 0;

    @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
    });

    switch (_selectedIndex) {
      case 0:
      context.go('/home');
        break;
      case 1:
      context.go('/home');
        break;
      case 2:
        context.go('/home');
        break;
      case 3:
        context.go('/');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: _selectedIndex,
      height: 55.0,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: _selectedIndex == 0 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.travel_explore,
          size: 30,
          color: _selectedIndex == 1 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.forest,
          size: 30,
          color: _selectedIndex == 2 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.logout,
          size: 30,
          color: _selectedIndex == 3 ? Colors.white : Colors.black,
        ),
      ],
      color: GlobalColors.darkGreen,
      buttonBackgroundColor: GlobalColors.darkGreen,
      backgroundColor: Colors.transparent,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 600),
      onTap: (index) {
        _onItemTapped(index);
      },
    );
  }
}