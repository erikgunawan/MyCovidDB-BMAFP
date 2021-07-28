import 'package:flutter/material.dart';

class StatisticData {
  String title;
  String totalValue;
  String valuePerDay;
  MaterialColor baseColor;

  StatisticData({
    this.title,
    this.totalValue,
    this.valuePerDay,
    this.baseColor,
  });
}

var statisticList = [
  StatisticData(
      title: "Terkonfirmasi",
      totalValue: "3.166.505",
      valuePerDay: "+38.679",
      baseColor: Colors.orange),
  StatisticData(
      title: "Kasus Aktif",
      totalValue: "573.908",
      valuePerDay: "-227",
      baseColor: Colors.yellow),
  StatisticData(
      title: "Meninggal",
      totalValue: "83.279",
      valuePerDay: "+1.266",
      baseColor: Colors.red),
  StatisticData(
      title: "Sembuh",
      totalValue: "2.509.318",
      valuePerDay: "+37.640",
      baseColor: Colors.green),
  StatisticData(
      title: "Jumlah Spesimen Tes",
      totalValue: "24.814.468",
      valuePerDay: "+173.472",
      baseColor: Colors.blue),
  StatisticData(
      title: "Jumlah Orang Dites",
      totalValue: "16.887.533",
      valuePerDay: "+124.139",
      baseColor: Colors.amber),
];

var statisticDKIJakarta = [
  StatisticData(
      title: "Terkonfirmasi",
      totalValue: "792.275",
      valuePerDay: "+5.393",
      baseColor: Colors.orange),
  StatisticData(
      title: "Kasus Aktif",
      totalValue: "64.118",
      valuePerDay: "−8.962",
      baseColor: Colors.yellow),
  StatisticData(
      title: "Meninggal",
      totalValue: "11.439",
      valuePerDay: "+157",
      baseColor: Colors.red),
  StatisticData(
      title: "Sembuh",
      totalValue: "716.718 ",
      valuePerDay: "+14.198",
      baseColor: Colors.green),
];

var statisticBanten = [
  StatisticData(
      title: "Terkonfirmasi",
      totalValue: "104.552",
      valuePerDay: "+1.619",
      baseColor: Colors.orange),
  StatisticData(
      title: "Kasus Aktif",
      totalValue: "42.858",
      valuePerDay: "+1.101",
      baseColor: Colors.yellow),
  StatisticData(
      title: "Meninggal",
      totalValue: "1.674",
      valuePerDay: "+15",
      baseColor: Colors.red),
  StatisticData(
      title: "Sembuh",
      totalValue: "60.020",
      valuePerDay: "+503",
      baseColor: Colors.green),
];

var statisticJawaBarat = [
  StatisticData(
      title: "Terkonfirmasi",
      totalValue: "569.070",
      valuePerDay: "+5.302",
      baseColor: Colors.orange),
  StatisticData(
      title: "Kasus Aktif",
      totalValue: "128.279",
      valuePerDay: "+38",
      baseColor: Colors.yellow),
  StatisticData(
      title: "Meninggal",
      totalValue: "8.159",
      valuePerDay: "+123",
      baseColor: Colors.red),
  StatisticData(
      title: "Sembuh",
      totalValue: "432.632",
      valuePerDay: "+5.141",
      baseColor: Colors.green),
];

var statisticJawaTengah = [
  StatisticData(
      title: "Terkonfirmasi",
      totalValue: "353.940",
      valuePerDay: "+5.265",
      baseColor: Colors.orange),
  StatisticData(
      title: "Kasus Aktif",
      totalValue: "62.218",
      valuePerDay: "+1.582",
      baseColor: Colors.yellow),
  StatisticData(
      title: "Meninggal",
      totalValue: "16.781",
      valuePerDay: "+264",
      baseColor: Colors.red),
  StatisticData(
      title: "Sembuh",
      totalValue: "274.941",
      valuePerDay: "+3.419",
      baseColor: Colors.green),
];

var statisticJawaTimur = [
  StatisticData(
      title: "Terkonfirmasi",
      totalValue: "277.100",
      valuePerDay: "+4.763",
      baseColor: Colors.orange),
  StatisticData(
      title: "Kasus Aktif",
      totalValue: "55.348",
      valuePerDay: "−421",
      baseColor: Colors.yellow),
  StatisticData(
      title: "Meninggal",
      totalValue: "18.182",
      valuePerDay: "+318",
      baseColor: Colors.red),
  StatisticData(
      title: "Sembuh",
      totalValue: "203.570",
      valuePerDay: "+4.866",
      baseColor: Colors.green),
];
