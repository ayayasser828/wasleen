import 'package:flutter/material.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
import 'package:wasleen/constant/constant.dart';

class SupportBox extends StatefulWidget {
  @override
  _SupportBoxState createState() => _SupportBoxState();
}

class _SupportBoxState extends State<SupportBox> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          width: width *0.9,
          height:  height*0.4,
          decoration: BoxDecoration(
              color: Colors.transparent, borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: width - 20,
                  height: height*0.25,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: colorM2),
                  child: Center(
                    child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          children: [
                            Image.asset('assets/images/support.png',width: width*0.2,height: height*0.2,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('تواصل معنا',style: textStyleA8,),
                                Text('info@name.com',style: textStyleA9,),
                              ],
                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ) ,
              Positioned(
                bottom: 20,
                left: 20,
                child: Stack(
                  children: [
                    SizedBox(
                      width: width*0.38,
                      height: height*0.08,
                      child: RaisedButton(
                        elevation: 10,
                        color: colorM2,
                        onPressed: (){
                          // Navigator.of(context).pushNamed(DashUserScreen.routeName);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                            child: Text("الاتصال",style: textStyleM3,)),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: InkWell(
                        onTap: (){
                          // Navigator.of(context).pushNamed(DashUserScreen.routeName);
                        },
                        child: Container(
                          width:  width*0.16,
                          height: height*0.08,
                          child: Icon(Icons.check,size: 35,color: colorM2,),
                          decoration: BoxDecoration(
                              color: colorM1,
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Positioned(
                  bottom: 20,
                  right: 20,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: width*0.38,
                        height: height*0.08,
                        child: RaisedButton(
                          elevation: 10,
                          color: colorM2,
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("الرجوع",style: textStyleM3,)),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            width: width*0.16,
                            height: height*0.08,
                            child: Icon(Icons.arrow_back_ios,color: colorM2 ,size: 30,),
                            decoration: BoxDecoration(
                                color: colorM11,
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

