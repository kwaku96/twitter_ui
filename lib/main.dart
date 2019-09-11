import 'package:flutter/material.dart';

import 'pages/auth_pages/welcome_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.blueAccent),
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black.withAlpha(180),
              fontSize: 22.0,
            )
          )
        ),
        tabBarTheme: TabBarTheme(
          unselectedLabelColor: Colors.black.withAlpha(150),
          labelColor: Colors.blue,

        )
      ),
      home: WelcomePage(),
    );
  }
}
