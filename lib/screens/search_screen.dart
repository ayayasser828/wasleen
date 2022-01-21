import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/models/current_subscriptions.dart';
import 'package:wasleen/widgets/search_results.dart';

class SearchScreen extends StatefulWidget {
  static const String routeName = "/SearchScreen";

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool item0 = true;
  bool item1 = false;
  bool item2 = false;

  void select(int index) {
    if (index == 0) {
      item0 = true;
      item1 = false;
      item2 = false;
    } else if (index == 1) {
      item0 = false;
      item1 = true;
      item2 = false;
    } else if (index == 2) {
      item0 = false;
      item1 = false;
      item2 = true;
    }
    setState(() {});
  }

  List<CurrentSubscriptions> _currentSubscriptions = [
    CurrentSubscriptions(
        name: "احمد سالم",
        rate: 5,
        numberOfRate: 75,
        price: 200,
        type: ["توصيل ذكور", "توصيل موظفين"],
        serviceType: "توصيل من والى المدرسة",
        deliveryArea: "الحي الاول",
        typeOfVehicle: "باص نقل ركاب",
        vehicleModel: "2019",
        nodes: "باص نقل ركاب",
        numberOfPassengers: 20),
    CurrentSubscriptions(
        name: "احمد سالم",
        rate: 4,
        numberOfRate: 80,
        price: 400,
        type: ["توصيل ذكور", "توصيل موظفين"],
        serviceType: "توصيل من والى المدرسة",
        deliveryArea: "الحي الاول",
        typeOfVehicle: "باص نقل ركاب",
        vehicleModel: "2019",
        nodes: "باص نقل ركاب",
        numberOfPassengers: 20),
    CurrentSubscriptions(
        name: "احمد سالم",
        rate: 5,
        numberOfRate: 90,
        price: 700,
        type: ["توصيل ذكور", "توصيل موظفين"],
        serviceType: "توصيل من والى المدرسة",
        deliveryArea: "الحي الاول",
        typeOfVehicle: "باص نقل ركاب",
        vehicleModel: "2019",
        nodes: "باص نقل ركاب",
        numberOfPassengers: 20),
    CurrentSubscriptions(
        name: "احمد سالم",
        rate: 2,
        numberOfRate: 20,
        price: 100,
        type: ["توصيل ذكور", "توصيل موظفين", "توصيل إناث"],
        serviceType: "توصيل من والى المدرسة",
        deliveryArea: "الحي الاول",
        typeOfVehicle: "باص نقل ركاب",
        vehicleModel: "2019",
        nodes: "باص نقل ركاب",
        numberOfPassengers: 20),
    CurrentSubscriptions(
        name: "احمد سالم",
        rate: 3,
        numberOfRate: 75,
        price: 200,
        type: ["توصيل ذكور", "توصيل موظفين"],
        serviceType: "توصيل من والى المدرسة",
        deliveryArea: "الحي الاول",
        typeOfVehicle: "باص نقل ركاب",
        vehicleModel: "2019",
        nodes: "باص نقل ركاب",
        numberOfPassengers: 20),
    CurrentSubscriptions(
        name: "احمد سالم",
        rate: 5,
        numberOfRate: 80,
        price: 200,
        type: ["توصيل ذكور", "توصيل موظفين"],
        serviceType: "توصيل من والى المدرسة",
        deliveryArea: "الحي الاول",
        typeOfVehicle: "باص نقل ركاب",
        vehicleModel: "2019",
        nodes: "باص نقل ركاب",
        numberOfPassengers: 20),
    CurrentSubscriptions(
        name: "احمد سالم",
        rate: 4,
        numberOfRate: 75,
        price: 300,
        type: ["توصيل ذكور", "توصيل موظفين"],
        serviceType: "توصيل من والى المدرسة",
        deliveryArea: "الحي الاول",
        typeOfVehicle: "باص نقل ركاب",
        vehicleModel: "2019",
        nodes: "باص نقل ركاب",
        numberOfPassengers: 20),
    CurrentSubscriptions(
        name: "احمد سالم",
        rate: 5,
        numberOfRate: 30,
        price: 200,
        type: ["توصيل ذكور", "توصيل موظفين"],
        serviceType: "توصيل من والى المدرسة",
        deliveryArea: "الحي الاول",
        typeOfVehicle: "باص نقل ركاب",
        vehicleModel: "2019",
        nodes: "باص نقل ركاب",
        numberOfPassengers: 20),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              height: height * 0.33,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: width,
                    height: height * 0.29,
                    decoration: BoxDecoration(
                      color: colorM1,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: SafeArea(
                      child: Container(
                        width: width,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Center(
                                child: Icon(
                                  Icons.menu,
                                  size: 20,
                                  color: colorM1,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                            ),
                            Row(
                              children: [
                                Text(
                                  " اسم الحي",
                                  style: textStyleM4,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: colorM2,
                                  size: 30,
                                ),
                              ],
                            ),
                            SafeArea(
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
                                    )))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 88,
                      height: 63,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child:  Container(
                      width: width,
                      child: Stack(
                        children: [
                          Container(
                            height: height*0.07,
                            child: Material(
                              elevation: 2,
                              shadowColor: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  hintText: 'البحث',
                                  hintStyle: textStyleM3,
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
                          ),
                          Positioned(
                            left: 3,
                            top: 3,
                            child: Container(
                              width: width * 0.18,
                              height: height*0.06,
                              child: Icon(
                                Icons.search,
                                size: 25,
                                color: colorM2,
                              ),
                              decoration: BoxDecoration(
                                  color: colorM1,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: height*0.04,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width*0.01,
                        ),
                        InkWell(
                          onTap: () {
                            select(0);
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Center(
                                child: Text(
                              "توصيل ذكور",
                              style: TextStyle(
                                fontSize: 14,
                                color: item0 ? colorM1 : colorM2,
                              ),
                            )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: item0 ? colorM2 : colorM1,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            select(1);
                          },
                          child: Container(
                            height: 23,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Center(
                                child: Text(
                              "توصيل موظفين",
                              style: TextStyle(
                                fontSize: 14,
                                color: item1 ? colorM1 : colorM2,
                              ),
                            )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: item1 ? colorM2 : colorM1,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            select(2);
                          },
                          child: Container(
                            height: 23,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Center(
                                child: Text(
                              "توصيل إناث",
                              style: TextStyle(
                                fontSize: 14,
                                color: item2 ? colorM1 : colorM2,
                              ),
                            )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: item2 ? colorM2 : colorM1,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width,
                    height: height - (height * 0.41),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: _currentSubscriptions.length,
                        itemBuilder: ((BuildContext context, index) {
                          return SearchResultsItem(
                              _currentSubscriptions[index]);
                        })),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
