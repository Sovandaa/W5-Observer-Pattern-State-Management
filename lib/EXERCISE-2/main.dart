
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w5_observer_pattern_state_management/EXERCISE-2/provider/color_counter.dart';
import 'package:w5_observer_pattern_state_management/EXERCISE-2/screens/home.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorCounter(),
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Home()
        ),
      ),
    ),
  );
}