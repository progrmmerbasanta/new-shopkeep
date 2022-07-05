import 'package:flutter/material.dart';
import 'package:testproj/inc/buydetails.dart';
import 'package:testproj/inc/cart.dart';
import 'package:testproj/inc/credit.dart';
import 'package:testproj/inc/details.dart';
import 'package:testproj/inc/homepage.dart';
import 'package:testproj/screens/home_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          width: 240,
          backgroundColor: Colors.blue[100],
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: ListTile(
                      title: const Text(
                        'Menu',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        tooltip: 'See Cart',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const BuyDetails(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.shopping_cart),
                      ),
                    ),
                  ),
                  const Divider(color: Colors.black, height: 2),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HomeScreen(),
                        ),
                      );
                    },
                    leading: const Icon(Icons.home),
                    title: const Text(
                      'Homepage',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HomePage(),
                        ),
                      );
                    },
                    leading: const Icon(Icons.dashboard),
                    title: const Text(
                      'DashBoard',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const Cart(),
                        ),
                      );
                    },
                    leading: const Icon(Icons.sell),
                    title: const Text(
                      'Sales Now',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const Credit(),
                        ),
                      );
                    },
                    leading: const Icon(Icons.credit_card),
                    title: const Text(
                      'Credit Details',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ProfilePage(),
                        ),
                      );
                    },
                    leading: const Icon(Icons.person_outlined),
                    title: const Text(
                      'Profile page',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
          )),
    );
  }
}
