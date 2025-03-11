import 'package:flutter/material.dart';
import 'package:w5_observer_pattern_state_management/EXERCISE-2/screens/color_tap_screen.dart';
import 'package:w5_observer_pattern_state_management/EXERCISE-2/screens/statistic_screen.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Home rebuilt");  // rebuilt again when swicthing tab
    return Scaffold(
      body:_currentIndex == 0 ? ColorTapsScreen() : StatisticsScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.tap_and_play),
            label: 'Taps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Statistics',
          ),
        ],
      ),
    );
  }
}