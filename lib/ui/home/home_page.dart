import 'package:flutter/material.dart';
import 'package:mycovid_db/ui/statistic/statistic_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
            left: 8.0, top: 16.0, right: 8.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Statistik Covid-19 di Indonesia",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 4,
            ),
            Text("Per 25 Juli 2021", style: TextStyle(fontSize: 20.0)),
            SizedBox(
              height: 4,
            ),
            Expanded(child: StatisticList())
          ],
        ));
  }
}
