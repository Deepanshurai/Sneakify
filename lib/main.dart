import 'package:flutter/material.dart';
import 'package:sneakify/src/screens/ClassifyShoes.dart';
import './src/screens/SignInPage.dart';
import './src/screens/SignUpPage.dart';
import './src/screens/HomePage.dart';
import './src/screens/Dashboard.dart';
import './src/screens/ProductPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sneakify',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(pageTitle: 'Welcome'),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignUpPage(),
        '/signin': (BuildContext context) => SignInPage(),
        '/dashboard': (BuildContext context) => Dashboard(),
        '/productPage': (BuildContext context) => ProductPage(),
        //'/classifypage': (BuildContext context) => ClassifyShoes(),
        //upar wala route tabh un-comment karna hai jabh pura widget ban jaye warna error dega
      },
    );
  }
}
