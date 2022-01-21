import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/screens/sms_otp.dart';
import 'package:wasleen/screens/sms_otp2.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/LoginScreen';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colorA1,
      body: Container(
        height: height,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                alignment: Alignment.center,
                width: width,
                height: height * 0.2,
                child: Text('تسجيل الدخول', style: textStyleA1)),
            Container(
              height: height * 0.5,
              child: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 206,
                  height: 206,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: width,
                height: height * 0.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Stack(
                  children: [
                    Container(
                      width: width,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Material(
                            type: MaterialType.card,
                            elevation: 2,
                            borderRadius: BorderRadius.circular(30),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5),
                                hintText: 'رقم الجوال',
                                hintStyle: textStyleA2,
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            left: 3,
                            bottom: 3,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    SMSOTPScreen.routeName,
                                    arguments: 1);
                              },
                              child: Container(
                                width: width * 0.2,
                                height: height * 0.05,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: colorA1,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height*0.05,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              'لا تملك حساب بعد ؟ ',
                              style: textStyleA3,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(SMSOTP2Screen.routeName);
                                },
                                child: Text(
                                  'تسجيل مستخدم جديد',
                                  style: textStyleA4,
                                )),
                          ],
                        ),
                        SizedBox(height: height*0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              'توصيل مدرسي اكثر',
                              style: textStyleA2,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'امان',
                              style: textStyleA2.copyWith(color: colorA1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
