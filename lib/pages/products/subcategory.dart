import 'package:flutter/material.dart';
import 'package:labs/pages/products/product.dart';

class SubCategory extends StatefulWidget {
  final String cat_id;
  final String cat_name;

  SubCategory({this.cat_id, this.cat_name});
  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  var myarr_category = [
    {
      "sub_id": "1",
      "sub_name": "2تحليل دم",
      "sub_price": "100",
      "sub_image": "assets/imges/categores/cat1.jpg",
      "sub_count": "3"
    },
    {
      "sub_id": "1",
      "sub_name": "3اشعة ",
      "sub_price": "100",
      "sub_image": "assets/imges/categores/cat1.jpg",
      "sub_count": "3"
    },
    {
      "sub_id": "1",
      "sub_name": "5تحليل دم",
      "sub_price": "100",
      "sub_image": "assets/imges/categores/cat1.jpg",
      "sub_count": "3"
    },
    {
      "sub_id": "1",
      "sub_name": "23مفراس",
      "sub_price": "100",
      "sub_image": "assets/imges/categores/cat1.jpg",
      "sub_count": "3"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.cat_name,
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
              return SingleSubCategory(
                  sub_id: myarr_category[index]["sub_id"],
                  sub_image: myarr_category[index]["sub_image"],
                  sub_name: myarr_category[index]["sub_name"],
                  sub_count: myarr_category[index]["sub_count"]);
            }),
      ),
    );
  }
}

class SingleSubCategory extends StatelessWidget {
  final String sub_id;
  final String sub_name;
  final String sub_image;
  final String sub_count;

  SingleSubCategory(
      {this.sub_id, this.sub_name, this.sub_image, this.sub_count});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new Product()));
            },
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey[100]),
                child: Image.asset(sub_image),
              ),
              title: Text(
                sub_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(sub_count),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
