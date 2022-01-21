import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/screens/sms_otp.dart';

class DriverStepScreen extends StatefulWidget {
  static const String routeName = "/DriverStepScreen";
  @override
  _DriverStepScreenState createState() => _DriverStepScreenState();
}

class _DriverStepScreenState extends State<DriverStepScreen> {
  var _index = 0;
  int index = 0;
  bool select = true;
  int count = 0;

  void selected() {
    setState(() {
      select = !select;
    });
  }

  Widget _tabStep() => Container(
        color: Colors.transparent,
        child: Theme(
          data: ThemeData(
            canvasColor: colorM1,
          ),
          child: Stepper(
            type: StepperType.horizontal,
            steps: [
              Step(
                title: Text(""),
                content: Text(""),
              ),
              Step(
                title: Text(""),
                content: Text(""),
              ),
              Step(
                title: Text(""),
                content: Text(""),
              ),
            ],
            currentStep: _index,
            onStepTapped: (index) {
              setState(() {
                _index = index;
              });
            },
            onStepCancel: () {
              print("You are clicking the cancel button.");
            },
            onStepContinue: () {
              print("You are clicking the continue button.");
            },
            controlsBuilder: (BuildContext context,
                    {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
                Container(
              color: Colors.red,
            ),
          ),
        ),
      );
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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width,
                  height: height * 0.25,
                  decoration: BoxDecoration(
                      color: colorM1,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                          top: 0,
                          child: Image.asset(
                            "assets/images/mix.png",
                            height: height * 0.2,
                            width: width,
                            fit: BoxFit.fill,
                          )),
                      Text(
                        "تسجيل الموصلين",
                        style: textStyleM1,
                      ),
                      Positioned(
                        top: 20,
                        left: 10,
                        child: SafeArea(
                            child: InkWell(
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
                        bottom: 10,
                        child: Container(
                          width: width * 0.85,
                          height: 32,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: width * 0.8,
                                height: 4,
                                decoration: BoxDecoration(color: colorM2),
                              ),
                              Positioned(
                                left: 0,
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: colorM2),
                                  child: Center(
                                      child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index == 2 ? colorM1 : colorM2),
                                  )),
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: colorM2),
                                  child: Center(
                                      child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index == 1 ? colorM1 : colorM2),
                                  )),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: colorM2),
                                  child: Center(
                                      child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index == 0 ? colorM1 : colorM2),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                index == 0
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "المعلومات الشخصية",
                              style: textStyleM16,
                            ),
                            SizedBox(
                              height: height*0.02,
                            ),
                            Container(
                              height: height*0.06,
                              width: width,
                              child: Material(
                                elevation: 2,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
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
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: height*0.06,
                              width: width,
                              child: Material(
                                elevation: 2,
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    hintText: "رقم الهوية",
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
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: height*0.06,
                              width: width,
                              child: Material(
                                elevation: 2,
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
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
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: height*0.06,
                              width: width,
                              child: Material(
                                elevation: 2,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
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
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: width,
                              child: SingleChildScrollView(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Material(
                                      elevation: 1,
                                      child: Container(
                                        height: height*0.06,
                                        width: width * 0.5,
                                        child: TextFormField(
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 5, horizontal: 5),
                                            hintText:
                                                "الحي المراد التوصيل اليه",
                                            filled: true,
                                            hintStyle: textStyleA3,
                                            fillColor: colorM2,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                    ),
                                    Container(
                                      height: height*0.06,
                                      width: width * 0.3,
                                      decoration: BoxDecoration(
                                          color: colorM2,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            onTap: () => selected(),
                                            child: Container(
                                              width: width * 0.14,
                                              height: height*0.05,
                                              decoration: BoxDecoration(
                                                  color: select
                                                      ? colorM1
                                                      : colorM2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5)),
                                              child: Center(
                                                  child: Text(
                                                "ذكر",
                                                style: select
                                                    ? textStyleM2
                                                    : textStyleM15,
                                              )),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => selected(),
                                            child: Container(
                                              width: width * 0.14,
                                              height: height*0.05,
                                              decoration: BoxDecoration(
                                                  color: select
                                                      ? colorM2
                                                      : colorM1,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5)),
                                              child: Center(
                                                  child: Text(
                                                "انثى",
                                                style: select
                                                    ? textStyleM15
                                                    : textStyleM2,
                                              )),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Stack(
                              children: [
                                SizedBox(
                                  width: width * 0.45,
                                  height: height*0.08,
                                  child: RaisedButton(
                                    elevation: 1,
                                    color: colorM2,
                                    onPressed: () {
                                      setState(() {
                                        index = index + 1;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "متابعة",
                                        style: textStyleM3,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5,
                                  top: 5,
                                  bottom: 5,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        index = index + 1;
                                      });
                                    },
                                    child: Container(
                                      width: width * 0.2,
                                      height: height*0.06,
                                      child: Icon(
                                        Icons.keyboard_arrow_left,
                                        size: 35,
                                        color: colorM2,
                                      ),
                                      decoration: BoxDecoration(
                                          color: colorM1,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    :
                index == 1
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "معلومات المركبة",
                              style: textStyleM16,
                            ),
                            SizedBox(
                              height: height*0.05,
                            ),
                            Container(
                              height: height*0.06,
                              width: width,
                              child: Material(
                                elevation: 1,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    hintText: "نوع المركبة",
                                    suffixIcon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 30,
                                      color: colorM1,
                                    ),
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
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: height*0.06,
                              width: width,
                              child: Material(
                                elevation: 1,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    hintText: "موديل المركبة",
                                    suffixIcon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 30,
                                      color: colorM1,
                                    ),
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
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: width,
                              height: height * 0.27,
                              child: Row(
                                children: [
                                  Container(
                                    width: width * 0.49,
                                    height: height * 0.27,
                                    child: Container(
                                      height: height * 0.27,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RaisedButton(
                                            elevation: 1,
                                            color: colorM2,
                                            onPressed: () {},
                                            child: Text(
                                              "صورة المركبة من الامام",
                                              style: textStyleA5,
                                            ),
                                          ),
                                          RaisedButton(
                                            elevation: 1,
                                            color: colorM2,
                                            onPressed: () {},
                                            child: Text(
                                              "صورة المركبة من الخلف",
                                              style: textStyleA5,
                                            ),
                                          ),
                                          RaisedButton(
                                            elevation: 1,
                                            color: colorM2,
                                            onPressed: () {},
                                            child: Text(
                                              "صورة من داخل المركبة",
                                              style: textStyleA5,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Material(
                                    elevation: 1,
                                    child: Container(
                                      width: width * 0.34,
                                      height: height * 0.25,
                                      color: colorM2,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "عدد الركاب",
                                            style: textStyleA5,
                                          ),
                                          SizedBox(
                                            height: height*0.04,
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection:
                                                Axis.horizontal,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      if (count > 0) {
                                                        setState(() {
                                                          count--;
                                                        });
                                                      }
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets
                                                                  .only(
                                                              bottom: 10),
                                                      child: Icon(
                                                        Icons.remove,
                                                        color: colorA4,
                                                        size: 30,
                                                      ),
                                                    )),
                                                Text(
                                                  "$count",
                                                  style: textStyleM17,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      count++;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets
                                                                .only(
                                                            bottom: 10),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: colorA4,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height*0.06,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        SizedBox(
                                          width: width * 0.4,
                                          height: height*0.07,
                                          child: RaisedButton(
                                            elevation: 1,
                                            color: colorM2,
                                            onPressed: () {
                                              setState(() {
                                                index = index - 1;
                                              });
                                            },
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "الرجوع",
                                                style: textStyleM3,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 3,
                                          top: 3,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                index = index - 1;
                                              });
                                            },
                                            child: Container(
                                              width: width * 0.16,
                                              height: height*0.06,
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 35,
                                                color: colorM2,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: colorM11,
                                                  borderRadius:
                                                      BorderRadius.circular(30)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Stack(
                                      children: [
                                        SizedBox(
                                          width: width * 0.4,
                                          height: height*0.07,
                                          child: RaisedButton(
                                            elevation: 1,
                                            color: colorM2,
                                            onPressed: () {
                                              setState(() {
                                                index = index + 1;
                                              });
                                            },
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                "متابعة",
                                                style: textStyleM3,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 3,
                                          top: 3,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                index = index + 1;
                                              });
                                            },
                                            child: Container(
                                              width: width * 0.16,
                                              height: height*0.06,
                                              child: Icon(
                                                Icons.keyboard_arrow_left,
                                                size: 35,
                                                color: colorM2,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: colorM1,
                                                  borderRadius:
                                                      BorderRadius.circular(30)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      )
                    :
                 Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "الوثائق",
                              style: textStyleM16,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: width,
                              height: height * 0.5,
                              child: GridView.count(
                                primary: false,
                                padding: const EdgeInsets.all(10),
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 2,
                                children: <Widget>[
                                  Card(
                                    elevation: 1,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "صورة شخصية",
                                            style: textStyleM22,
                                          ),
                                          Image.asset(
                                            "assets/images/profi.png",
                                            width: width*0.18,
                                            height: height*0.12,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    elevation: 1,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "صورة رخصة القيادة",
                                            style: textStyleM22,
                                          ),
                                          Image.asset(
                                            "assets/images/driver2.png",
                                            width: width*0.18,
                                            height: height*0.12,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    elevation: 1,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "صورة استمارة المركبة",
                                            style: textStyleM22,
                                          ),
                                          Image.asset(
                                            "assets/images/c321.png",
                                            width: width*0.18,
                                            height: height*0.12,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    elevation: 1,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "سعر الاشتراك",
                                            style: textStyleM22,
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "200",
                                                  style: textStyleM18,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "ريال",
                                                  style: textStyleM19,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        SizedBox(
                                          width: width * 0.4,
                                          height: height*0.07,
                                          child: RaisedButton(
                                            elevation: 1,
                                            color: colorM2,
                                            onPressed: () {
                                              setState(() {
                                                index = index - 1;
                                              });
                                            },
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "الرجوع",
                                                style: textStyleM3,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 3,
                                          top: 3,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                index = index - 1;
                                              });
                                            },
                                            child: Container(
                                              width: width * 0.16,
                                              height: height*0.06,
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 35,
                                                color: colorM2,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: colorM11,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Stack(
                                      children: [
                                        SizedBox(
                                          width: width * 0.4,
                                          height: height*0.07,
                                          child: RaisedButton(
                                            elevation: 1,
                                            color: colorM2,
                                            onPressed: () {
                                              setState(() {
                                                Navigator.of(context).pushNamed(
                                                    SMSOTPScreen.routeName,
                                                    arguments: 2);
                                              });
                                            },
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                "متابعة",
                                                style: textStyleM3,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 3,
                                          top: 3,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                Navigator.of(context).pushNamed(
                                                    SMSOTPScreen.routeName,
                                                    arguments: 2);
                                              });
                                            },
                                            child: Container(
                                              width: width * 0.16,
                                              height: height*0.06,
                                              child: Icon(
                                                Icons.keyboard_arrow_left,
                                                size: 35,
                                                color: colorM2,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: colorM1,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
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

// Container(
// width: width*0.8,
// color: Colors.transparent,
// child: Material(
// elevation: 0,
// color: colorM1,
// child: Theme(
// data: ThemeData(canvasColor: colorM1,),
// child: Stepper(
// type: StepperType.horizontal,
// steps: [
// Step(
// title: Text(""),
// content: Text(""),
// ),
// Step(
// title: Text(""),
// content: Text(""),
// ),
// Step(
// title: Text(""),
// content: Text(""),
// ),
// ],
// currentStep: _index,
// onStepTapped: (index) {
// setState(() {
// _index = index;
// });
// },
// onStepCancel: () {
// print("You are clicking the cancel button.");
// },
// onStepContinue: () {
// print("You are clicking the continue button.");
// },
// controlsBuilder: (BuildContext context,
// {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
// Container(color: Colors.red,),
//
// ),
// ),
// ),
// )
