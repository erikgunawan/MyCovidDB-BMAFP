import 'package:flutter/material.dart';
import 'package:mycovid_db/model/information_data.dart';
import 'package:mycovid_db/ui/information/information_detail_page.dart';

class InformationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: ListView.builder(
        itemCount: informationList.length,
        itemBuilder: (context, index) {
          final informationData = informationList[index];
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InformationDetailPage(
                      informationData: informationData);
                }));
              },
              child: Card(
                  elevation: 2.0,
                  margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            informationData.date,
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.white70),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            informationData.title,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            informationData.shortDescription,
                            style: TextStyle(
                                fontSize: 14.0, color: Colors.white70),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ))));
        },
      ),
    );
  }
}
