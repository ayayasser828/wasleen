import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/models/current_subscriptions.dart';
import 'package:wasleen/models/passengers.dart';
import 'package:wasleen/models/status.dart';
import 'package:wasleen/screens/search_screen.dart';
import 'package:wasleen/widgets/current_subscriptions_item.dart';
import 'package:wasleen/widgets/passengers_item.dart';
import 'package:wasleen/widgets/status_item.dart';

import 'add_raider_info.dart';

class DashUserScreen extends StatelessWidget {
  static const String routeName = "/DashUserScreen";
  List<Passengers> _passengers = [
    Passengers(name: "مهند",image: "assets/images/passenger.png"),
    Passengers(name: "مهند",image: "assets/images/passenger.png"),
    Passengers(name: "مهند",image: "assets/images/passenger.png"),
    Passengers(name: "مهند",image: "assets/images/passenger.png"),
  ];
  List<Status> _status = [
    Status(color: colorM1,name: "تم الانزال"),
    Status(color: colorM6,name: "في الطريق"),
    Status(color: colorM7,name: "عائد الى المنزل"),
    Status(color: colorM8,name: "لم يركب بعد"),
    Status(color: colorM9,name: "رحلة فائتة"),
  ];
  List<CurrentSubscriptions> _currentSubscriptions = [
    CurrentSubscriptions(name: "احمد سالم سائق مهند",rate: 5,numberOfRate: 75,price: 200,color:colorM7 ),
    CurrentSubscriptions(name: "احمد سالم سائق مهند",rate: 4,numberOfRate: 80,price: 123,color: colorM6),
    CurrentSubscriptions(name: "احمد سالم سائق مهند",rate: 3,numberOfRate: 75,price: 200,color:colorM7 ),
    CurrentSubscriptions(name: "احمد سالم سائق مهند",rate: 5,numberOfRate: 75,price: 200,color: colorM6),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height*0.43,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Arc(
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
                                Navigator.of(context).pushNamed(SearchScreen.routeName);
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
                          Text(" Saeed ,اهلاً بك",style: textStyleM4,),
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
                Image.asset("assets/images/logo.png",width: width,height: height*0.1,),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width:width*0.4,
                          height: height*0.18,
                          child: Card(
                            elevation: 2,
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
                        Container(
                          width:width*0.4,
                          height: height*0.18,
                          child: Card(
                            elevation: 2,
                            color: colorM2 ,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("الركاب",style: textStyleM5,),
                                Text("2",style: textStyleM6,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20 ),
            child: Container(
              width: width,
              height: height*0.57,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height*0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,                               children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(ADDRaiderInfoScreen.routeName);
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text("اضافة",style: textStyleM20,),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("الركاب",style: textStyleM7,textWidthBasis: TextWidthBasis.longestLine,),
                      ),
                    ],
                    ),
                    Container(
                      width: width,
                      height: height*0.22,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ListView.builder(
                            itemCount: _passengers.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder:((BuildContext context,int index){
                              return PassengersItem(image: _passengers[index].image,name:_passengers[index].name ,);
                            })
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height*0.01,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("الاشتركات الحالية",style: textStyleM7,textWidthBasis: TextWidthBasis.longestLine,),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        width: width,
                        height: height*0.05,
                        child: ListView.builder(
                            itemCount: _status.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder:((BuildContext context,int index){
                              return StatusItem(color: _status[index].color,name:_status[index].name ,);
                            })
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height*0.02,
                    ),
                    Container(
                      width: width,
                      height: height*0.2,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ListView.builder(
                            itemCount: _currentSubscriptions.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder:((BuildContext context,int index){
                              return CurrentSubscriptionsItem(color: _currentSubscriptions[index].color,price: _currentSubscriptions[index].price,name: _currentSubscriptions[index].name,numberOfRate: _currentSubscriptions[index].numberOfRate,rate: _currentSubscriptions[index].rate,);
                            })
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height*0.01,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
