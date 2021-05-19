import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:labs/pages/shopping/shopping.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  Widget header() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.red,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Shopping();
                },
              ));
            },
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[50],
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadiusDirectional.circular(15.0),
          ),
        ),
        Expanded(child: Text("")),
        Container(
          child: IconButton(
            icon: Icon(
              Icons.shop_rounded,
              color: Colors.red,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Shopping();
                },
              ));
            },
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[50],
                spreadRadius: 7,
                blurRadius: 3,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadiusDirectional.circular(15.0),
          ),
        ),
      ],
    );
  }

//_______________________________________________prodc____________________________________
  Widget imageProducts() {
    return Container(
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        boxShadow: [
          BoxShadow(
            color: Colors.grey[50],
            spreadRadius: 7,
            blurRadius: 0,
            offset: Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0)),
      ),
      child: Column(
        children: [
          Image.asset("assets/imges/prod/prod1.jpg"),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.minus,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () {}),
                decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[50],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadiusDirectional.circular(15.0),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "1 ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () {}),
                decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[50],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadiusDirectional.circular(15.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              imageProducts(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "اسم التحليل",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "reviews",
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Expanded(child: Text("")),
                          Text("5", style: TextStyle(fontSize: 16)),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      Text(
                        "صف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف  التحليلصف التحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصفالتحليلصف  التحليلصف  التحليلصف  التحليلصف التحليلصف  التحليلصف    التحليل",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            height: 120.0,
            child: header(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(left: 35, right: 35),
        decoration: BoxDecoration(
          //color: Colors.grey[400],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.grey[600],
              Colors.grey[500],
              Colors.grey[400],
              Colors.grey[400],
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[50],
              spreadRadius: 9,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadiusDirectional.circular(40.0),
        ),
        child: Row(
          children: [
            Container(
              child: Text(
                "50",
                style: TextStyle(fontSize: 30, color: Colors.blue[900]),
              ),
            ),
            Expanded(child: Text("")),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350],
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              child: Text(
                " حجز التحليل ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.blue[900]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
