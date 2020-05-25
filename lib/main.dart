import 'package:flutter/material.dart';
import 'package:navigation/screens/customer_screen.dart';
import 'package:navigation/screens/home.dart';
import 'package:navigation/screens/product_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: <String,WidgetBuilder>{
        CustomerScreen.routeName:(BuildContext context)=> new CustomerScreen(),
        ProductScreen.routeName:(BuildContext context)=> new ProductScreen(),

      },
    );
  }
}
