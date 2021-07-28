import 'package:flutter/material.dart';
import 'package:mycovid_db/model/information_data.dart';

class InformationDetailView extends StatelessWidget {
  final InformationData informationData;

  InformationDetailView({this.informationData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyCovid DB'),
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () =>
                  Navigator.of(context, rootNavigator: true).pop(context)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  informationData.date,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  informationData.title,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  informationData.shortDescription,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 6,
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Oleh: ${informationData.author}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
                informationData.imageUrls.isNotEmpty
                    ? Container(
                        margin: EdgeInsets.only(top: 10.0),
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: informationData.imageUrls.map((url) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(url),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    : SizedBox.shrink(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    informationData.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
