import 'package:flutter/material.dart';
import 'package:mycovid_db/model/province_data.dart';
import 'package:mycovid_db/model/statistic_data.dart';
import 'package:mycovid_db/model/statistic_province_data.dart';

class StatisticList extends StatelessWidget {
  final ProvinceData province;

  StatisticList({this.province});

  @override
  Widget build(BuildContext context) {
    final statisticProvince = province == null
        ? null
        : statisticListByProvince
            .firstWhere((element) => element.idProvince == province.id);

    return GridView.count(
      childAspectRatio: 1.5,
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: List.generate(
        province == null
            ? statisticList.length
            : statisticProvince.statistics.length,
        (index) {
          final statisticData = province == null
              ? statisticList[index]
              : statisticProvince.statistics[index];
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        statisticData.title,
                        style: TextStyle(fontSize: 14.0, color: Colors.white70),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        statisticData.totalValue,
                        style: TextStyle(
                            fontSize: 26.0,
                            color: statisticData.baseColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        statisticData.valuePerDay,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: statisticData.baseColor,
                        ),
                      )
                    ],
                  )));
        },
      ),
    );
  }
}
