import 'package:mycovid_db/model/province_data.dart';
import 'package:mycovid_db/model/statistic_data.dart';

class StatisticProvinceData {
  String idProvince;
  String nameProvince;
  List<StatisticData> statistics;

  StatisticProvinceData({this.idProvince, this.nameProvince, this.statistics});
}

var statisticListByProvince = [
  StatisticProvinceData(
      idProvince: provinceList[0].id,
      nameProvince: provinceList[0].name,
      statistics: statisticDKIJakarta),
  StatisticProvinceData(
      idProvince: provinceList[1].id,
      nameProvince: provinceList[1].name,
      statistics: statisticBanten),
  StatisticProvinceData(
      idProvince: provinceList[2].id,
      nameProvince: provinceList[2].name,
      statistics: statisticJawaBarat),
  StatisticProvinceData(
      idProvince: provinceList[3].id,
      nameProvince: provinceList[3].name,
      statistics: statisticJawaTengah),
  StatisticProvinceData(
      idProvince: provinceList[4].id,
      nameProvince: provinceList[4].name,
      statistics: statisticJawaTimur),
];
