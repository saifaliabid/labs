import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:labs/authsystem/forgetpassword.dart';
import 'package:labs/authsystem/registir.dart';
import 'package:labs/pages/home/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Expanded(
                child: Form(
                    child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    "تسجيل دخول",
                    style: TextStyle(fontSize: 25.0, color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: " البريد الالكتروني",
                        border: InputBorder.none),
                    // ignore: missing_return
                    validator: (String value) {
                      if (value.isEmpty ||
                          value.indexOf('@') == -1 ||
                          value.indexOf('.') == -1) {
                        return "الرجاء ادخال البريد الصحيح";
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: 15.0,
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: " كلمة المرور", border: InputBorder.none),
                    obscureText: true,
                    // ignore: missing_return
                    validator: (String value) {
                      if (value.isEmpty || value.length < 4) {
                        return "الرجاء ادخال كلمة مرور صحيحة واكثر من 4 رموز ";
                      }
                    },
                  ),
                ),
                GestureDetector(
                    child: Text(
                      "نسيت كلمة المرور؟",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ForgetPassword();
                        },
                      ));
                    }),
                SizedBox(
                  width: 15.0,
                  height: 15.0,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.red[600],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(2.0),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ));
                  },
                  child: Text(
                    " الدخول  ".toUpperCase(),
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ))),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ليس ليدك حساب ؟ ",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      child: Text(" انشاء حساب",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Register();
                          },
                        ));
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
