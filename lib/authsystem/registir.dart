import 'package:flutter/material.dart';
import 'package:labs/authsystem/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                    "انشاء حساب جديد",
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
                        hintText: "الاسم الكامل", border: InputBorder.none),
                    // ignore: missing_return
                    validator: (String value) {
                      if (value.isEmpty || value.length < 1) {
                        return "الرجاء ادخال الاسم الكامل";
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
                SizedBox(
                  width: 15.0,
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "رقم هاتف", border: InputBorder.none),
                    // ignore: missing_return
                    validator: (String value) {
                      if (value.isEmpty || value.length < 12) {
                        return "الرجاء ادخال رقم هاتف صحيح ";
                      }
                    },
                  ),
                ),
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
                  onPressed: () {},
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
                    "هل لديك حساب بالفعل؟ ",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      child: Text("سجل دخول",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Login();
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
