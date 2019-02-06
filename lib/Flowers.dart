import 'package:flutter/material.dart';
import 'package:freds_coffeshop/Catalogue.dart';
import 'package:freds_coffeshop/History.dart';
import 'package:freds_coffeshop/NewOrder.dart';
// import 'package:freds_coffeshop/Flowers.dart';
// import 'package:freds_coffeshop/Cart.dart';
// import 'package:freds_coffeshop/OrderSummary.dart';
// import 'package:freds_coffeshop/Contact.dart';
// import 'package:freds_coffeshop/Social.dart';

class FlowersScreen extends StatefulWidget {
  //set the url here
  static const String routeName = '/cat-flowers';
  @override
  FlowersScreenState createState() => new FlowersScreenState();
}

class FlowersScreenState extends State<FlowersScreen> {
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
      getNavItem(Icons.history, "Order History", HistoryScreen.routeName),
      getNavItem(Icons.explore, "New Order", NewOrderScreen.routeName),
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
        child: new Text("Look at the Pretty Flowers!"),
      )),
      // Set the nav drawer
      drawer: getNavDrawer(context),
    );
  }
}
