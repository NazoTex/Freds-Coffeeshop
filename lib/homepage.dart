import 'package:flutter/material.dart';
import 'package:freds_coffeshop/Catalogue.dart';
// import 'package:freds_coffeshop/History.dart';
// import 'package:freds_coffeshop/NewOrder.dart';
// import 'package:freds_coffeshop/Flowers.dart';
// import 'package:freds_coffeshop/Cart.dart';
// import 'package:freds_coffeshop/OrderSummary.dart';
import 'package:freds_coffeshop/Contact.dart';
import 'package:freds_coffeshop/Social.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
      getNavItem(Icons.view_list, "Order", CatalogueScreen.routeName),
      // getNavItem(Icons.history, "Order History", HistoryScreen.routeName),
      // getNavItem(Icons.explore, "New Order", NewOrderScreen.routeName),
      // getNavItem(Icons.shopping_cart, "Cart", CartScreen.routeName),
      getNavItem(Icons.contacts, "Contact", ContactScreen.routeName),
      getNavItem(Icons.chat_bubble_outline, "Social", SocialScreen.routeName),
      // getNavItem(Icons.home, "Home", "/"),
      // aboutChild
    ];

    ListView listView = new ListView(children: myNavChildren);

    return new Drawer(
      child: listView,
    );
  }

  // Body
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Freds Coffeeshop"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: new Center(
                  child: Text(
                    "Order",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CatalogueScreen()),
                  );
                },
                contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
              ),
              ListTile(
                title: new Center(
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactScreen()),
                  );
                },
                contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
              ),
              ListTile(
                title: new Center(
                  child: Text(
                    "Social",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SocialScreen()),
                  );
                },
                contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
              ),
            ],
          ),
        ),
      ),
      drawer: getNavDrawer(context),
    );
  }
}
