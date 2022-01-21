import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/screens/search_screen.dart';



class DashDriverScreen extends StatelessWidget {
  static const String routeName = "/DashDriverScreen";
  bool state = true;
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
          child: Column(
            children: [
              Container(
                width: width,
                height: height*0.43,
                color: Colors.transparent,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Arc(
                      edge: Edge.BOTTOM,
                      arcType: ArcType.CONVEX,
                      height: 1.0,
                      child: Container(
                        width: width,
                        height: height * 0.35,
                        decoration: BoxDecoration(
                            color: colorM1,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: SafeArea(
                        child: Container(
                          width: width,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: (){
                                    // Navigator.of(context).pushNamed(SearchScreen.routeName);
                                  },
                                  child:                   Container(
                                    width: 30,
                                    height: 30,
                                    child: Center(child: Icon(Icons.search,size: 20,color: colorM1,),),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                    ),
                                  )),
                              Text(" Ahmed ,اهلاً بك",style: textStyleM4,),
                              Container(
                                width: 30,
                                height: 30,
                                child: Center(child: Icon(Icons.menu,size: 20,color: colorM1,),),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      child: Text("خارج الخدمة",style: textStyleM13,),
                    ),
                    Positioned(
                      bottom: 0,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width:width*0.41,
                            height: height*0.19,
                            child: Card(
                              elevation:2,
                              color: colorM2 ,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("الرسائل الجديدة",style: textStyleM5,),
                                  Text("11",style: textStyleM6,)
                                ],
                              ),

                            ),
                          ),
                          SizedBox(width: width*0.02,),
                          SizedBox(
                            width:width*0.41,
                            height: height*0.19,
                            child: Card(
                              elevation: 2,
                              color: colorM2 ,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("المشتركين",style: textStyleM5,),
                                  Text("2",style: textStyleM6,)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(height: height*0.02,),
              state? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    RaisedButton(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      color: colorM1,
                      onPressed: (){

                      },
                      child: Container(
                          height: height*0.07,
                          child: Center(child: Text("فى الطريق",style: textStyleM2,))),
                    ),
                    Positioned(
                      right: 20,
                      child: Icon(Icons.arrow_back_ios,color: colorM2,),
                    )
                  ],
                ),
              )
                  :Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RaisedButton(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  color: colorM11,
                  onPressed: (){

                  },
                  child: Container(
                      height: height*0.07,
                      child: Center(child: Text("بانتظار تفعيل الحساب",style: textStyleM2,))),
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              state?Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          width: width*0.145,
                          height: width*0.145,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          width: width*0.145,
                          height: width*0.145,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          width: width*0.145,
                          height: width*0.145,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          width: width*0.145,
                          height: width*0.145,
                        ),
                      ),

                    ],
                  ),
                ),
              ):Container(),
            ],
          ),
        ),
      ),
    );
  }
}
