// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_key.currentState!.isDrawerOpen) {
          Navigator.of(context).pop();
          return false;
        }
        return true;
      },
      child: Scaffold(
        key: _key,
        appBar: AppBar(
          title: const Text("Dashboard"),
          elevation: .1,
          backgroundColor: const Color.fromARGB(255, 241, 15, 45),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(3.0),
            children: <Widget>[
              makeDashboardItem("Sell Detais", Icons.sell_outlined),
              makeDashboardItem("Buy Details", Icons.shopping_cart),
              makeDashboardItem("Credit Details", Icons.credit_card),
              makeDashboardItem("About US", Icons.details_outlined),
            ],
          ),
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon) {
    return Card(
      elevation: 1.0,
      margin: const EdgeInsets.all(8.0),
      child: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 40, 10, 173)),
        child: new InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              const SizedBox(height: 50.0),
              Center(
                child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20.0),
              new Center(
                child: new Text(
                  title,
                  style: const TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
