import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/screens/chat_screen.dart';
import 'package:wasleen/widgets/support_box.dart';
import 'package:wasleen/widgets/call_box.dart';

class DriverTrackingScreen extends StatefulWidget {
  static const String routeName = '/DriverTrackingScreen';

  @override
  _DriverTrackingScreenState createState() => _DriverTrackingScreenState();
}

class _DriverTrackingScreenState extends State<DriverTrackingScreen> {



  /// GoogleMap

  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _initialLocation = CameraPosition(
      target: LatLng(31.200092, 29.918739));

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }



  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            child: GoogleMap(
              zoomControlsEnabled: false,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              initialCameraPosition: _initialLocation,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: SafeArea(child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Directionality(
                  textDirection: TextDirection.rtl,
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
                  ),
                ))),
          ),
          Positioned(
            bottom: 100,
            child: Stack(
              children: [
                Container(
                  width: width,
                  alignment: Alignment.topCenter,
                  height: height * 0.35,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width * 0.5,
                            height: height*0.28,
                            child: Card(
                              elevation: 3,
                              semanticContainer: true,
                              clipBehavior: Clip
                                  .antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius
                                      .circular(30)
                              ),
                              child: Stack(
                                // alignment: Alignment.center,
                                children: [
                                  Container(
                                    // height: height*0.28,
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    width: width * 0.5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .end,
                                      children: [
                                        Text('بيانات الراكب',
                                          textWidthBasis: TextWidthBasis.longestLine,
                                          style: textStyleA5.copyWith(
                                              fontSize: 13),),
                                        Text('مهند',
                                          textWidthBasis: TextWidthBasis.longestLine,
                                          style: textStyleA5.copyWith(
                                              color: Colors.black,fontSize: 13),),
                                        Text(
                                          'الوجهة من المدرسة',
                                          style: textStyleA7,textWidthBasis: TextWidthBasis.longestLine,),
                                        Text(
                                          'الوجهة الى المنزل',
                                          style: textStyleA7,textWidthBasis: TextWidthBasis.longestLine,),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 0.0,
                                    child: Image.asset(
                                      'assets/images/passenger.png',
                                      width: width*0.18, height: height*0.28,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                width: width * 0.5,
                                height: height*0.28,
                                child: Card(
                                  elevation: 3,
                                  semanticContainer: true,
                                  clipBehavior: Clip
                                      .antiAliasWithSaveLayer,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius
                                          .circular(30)
                                  ),
                                  child: Stack(
                                    // alignment: Alignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 5),
                                        width: width * 0.5,
                                        // height: height*0.28,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .end,
                                          children: [
                                            Text('بيانات السائق',
                                              style: textStyleA5.copyWith(
                                                  fontSize: 13),),
                                            Text('احمد سالم',
                                              textWidthBasis: TextWidthBasis.longestLine,
                                              style: textStyleA5.copyWith(
                                                  color: Colors.black,fontSize: 13),),
                                            Text(
                                              'هيونداي',
                                              style: textStyleA7,textWidthBasis: TextWidthBasis.longestLine,),
                                            Text(
                                              'رقم اللوحة',
                                              style: textStyleA7,),
                                            Material(
                                              elevation: 2,
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              shadowColor: Colors.white,
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text('أ ب ت 123',style: textStyleA12,),
                                                width: 60,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: 0.0,
                                        child: Image.asset(
                                          'assets/images/driver.png',
                                          width: width*0.18, height: height*0.28,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
                Positioned(
                  bottom: height*0.03,
                  left: width*0.11,
                  child: Material(
                    elevation: 10,
                    color: colorA1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      width: 80,
                      height: 42,
                      child: Center(child: Text('المزيد',
                        style: textStyleA3.copyWith(
                            color: Colors.white),)),
                    ),
                  ),
                ),
                Positioned(
                  bottom: height*0.03,
                  right: width*0.11,
                  child: Material(
                    elevation: 10,
                    color: colorA1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      width: 80,
                      height: 42,
                      child: Center(child: Text('المزيد',
                        style: textStyleA3.copyWith(
                            color: Colors.white),)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              width: width,
              height: height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      showDialog(context: context,builder: (_) => SupportBox(),);
                    } ,
                    child: Container(
                      width: width * 0.15,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                        color: colorA5,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Icon(
                        Icons.headset,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(context: context,builder: (_) => CallBox(),);
                    },
                    child: Container(
                      width: width * 0.15,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                        color: colorA1,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Icon(
                        Icons.phone_in_talk,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(ChatScreen.routeName);
                    },
                    child: Container(
                      width: width * 0.15,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                        color: colorA6,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
