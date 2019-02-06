import 'package:flutter/material.dart';

// import 'package:freds_coffeshop/History.dart';
// import 'package:freds_coffeshop/NewOrder.dart';
// import 'package:freds_coffeshop/Flowers.dart';
import 'package:freds_coffeshop/Cart.dart';
// import 'package:freds_coffeshop/OrderSummary.dart';
import 'package:freds_coffeshop/Contact.dart';
import 'package:freds_coffeshop/Social.dart';

class CatalogueScreen extends StatefulWidget {
  //set the url here
  static const String routeName = '/Catalogue';
  @override
  // create a screen widget for this page for main to find
  CatalogueScreenState createState() => new CatalogueScreenState();
}

class CatalogueScreenState extends State<CatalogueScreen> {
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
      // getNavItem(Icons.history, "Order History", HistoryScreen.routeName),
      // getNavItem(Icons.explore, "New Order", NewOrderScreen.routeName),
      // getNavItem(Icons.shopping_cart, "Cart", CartScreen.routeName),
      getNavItem(Icons.contacts, "Contact Us", ContactScreen.routeName),
      getNavItem(Icons.chat_bubble_outline, "Social", SocialScreen.routeName),
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
    final title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          children: <Widget>[
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
              leading: Image.network(
                'https://www.mobiustrimmer.com/wp-content/uploads/2018/11/F-flower-200x200.jpg',
                width: 100.0,
                height: 100.0,
              ),
              title: Text('Sour Diesel - Sativa-dominant veriety'),
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => CartScreen()));
              // },
            ),
            ListTile(
              leading: Image.network(
                'https://www.blackdogled.com/media/Gallery/Bud_Pics/thumbnails/Bud_Pics_small-2.jpg',
                width: 100.0,
                height: 100.0,
              ),
              title: Text(
                  'Lemon Haze - one of the most popular sativa strains in America'),
              contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
            ),
            ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTh_xjmKF_iSN99dmsmt8iSnfxg3b9otjrO9R_Y9elik6H0wRb',
                width: 100.0,
                height: 100.0,
              ),
              title: Text(
                  'Green Crack - well-loved for its ability to help sharpen focus'),
              contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
            ),
            ListTile(
              leading: Image.network(
                'https://moldresistantstrains.com/wp-content/uploads/2018/11/white-widow-autoflower-cannabis-seeds-usa.jpg',
                width: 100.0,
                height: 100.0,
              ),
              title: Text(
                  'Strawberry Cough - sought out for its ability to help you improve your mood'),
              contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
            ),
            ListTile(
              leading: Image.network(
                'https://i.pinimg.com/236x/d0/d0/10/d0d010daa82869f425b70fbcc9c2e252--medical-marijuana-cannabis.jpg',
                width: 100.0,
                height: 100.0,
              ),
              title: Text(
                  'Jack Herer - Named after cannabis activist and author Jack Herer'),
              contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
            ),
          ],
        ),
        drawer: getNavDrawer(context),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
    );
    // );
  }
}
