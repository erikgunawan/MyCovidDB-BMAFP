import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mycovid_db/model/province_data.dart';
import 'package:mycovid_db/ui/statistic/statistic_list.dart';

class StatisticPage extends StatefulWidget {
  @override
  _StatisticPage createState() => _StatisticPage();
}

class _StatisticPage extends State<StatisticPage> {
  ProvinceData _selectedProvince;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: DropdownButton<ProvinceData>(
                    focusColor: Colors.white,
                    value: _selectedProvince,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: Colors.white,
                    isExpanded: true,
                    items: provinceList.map<DropdownMenuItem<ProvinceData>>(
                        (ProvinceData value) {
                      return DropdownMenuItem<ProvinceData>(
                        value: value,
                        child: Text(
                          value.name,
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      "Pilih Provinsi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                    onChanged: (ProvinceData value) {
                      setState(() {
                        _selectedProvince = value;
                      });
                    },
                  ),
                ),
                (_selectedProvince != null)
                    ? Expanded(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                              "Statistik Covid-19 di ${_selectedProvince.name}",
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Per 25 Juli 2021",
                              style: TextStyle(fontSize: 20.0)),
                          SizedBox(
                            height: 4,
                          ),
                          Expanded(
                              child: StatisticList(province: _selectedProvince))
                        ],
                      ))
                    : SizedBox.shrink(),
              ],
            )));
  }
}
