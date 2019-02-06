import 'package:flutter/material.dart';
import 'package:freds_coffeshop/Catalogue.dart';
// import 'package:freds_coffeshop/History.dart';
// import 'package:freds_coffeshop/NewOrder.dart';
// import 'package:freds_coffeshop/Flowers.dart';
// import 'package:freds_coffeshop/Cart.dart';
// import 'package:freds_coffeshop/OrderSummary.dart';
// import 'package:freds_coffeshop/Contact.dart';
import 'package:freds_coffeshop/Social.dart';

class ContactScreen extends StatefulWidget {
  //set the url here
  static const String routeName = '/contact';
  @override
  ContactScreenState createState() => new ContactScreenState();
}

class ContactScreenState extends State<ContactScreen> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = new DrawerHeader(child: new Text("Menu"));
    // var aboutChild = new AboutListTile(
    //     child: new Text("About"),
    //     applicationName: "Freds Coffeeshop Order App",
    //     applicationVersion: "v0.1.0",
    //     applicationIcon: new Icon(Icons.adb),
    //     icon: new Icon(Icons.info));

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
      getNavItem(Icons.chat_bubble_outline, "Social", SocialScreen.routeName),
      // getNavItem(Icons.history, "Order History", HistoryScreen.routeName),
      // getNavItem(Icons.explore, "New Order", NewOrderScreen.routeName),
      // getNavItem(Icons.shopping_cart, "Cart", CartScreen.routeName),
      // aboutChild
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
      // body: Row /*or Column*/ (
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Image.network(
      //       'https://cdn.8ms.com/wp-content/uploads/2016/11/Popular-Times-Live.png',
      //       fit: BoxFit.fitWidth,
      //     ),
      //     Icon(Icons.star, size: 50),
      //     // Icon(Icons.star, size: 50),
      //   ],
      // ),
      body: new Container(
          child: new ListView(
        children: <Widget>[
          Image.network(
            'https://cdn.8ms.com/wp-content/uploads/2016/11/Popular-Times-Live.png',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hours of operation info",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "8:30 - 7:00pm",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Address info, phone #",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Somewhere Near You \n 1-800-555-3420",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
      // Set the nav drawer
      drawer: getNavDrawer(context),
    );
  }
}
