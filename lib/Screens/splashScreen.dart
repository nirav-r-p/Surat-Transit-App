import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomeScreenWidget/HomeScreen.dart';
import 'NavigationScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // late List<String> stations = [];
  // late List<String> all_routes = [];
  // Future<void> ReadJson() async {
  //   final String jsondata =
  //       await rootBundle.loadString('lib/DATA/All_Stations-2.json');
  //   final list = json.decode(jsondata);
  //   final String jsondata1 =
  //       await rootBundle.loadString('lib/DATA/All_ROUTES.json');
  //   final list1 = json.decode(jsondata1);
  //   for (var element in list1) {
  //     all_routes.add(element["all_routes"]);
  //   }
  //   for (var element in list) {
  //     stations.add(element["all_station"]);
  //   }
  // }

  // ignore: non_constant_identifier_names
  void initState() {
    // TODO: implement initState
    // ReadJson();
    super.initState();
    Timer(Duration(seconds: 7), (() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => NavigetScreen()),
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 33, 139, 253),
        child: Center(
            child: Container(
          width: MediaQuery.of(context).size.width * 1.56,
          child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
            Image.asset("assets/images/logo_flash.gif"),
            const Text(
              'SuratGo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat_Subrayada',
              ),
            )
          ]),
        )),
      ),
    );
  }
}
