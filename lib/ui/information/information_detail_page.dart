import 'package:flutter/material.dart';
import 'package:mycovid_db/model/information_data.dart';

import 'information_detail_view.dart';

class InformationDetailPage extends StatelessWidget {
  final InformationData informationData;

  InformationDetailPage({this.informationData});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyCovid DB',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: InformationDetailView(
        informationData: informationData,
      ),
    );
  }
}
