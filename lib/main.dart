import 'package:flutter/material.dart';
import 'package:freds_coffeshop/homepage.dart';
import 'package:freds_coffeshop/Catalogue.dart';
import 'package:freds_coffeshop/History.dart';
import 'package:freds_coffeshop/NewOrder.dart';
import 'package:freds_coffeshop/Flowers.dart';
import 'package:freds_coffeshop/Cart.dart';
import 'package:freds_coffeshop/OrderSummary.dart';
import 'package:freds_coffeshop/Contact.dart';
import 'package:freds_coffeshop/Social.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.deepOrange,
      ),
      home: new HomeScreen(), // route for home is '/' implicitly
      routes: <String, WidgetBuilder>{
        // define the routes
        CatalogueScreen.routeName: (BuildContext context) =>
            new CatalogueScreen(),
        HistoryScreen.routeName: (BuildContext context) => new HistoryScreen(),
        NewOrderScreen.routeName: (BuildContext context) =>
            new NewOrderScreen(),
        FlowersScreen.routeName: (BuildContext context) => new FlowersScreen(),
        CartScreen.routeName: (BuildContext context) => new CartScreen(),
        OrderSummaryScreen.routeName: (BuildContext context) =>
            new OrderSummaryScreen(),
        ContactScreen.routeName: (BuildContext context) => new ContactScreen(),
        SocialScreen.routeName: (BuildContext context) => new SocialScreen(),
      },
    );
  }
}
