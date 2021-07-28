import 'package:flutter/material.dart';
import 'package:mycovid_db/ui/home/home_page.dart';
import 'package:mycovid_db/ui/information/information_page.dart';
import 'package:mycovid_db/ui/statistic/statistic_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyCovid DB',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Home", icon: Icon(Icons.home)),
                Tab(text: "Statistik", icon: Icon(Icons.graphic_eq_sharp)),
                Tab(text: "Informasi", icon: Icon(Icons.info)),
              ],
            ),
            title: Text('MyCovid DB'),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              StatisticPage(),
              InformationPage(),
            ],
          ),
        ),
      ),
    );
  }
}
