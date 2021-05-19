import 'package:flutter/material.dart';
import 'package:labs/pages/drawer/mydarwer.dart';
import 'package:labs/pages/products/productes_details.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  var arryCategory = [
    {
      "cat_id": "1",
      "cat_name": "اشعة عادية",
      "cat_image": 'assets/imges/002-test results.png'
    },
    {
      "cat_id": "2",
      "cat_name": "اشعة ملونه",
      "cat_image": 'assets/imges/002-test results.png'
    },
    {
      "cat_id": "3",
      "cat_name": "رنين مغناطيسي",
      "cat_image": 'assets/imges/002-test results.png'
    },
    {
      "cat_id": "4",
      "cat_name": "مفراس حلزوني",
      "cat_image": 'assets/imges/002-test results.png'
    },
    {
      "cat_id": "6",
      "cat_name": "فحص حساسية العظام",
      "cat_image": 'assets/imges/002-test results.png'
    },
    {
      "cat_id": "7",
      "cat_name": "فحص دم ",
      "cat_image": 'assets/imges/002-test results.png'
    },
    {
      "cat_id": "5",
      "cat_name": "فحص كورورنا",
      "cat_image": 'assets/imges/002-test results.png'
    },
  ];
  //______________________________________
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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      key: _keyDrawer,
      endDrawer: MyDrawer(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(top: 30.0),
              padding: EdgeInsets.only(right: 15.0),
              child: Text(
                "توصيل الطلب الى",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Row(
              children: [
                FlatButton.icon(
                    minWidth: 30,
                    onPressed: () {
                      _keyDrawer.currentState.openEndDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.red,
                    ),
                    label: Text("")),
                Container(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text(
                    "موقع الزبون",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.red,
                    ),
                    label: Text("")),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              child: ListView.builder(
                  itemCount: arryCategory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return SingalCateogory(
                      cat_id: arryCategory[index]['cat_id'],
                      cat_name: arryCategory[index]['cat_name'],
                      cat_image: arryCategory[index]['cat_image'],
                    );
                  }),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250.0,
              child: ListView.builder(
                  itemCount: arryproducts.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return SingalProd(
                      prod_id: arryproducts[index]['prod_id'],
                      prod_name: arryproducts[index]['prod_name'],
                      prod_detils: arryproducts[index]['prod_datils'],
                      prod_image: arryproducts[index]['prod_image'],
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        selectedItemColor: Colors.red,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            // ignore: deprecated_member_use
            title: Text("الاشعارات"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text("الرىيسية"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // ignore: deprecated_member_use
            title: Text("الملف"),
          ),
        ],
      ),
    ));
  }
}

class SingalCateogory extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String cat_id;
  // ignore: non_constant_identifier_names
  final String cat_image;
  // ignore: non_constant_identifier_names
  final String cat_name;
  // ignore: non_constant_identifier_names
  SingalCateogory({this.cat_id, this.cat_image, this.cat_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.red[100],
            ),
            child: Image.asset(
              cat_image,
              width: MediaQuery.of(context).size.width / 6,
              height: 60,
            ),
          ),
          Text(
            cat_name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

//_______________________________________________________________________________
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
          padding: EdgeInsets.all(5.0),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.height,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(prod_image))),
              ),
              Text(
                prod_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                prod_detils,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ))),
    );
  }
}
