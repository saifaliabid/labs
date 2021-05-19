import 'package:flutter/material.dart';
import 'package:labs/authsystem/registir.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                    "كلمة مرور جديدة",
                    style: TextStyle(fontSize: 25.0, color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    "يرجى ادخال بريدك الالكتروني بشكل صحيح سيصل لك رمز التأكيد",
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    textAlign: TextAlign.center,
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
                    " ارسال  ".toUpperCase(),
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
                    "ليس لديك حساب ؟ ",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      child: Text("انشاء حساب",
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
