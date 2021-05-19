import 'package:flutter/material.dart';
import 'package:labs/pages/config.dart';
import 'package:labs/pages/tips/tips.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: heights,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/imges/splash.jpg'),
                      fit: BoxFit.contain)),
            ),
            Container(
              height: heights,
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  color: PrimeryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2)),
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(19),
                      topRight: Radius.circular(19))),
              child: ListView(
                children: [
                  Column(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "!!احجز تحليلك من خلال التطبيق والباقي علينا",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.0,
                        height: 10.0,
                      ),
                      Text(
                          "  اهلا بك في التطبيق العراقي الاول المختص بالتحاليل كل ما عليك انو تكمل تحليلك وتوصل النتيجة وانت ببيتك ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10.0,
                        height: 15.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Tips();
                            },
                          ));
                        },
                        child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Text(
                              "أبدأ التطبيق ",
                              style: TextStyle(
                                  color: PrimeryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            )),
                      )
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
