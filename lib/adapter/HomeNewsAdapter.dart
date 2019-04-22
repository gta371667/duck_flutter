import 'package:flutter/material.dart';
import 'package:duck_flutter/model/NewsModel.dart';
import 'package:duck_flutter/widget/MyMaterialView.dart';

class HomeNewsAdapter extends StatelessWidget {
  HomeNewsAdapter(this.position, this.data);

  final int position;
  final Contentlist data;

  @override
  Widget build(BuildContext context) {
    return MyMaterialView(
      onTap: () {},
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
            margin: EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  data.title,
                  style: TextStyle(color: const Color(0xFF596066)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    data.pubDate.isEmpty ? '2018-18-18' : data.pubDate,
                    style: TextStyle(color: const Color(0xFFababab)),
                  ),
                ),
              ],
            ),
          )),
          new Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            child: new Directionality(
              textDirection: TextDirection.rtl,
              child: Image.asset(
                'assets/images/ic_arrow_back.png',
                width: 15,
                matchTextDirection: true,
                height: 15,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
