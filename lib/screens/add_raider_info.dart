import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';

import 'add_raider_done.dart';




class ADDRaiderInfoScreen extends StatefulWidget {
  static const String routeName= "/ADDRaiderInfoScreen";

  @override
  _ADDRaiderInfoScreenState createState() => _ADDRaiderInfoScreenState();
}

class _ADDRaiderInfoScreenState extends State<ADDRaiderInfoScreen> {
  bool select = true;
  final _formKey = GlobalKey<FormState>();

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
                Container(
                  height: height * 0.2,
                  color: colorM1,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/mix.png",
                        height: height * 0.2,
                        fit: BoxFit.cover,
                        width: width,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child:  SafeArea(
                            child: InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                    width: 30,height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(child: Icon(Icons.arrow_forward_ios,color: colorM1,size: 20,),)

                                ))),
                      )
                    ],
                  ),
                ),
                Container(//0.43,0.57
                  width: width,
                  height:height*0.17 ,
                  color: colorM1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              "معلومات الراكب",
                              style: textStyleM1,
                              textAlign: TextAlign.right,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              "يرجى ادخال معلومات الراكب",
                              style: textStyleM2,
                              textAlign: TextAlign.right,
                            )),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height*0.4,
                  color: colorM1,
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 30),
                    child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: height*0.06,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                  hintText:
                                  "الاسم",
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintStyle: textStyleM4,
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
                              height: height * 0.02,
                            ),
                            Container(
                              height: height*0.06,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                  hintText:
                                  "العمر",
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintStyle: textStyleM4,
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
                              height: height * 0.02,
                            ),
                            Container(
                              height: height*0.06,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                  hintText:
                                  "مكان التوصيل",
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintStyle: textStyleM4,
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
                              height: height * 0.02,
                            ),
                            Container(
                              height: height*0.06,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                  hintText:
                                  "فصيلة الدم",
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintStyle: textStyleM4,
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
                              height: height * 0.02,
                            ),
                            Container(
                              height: height*0.07,
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
                                      height: height*0.06,
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
                                      height: height*0.06,
                                      decoration: BoxDecoration(
                                          color:select?  colorM2:colorM1,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Center(child: Text("انثى",style:select? textStyleM15: textStyleM2,)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
                                Navigator.of(context).pushNamed(ADDRaiderDoneScreen.routeName);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding:  EdgeInsets.only(left: width * 0.2),
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
                                Navigator.of(context).pushNamed(ADDRaiderDoneScreen.routeName);
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
                  height: height*0.09,
                  color: colorM2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}