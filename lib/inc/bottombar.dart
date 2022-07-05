import 'package:flutter/material.dart';
import 'buydetails.dart';
import 'cart.dart';
import 'credit.dart';
import 'details.dart';
import 'homepage.dart';

import '../screens/home_screen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        CustomPaint(
          size: Size(size.width, 80),
          painter: BNBCustomPainter(),
        ),
        Center(
          heightFactor: 0.6,
          child: FloatingActionButton(
            backgroundColor: Colors.orange,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BuyDetails(),
                ),
              );
            },
            elevation: 0.1,
            child: const Icon(Icons.shopping_cart),
          ),
        ),
        SizedBox(
          width: size.width,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  }),
              IconButton(
                  icon: const Icon(Icons.sell_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Cart(),
                      ),
                    );
                  }),
              Container(
                width: size.width * 0.20,
              ),
              IconButton(
                icon: const Icon(Icons.credit_card),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Credit(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.details_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
