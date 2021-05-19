import 'dart:ui';

import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var arryproducts = [
    {
      "prod_id": "1",
      "prod_name": "testblood",
      "prod_datils":
          "anyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyany",
      "prod_image": 'assets/imges/prod/prod3.jpg',
      "prod_offer": "1"
    },
    {
      "prod_id": "2",
      "prod_name": "any",
      "prod_datils":
          "anyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyany",
      "prod_image": 'assets/imges/prod/prod1.jpg',
      "prod_offer": "0"
    },
    {
      "prod_id": "3",
      "prod_name": "testblood",
      "prod_datils":
          "anyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyany",
      "prod_image": 'assets/imges/prod/prod2.jpg',
      "prod_offer": "1"
    },
    {
      "prod_id": "3",
      "prod_name": "testblood",
      "prod_datils":
          "anyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyany",
      "prod_image": 'assets/imges/prod/prod2.jpg',
      "prod_offer": "1"
    },
    {
      "prod_id": "2",
      "prod_name": "any",
      "prod_datils":
          "anyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyanyany",
      "prod_image": 'assets/imges/prod/prod1.jpg',
      "prod_offer": "0"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: arryproducts.length,
            itemBuilder: (BuildContext context, int index) {
              return SingalProd(
                prod_id: arryproducts[index]['prod_id'],
                prod_name: arryproducts[index]['prod_name'],
                prod_detils: arryproducts[index]['prod_datils'],
                prod_image: arryproducts[index]['prod_image'],
                prod_offer: arryproducts[index]['prod_offer'],
              );
            }),
      ),
    );
  }
}

//////////////////////////////////////singleproducts
class SingalProd extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String prod_id;
  // ignore: non_constant_identifier_names
  final String prod_name;
  // ignore: non_constant_identifier_names
  final String prod_image;
  // ignore: non_constant_identifier_names
  final String prod_detils;
  // ignore: non_constant_identifier_names
  final String prod_offer;

  // ignore: non_constant_identifier_names
  SingalProd(
      {this.prod_id,
      this.prod_name,
      this.prod_image,
      this.prod_detils,
      this.prod_offer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(right: 5.0),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image(
                image: AssetImage(
                  prod_image,
                ),
                width: 100,
                height: 100,
              ),
            ),
            Expanded(
              child: Container(
                height: 80.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prod_name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    new RichText(
                      overflow: TextOverflow.clip,
                      maxLines: 3,
                      text: TextSpan(children: [
                        TextSpan(
                          text: prod_detils,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100.0,
              width: 50.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border),
                  checkOffer(prod_offer),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget checkOffer(String prodOffer) {
  return prodOffer == "1"
      ? Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.red,
          ),
          child: new Text(
            "عرض",
            style: TextStyle(color: Colors.white),
          ))
      : Text("");
}
