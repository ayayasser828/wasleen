import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/screens/sms_otp.dart';

import 'dash_user.dart';
import 'driver_step.dart';
import 'login_screen.dart';

class SMSOTP2Screen extends StatefulWidget {
  static const String routeName = "/SMSOTP2Screen";

  @override
  _SMSOTP2ScreenState createState() => _SMSOTP2ScreenState();
}

class _SMSOTP2ScreenState extends State<SMSOTP2Screen> {
  final _formKey = GlobalKey<FormState>();

  bool select = true;

  StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();

  TextEditingController textEditingController = TextEditingController();


  void selected(){
    setState(() {
      select = !select;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: width,
          height: height ,
          color: colorM1,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/mix.png",
                  height: height * 0.2,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: width,
                  height: height*0.19,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Text(
                          "التسجيل",
                          style: textStyleM1,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              "عند التسجيل ستتمكن من",
                              style: textStyleM2,
                              textAlign: TextAlign.right,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              "الاستفاضية من خدمة (س) للتوصيل",
                              style: textStyleM2,
                              textAlign: TextAlign.right,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          height: height*0.06,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                              hintText:
                              "الاسم الثلاثي باللغة العربية",
                              filled: true,
                              fillColor: colorM2,
                              hintStyle: textStyleA3,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: colorM2,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height*0.02,
                        ),
                        Container(
                          height: height*0.06,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                              hintText: "رقم الجوال",
                              filled: true,
                              hintStyle: textStyleA3,
                              fillColor: colorM2,

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: colorM2,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height*0.02,
                        ),
                        Container(
                          height: height*0.06,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                              hintText: "البريد الالكتروني",
                              filled: true,
                              hintStyle: textStyleA3,
                              fillColor: colorM2,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: colorM2,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height*0.02,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height*0.06,
                              width: width*0.5,
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                  hintText: "عنون المنزل",
                                  filled: true,
                                  hintStyle: textStyleA3,
                                  fillColor: colorM2,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: colorM2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: height*0.06,
                              width: width*0.3,
                              decoration: BoxDecoration(
                                color: colorM2,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap:()=>selected(),
                                    child: Container(
                                      width:width*0.14 ,
                                      height: height*0.051,
                                      decoration: BoxDecoration(
                                        color:select?  colorM1:colorM2,
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Center(child: Text("ذكر",style:select? textStyleM2: textStyleM15,)),

                                    ),
                                  ),
                                  InkWell(
                                    onTap:()=>selected(),
                                    child: Container(
                                      width:width*0.14 ,
                                      height: height*0.051,
                                      decoration: BoxDecoration(
                                          color:select?  colorM2:colorM1,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Center(child: Text("انثى",style:select? textStyleM15: textStyleM2,)),

                                    ),
                                  )


                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height*0.02,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: colorM2,
                  width: width,
                  height: height*0.14,
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
                          ),
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
                                Navigator.of(context).pushNamed(SMSOTPScreen.routeName,arguments: 1);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "متابعة",
                                    style: textStyleM3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(SMSOTPScreen.routeName,arguments: 1);
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
                Container(
                  width: width,
                  height: height*0.15,
                  color: colorM2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("لديك حساب بالفعل؟",style: textStyleA3,),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(LoginScreen.routeName);
                            },
                              child: Text("تسجيل الدخول",style: textStyleM16,))
                        ],
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(DriverStepScreen.routeName);
                          },
                          child: Text("التسجيل كسائق",style: textStyleA3,))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
