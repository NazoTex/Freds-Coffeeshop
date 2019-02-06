import 'package:flutter/material.dart';
import 'package:freds_coffeshop/Catalogue.dart';
// import 'package:freds_coffeeshop/screens/History.dart';
// import 'package:freds_coffeeshop/screens/NewOrder.dart';
// import 'package:freds_coffeeshop/screens/Flowers.dart';
// import 'package:freds_coffeeshop/screens/Cart.dart';
// import 'package:freds_coffeeshop/screens/OrderSummary.dart';
// import 'package:freds_coffeeshop/screens/Contact.dart';
// import 'package:freds_coffeeshop/screens/Social.dart';

class HistoryScreen extends StatefulWidget {
  //set the url here
  static const String routeName = '/order-history';
  @override
  // create a screen widget for this page for main to find
  HistoryScreenState createState() => new HistoryScreenState();
}

class HistoryScreenState extends State<HistoryScreen> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = new DrawerHeader(child: new Text("Menu"));
    var aboutChild = new AboutListTile(
        child: new Text("About"),
        applicationName: "Freds Coffeeshop Order App",
        applicationVersion: "v0.1.0",
        applicationIcon: new Icon(Icons.adb),
        icon: new Icon(Icons.info));

    ListTile getNavItem(var icon, String s, String routeName) {
      return new ListTile(
        leading: new Icon(icon),
        title: new Text(s),
        onTap: () {
          setState(() {
            // pop closes the drawer
            Navigator.of(context).pop();
            // navigate to the route
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.view_list, "Order", CatalogueScreen.routeName),
      // getNavItem(Icons.account_box, "Account", AccountScreen.routeName),
      aboutChild
    ];

    ListView listView = new ListView(children: myNavChildren);

    return new Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Freds Coffeeshop"),
      ),
      body: new Container(
          child: new Center(
        child: new Text("History"),
      )),
      // Set the nav drawer
      drawer: getNavDrawer(context),
    );
  }
}
