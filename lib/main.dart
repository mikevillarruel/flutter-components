import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('Route: ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context)=>const AlertPage());
      },
    );
  }
}