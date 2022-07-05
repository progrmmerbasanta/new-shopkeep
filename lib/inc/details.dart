import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/custom_drawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
      child: Center(
        child: Scaffold(
          key: _key,
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Passionate Learner"),
          ),
          drawer: const MyDrawer(),
          backgroundColor: Colors.purple,
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 90,
                    backgroundColor: Color.fromARGB(255, 151, 180, 182),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/basanta.jpg'),
                      radius: 80,
                    ),
                  ),
                  const Text(
                    'BASANTA KARKI',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'MOBILE APP DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 15,
                      letterSpacing: 2.5,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Container(
                    width: 300.0,
                    margin: const EdgeInsets.symmetric(vertical: 1.0),
                    child: const Divider(
                      color: Color.fromARGB(255, 219, 1, 1),
                    ),
                  ),
                  ElevatedButton.icon(
                    // ignore: deprecated_member_use
                    onPressed: () => launch(
                        'mailto:basantakarki948@gmail.com?subject=Check My New App at appstore &body=Namaste '),
                    icon: const Icon(
                      // <-- Icon
                      Icons.mail,
                      size: 30.0,
                    ),
                    label: const Text(
                      'basantakarki948@gmail.com',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ElevatedButton.icon(
                    // ignore: deprecated_member_use
                    onPressed: () => launch("tel://+9779816929844"),
                    icon: const Icon(
                      // <-- Icon
                      Icons.phone,
                      size: 24.0,
                    ),
                    label: const Text(
                      '+9779816929844',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => MapsLauncher.launchCoordinates(
                        26.651940781032597, 87.63421140250861, 'I am here'),
                    icon: const Icon(
                      // <-- Icon
                      Icons.location_city,
                      size: 24.0,
                    ),
                    label: const Text(
                      'Damak,Jhapa',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
