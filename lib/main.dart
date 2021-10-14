import 'package:flutter/material.dart';

import 'package:flutter_components/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}