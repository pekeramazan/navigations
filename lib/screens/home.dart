import 'package:flutter/material.dart';
import 'package:navigation/screens/customer_screen.dart';
import 'package:navigation/screens/product_screen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeState();
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Demo"),
      ),
      body: Container(
        child: Center(
          child: Text("Anasayfa"),
        ),
      ),
      drawer: buildDrawer(context),
    );
  }

  Drawer createMenuItems(BuildContext context) {
    createNavigationItem(var icon, String page, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(page),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var navigationList = [
      createNavigationItem(
          Icons.account_box, "Customer", CustomerScreen.routeName),
      createNavigationItem(Icons.shop, "Product", ProductScreen.routeName),
      createNavigationItem(Icons.home, "Home", "/"),
    ];
  

  ListView menuItems = ListView(
    children: navigationList,
  );
  return Drawer(child: menuItems,);
  }

  buildDrawer(BuildContext context) {
    return Drawer(
      child: createMenuItems(context),
    );
  }
}
