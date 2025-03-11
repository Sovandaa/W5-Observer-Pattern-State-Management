import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w5_observer_pattern_state_management/EXERCISE-2/provider/color_counter.dart';


class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Statistic rebuilt"); // reuilt when tap switching
    return Consumer<ColorCounter>(
      builder: (context, counterProvider, child) => Scaffold(
        appBar: AppBar(title: Text('Statistics')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Red Taps: ${counterProvider.redCount}',
                  style: TextStyle(fontSize: 24)),
              Text('Blue Taps: ${counterProvider.blueCount}',
                  style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
