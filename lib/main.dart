import 'package:day1/home_page.dart';
import 'package:flutter/material.dart';

void main()=> runApp(const DayOne());

class DayOne extends StatelessWidget {
  const DayOne({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Homepage(),
      ),
    );
  }
}
