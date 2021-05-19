import 'package:flutter/material.dart';
import 'package:labs/pages/products/productes_details.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  var arryproducts = [
    {
      "prod_id": "1",
      "prod_name": "testblood",
      "prod_datils": "any",
      "prod_image": 'assets/imges/prod/prod3.jpg'
    },
    {
      "prod_id": "2",
      "prod_name": "any",
      "prod_datils": "any",
      "prod_image": 'assets/imges/prod/prod1.jpg'
    },
    {
      "prod_id": "3",
      "prod_name": "testblood",
      "prod_datils": "any",
      "prod_image": 'assets/imges/prod/prod2.jpg'
    },
    {
      "prod_id": "3",
      "prod_name": "testblood",
      "prod_datils": "any",
      "prod_image": 'assets/imges/prod/prod2.jpg'
    },
    {
      "prod_id": "2",
      "prod_name": "any",
      "prod_datils": "any",
      "prod_image": 'assets/imges/prod/prod1.jpg'
    },
    {
      "prod_id": "2",
      "prod_name": "any",
      "prod_datils": "any",
      "prod_image": 'assets/imges/prod/prod1.jpg'
    },
    {
      "prod_id": "2",
      "prod_name": "any",
      "prod_datils": "any",
      "prod_image": 'assets/imges/prod/prod1.jpg'
    },
    {
      "prod_id": "2",
      "prod_name": "any",
      "prod_datils": "any",
      "prod_image": 'assets/imges/prod/prod1.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
            child: GridView.builder(
                itemCount: arryproducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.8),
                itemBuilder: (BuildContext context, int index) {
                  return SingalProd(
                    prod_id: arryproducts[index]['prod_id'],
                    prod_name: arryproducts[index]['prod_name'],
                    prod_detils: arryproducts[index]['prod_name'],
                    prod_image: arryproducts[index]['prod_image'],
                  );
                })),
      ),
    );
  }
}

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
  SingalProd({this.prod_id, this.prod_name, this.prod_image, this.prod_detils});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Products();
          },
        ));
      },
      child: Container(
          color: Colors.grey[50],
          padding: EdgeInsets.all(5.0),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 2 - 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(prod_image))),
                  ),
                  Text(
                    prod_name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        prod_id,
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                      Expanded(child: Text("")),
                      Icon(
                        Icons.star_rate_rounded,
                        color: Colors.yellow,
                      )
                    ],
                  )
                ],
              ))),
    );
  }
}
