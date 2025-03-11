import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w5_observer_pattern_state_management/EXERCISE-2/provider/color_counter.dart';

enum CardType { red, blue }

class ColorTapsScreen extends StatelessWidget {
  const ColorTapsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      // ignore: avoid_print
      print("ColorTapScreen rebuilt");  // rebuilt when state change (count update)
    return Consumer<ColorCounter>(builder: (context, counterProvider, child) {
      return Scaffold(
        appBar: AppBar(title: Text('Color Taps')),
        body: Column(
          children: [
            ColorTap(
              type: CardType.red,
              tapCount: counterProvider.redCount,
              onTap: counterProvider.incrementRed,
            ),
            ColorTap(
              type: CardType.blue,
              tapCount: counterProvider.blueCount,
              onTap: counterProvider.incrementBlue,
            ),
          ],
        ),
      );
    });
  }
}

// ColorTap Widget screen
class ColorTap extends StatelessWidget {
  final CardType type;
  final int tapCount;
  final VoidCallback onTap;

  const ColorTap({
    super.key,
    required this.type,
    required this.tapCount,
    required this.onTap,
  });

  Color get backgroundColor => type == CardType.red ? Colors.red : Colors.blue;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("ColorTap Widget rebuilt"); // rebuilt when tap count chage both red,blue
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: 100,
        child: Center(
          child: Text(
            'Taps: $tapCount',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
