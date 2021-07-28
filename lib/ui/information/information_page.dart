import 'package:flutter/material.dart';
import 'package:mycovid_db/ui/information/information_list.dart';

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0), child: InformationList());
  }
}
