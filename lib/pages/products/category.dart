import 'package:flutter/material.dart';
import 'package:labs/pages/products/subcategory.dart';

class Cateogory extends StatefulWidget {
  @override
  _CateogoryState createState() => _CateogoryState();
}

class _CateogoryState extends State<Cateogory> {
  var myarr_category = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "قائمة التحاليل",
          style: TextStyle(color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView.builder(
            itemCount: myarr_category.length,
            itemBuilder: (BuildContext context, int index) {
              return SingalCateogory(
                  cat_id: myarr_category[index]["cat_id"],
                  cat_image: myarr_category[index]["cat_image"],
                  cat_name: myarr_category[index]["cat_name"]);
            }),
      ),
    );
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
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        new SubCategory(cat_id: cat_id, cat_name: cat_name)));
          },
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: ListTile(
              leading: Container(
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
              title: Text(
                cat_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
