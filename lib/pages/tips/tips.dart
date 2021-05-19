import 'package:flutter/material.dart';
import 'package:labs/authsystem/login.dart';
import 'package:labs/authsystem/registir.dart';
import 'package:page_indicator/page_indicator.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var array = [
    {
      "tittle":
          "Here you can find activities to practise your reading skills. ",
      "info": "Here you can find activities to practise your reading skills.",
      "imge": "assets/imges/002-test results.png",
    },
    {
      "tittle": "Here you can find activities to practise your reading skills",
      "info": "Here you can find activities to practise your reading skills",
      "imge": "assets/imges/007-test tubes.png",
    },
    {
      "tittle": "Here you can find activities to practise your reading skills",
      "info": "Here you can find activities to practise your reading skills",
      "imge": "assets/imges/014-test results.png",
    },
  ];
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height / 6;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton(
            textColor: Colors.red,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Login();
                },
              ));
            },
            child: Text(
              "دخول",
              style: TextStyle(fontSize: 20.0),
            ),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          children: [
            Container(
              height: heights * 4,
              child: new PageIndicatorContainer(
                shape: IndicatorShape.circle(),
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.yellow,
                indicatorSelectorColor: Colors.red,
                length: array.length,
                child: PageView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: array.length,
                    itemBuilder: (BuildContext context, i) {
                      return SingleTips(
                          tittle: array[i]["tittle"],
                          info: array[i]["info"],
                          imge: array[i]["imge"]);
                    }),
              ),
            ),
            Container(
              height: heights,
              padding: EdgeInsets.only(bottom: 6.0),
              child: ListView(
                children: [
                  Column(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.red)),
                        color: Colors.red,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Register();
                            },
                          ));
                        },
                        child: Text(
                          "انشاء حساب".toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                        height: 5.0,
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)),
                        color: Colors.grey[800],
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {},
                        child: Text(
                          "تسجيل الدخول عبر الفيسبوك".toUpperCase(),
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String tittle;
  final String info;
  final String imge;
  SingleTips({this.tittle, this.info, this.imge});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: Image.asset(
            imge,
            fit: BoxFit.cover,
          ),
        )),
        Padding(
          padding: EdgeInsets.all(30),
          child: Text(
            tittle,
            style: TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 90),
          child: Text(
            info,
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
