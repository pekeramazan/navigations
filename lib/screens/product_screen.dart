import 'package:flutter/material.dart';


class ProductScreen extends StatelessWidget {
    static const String routeName="/product";//kısaca productı aç diyeceğiz

  @override
  Widget build(BuildContext context) {
  
  return Scaffold(
    appBar:AppBar(
      title:Text("Product List")
    ),
    body:Container(
      child: Center(
      child:Text("Products"),
      ),
    ),
  );
  }
}
