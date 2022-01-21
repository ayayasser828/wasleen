import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/screens/sms_otp.dart';

import 'dash_driver.dart';
import 'driver_step.dart';
import 'login_screen.dart';




class ADDRaiderScreen extends StatelessWidget {
  static const String routeName = "/ADDRaiderScreen";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: width,
          height: height,
          color: colorM2,
          child: Column(
            children: [
              Container(
                width: width,
                height: height-height*0.13,
                color: colorM1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * 0.2,
                      width: width,
                      color: colorM1,
                      child: Image.asset(
                        "assets/images/mix.png",
                        height: height * 0.2,
                        width: width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: width,
                      height:height*0.19,
                      color: colorM1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  "تم التسجيل بنجاح",
                                  style: textStyleM1,
                                  textAlign: TextAlign.right,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  "سيتم مراجعة الطلب من",
                                  style: textStyleM2,
                                  textAlign: TextAlign.right,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  "قبل الادارة ومن ثم تفعيل الحساب الخاص بك.",
                                  style: textStyleM2,
                                  textAlign: TextAlign.right,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height*0.055),
                    Container(
                      width: width,
                      height: height*0.23,
                      color: colorM1,
                      child: Center(
                          child: Image.asset("assets/images/done.png",width: width,height: height*0.23,)),
                    ),
                    SizedBox(height: height*0.055),
                    Container(
                      width: width,
                      height: height*0.14,
                      decoration: BoxDecoration(
                          color: colorM2,
                          // border: Border.all(width: 0,color: colorM1)
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top:0,
                            child: Container(
                                width: width,
                                height: height*0.07,

                                decoration: BoxDecoration(
                                    color: colorM1,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                    )
                                )
                            ),
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                width: width * 0.5,
                                height: 50,
                                child: RaisedButton(
                                  elevation: 1,
                                  color: colorM2,
                                  onPressed: () {
                                    Navigator.of(context).pushNamedAndRemoveUntil(DashDriverScreen.routeName,(Route<dynamic> route)=> false);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:  EdgeInsets.only(left: width * 0.2),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Text(
                                          "الرئيسية",
                                          style: textStyleM3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                child: InkWell(
                                  onTap: () {
                                    // Navigator.of(context).pushNamedAndRemoveUntil(DashUserScreen.routeName,(Route<dynamic> route)=> false);
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    height: 50,
                                    child: Icon(
                                      Icons.keyboard_arrow_left,
                                      size: 35,
                                      color: colorM2,
                                    ),
                                    decoration: BoxDecoration(
                                        color: colorM1,
                                        borderRadius: BorderRadius.circular(30)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
