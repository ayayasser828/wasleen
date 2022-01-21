import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/models/current_subscriptions.dart';
import 'package:wasleen/models/passengers.dart';
import 'package:wasleen/widgets/passengers_item.dart';
import 'package:wasleen/widgets/passengers_item_selected.dart';
import 'dash_user.dart';
class SelectDriverScreen extends StatefulWidget {
  static const String routeName = "/SelectDriverScreen";
  @override
  _SelectDriverScreenState createState() => _SelectDriverScreenState();
}

class _SelectDriverScreenState extends State<SelectDriverScreen> {
  bool _select = false;

  List<Passengers> _passengers = [
    Passengers(name: "مهند", image: "assets/images/passenger.png"),
    Passengers(name: "مهند", image: "assets/images/passenger.png"),
    Passengers(name: "مهند", image: "assets/images/passenger.png"),
    Passengers(name: "مهند", image: "assets/images/passenger.png"),
  ];

  selected(double width,BuildContext ctx) {
    setState(() {
      _select = !_select;
    });
    return showGeneralDialog(
        context: ctx,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Material(
            color: Colors.transparent,
            child: Center(
              child: Container(
                width: width *0.9,
                height: 175,
                decoration: BoxDecoration(
                    color: Colors.transparent, borderRadius: BorderRadius.circular(30)),
                child: Stack(
                  children: [
                    Container(
                      width: width - 20,
                      height: 156,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: colorM2),
                      child: Center(
                        child: Text(
                          "فور الضغط على تاكيد الاشتراك يجب ان يتم السداد خلال 12 ساعة وتاكيد السداد قبل ان تتمكن من الاستفادة من خدمة التوصيل المقدمة.",
                          style: textStyleM14,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ) ,
                    Positioned(
                      bottom: 0,
                      left: 20,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: width*0.6,
                            height: 49,
                            child: RaisedButton(
                              elevation: 10,
                              color: colorM2,
                              onPressed: (){
                                Navigator.of(context).pushNamed(DashUserScreen.routeName);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Padding(
                                  padding:  EdgeInsets.only(left:width*0.17),
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Text("تاكيد الاشتراك",style: textStyleM21,)),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed(DashUserScreen.routeName);
                              },
                              child: Container(
                                width:  width*0.2,
                                height: 49,
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
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: 71,
                          height: 49,
                          child: Center(
                            child: Icon(Icons.clear,color: colorM2 ,size: 30,),
                          ),
                          decoration: BoxDecoration(
                              color: colorM11,
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    CurrentSubscriptions currentSubscriptions =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              height: height * 0.39,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/driver.png",
                    width: width,
                    height: height * 0.34,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: SafeArea(
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: colorM1,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle),
                            ))),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: width,
                      height: 60,
                      decoration: BoxDecoration(
                        color: colorM2,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height*0.01,
                            ),
                            Text(
                              "${currentSubscriptions.name}",
                              style: textStyleM9,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  RatingBar(
                                    ignoreGestures: true,
                                    initialRating: currentSubscriptions.rate,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: colorM1,
                                    ),
                                    itemSize: 18,
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${currentSubscriptions.numberOfRate}",
                                    style: textStyleM10,
                                  ),
                                  Text(
                                    "تقيم",
                                    style: textStyleM10,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${currentSubscriptions.numberOfPassengers}",
                                    style: textStyleM5,
                                  ),
                                  Text(
                                    "راكب",
                                    style: textStyleM5,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${currentSubscriptions.price}",
                                    style: textStyleM5,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "ريال / شهريا",
                                    style: textStyleM5,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              width: width,
              height: height * 0.6,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: InkWell(
                      onTap: () => selected(width,context),
                      child: Container(
                        width: width,
                        height: height * 0.2,
                        color: colorM1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "الاشتراك",
                                  style: _select ? textStyleM2 : textStyleM12,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${currentSubscriptions.price}",
                                      style:
                                          _select ? textStyleM2 : textStyleM12,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "ريال / شهريا",
                                      style:
                                          _select ? textStyleM2 : textStyleM12,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Material(
                      elevation: 8,
                      color: colorM2,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        width: width,
                        height: height * 0.48,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding:
                                EdgeInsets.only(right: 20, top: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: (width * 0.5) - 20,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "نوع الخدمة",
                                            style: textStyleM11,
                                          ),
                                          SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Text(
                                                currentSubscriptions
                                                    .serviceType,
                                                style: textStyleM5,
                                              )),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "نوع المركبة",
                                            style: textStyleM11,
                                          ),
                                          SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Text(
                                                currentSubscriptions
                                                    .typeOfVehicle,
                                                style: textStyleM5,
                                              )),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "ملاحظات",
                                            style: textStyleM11,
                                          ),
                                          SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Text(
                                                currentSubscriptions.nodes,
                                                style: textStyleM5,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: (width * 0.5) - 20,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "منطقة التوصيل",
                                            style: textStyleM11,
                                          ),
                                          SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Text(
                                                currentSubscriptions
                                                    .deliveryArea,
                                                style: textStyleM5,
                                              )),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "موديل المركبة",
                                            style: textStyleM11,
                                          ),
                                          SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Text(
                                                currentSubscriptions
                                                    .vehicleModel,
                                                style: textStyleM5,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "فضلاً قم بتحديد الركاب للاشتراك",
                                  style: textStyleM11,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: width,
                                  height: 134,
                                  child: ListView.builder(
                                      itemCount: _passengers.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          ((BuildContext context, int index) {
                                        return PassengersItemSelected(
                                          image: _passengers[index].image,
                                          name: _passengers[index].name,
                                        );
                                      })),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
