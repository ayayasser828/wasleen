import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wasleen/constant/constant.dart';
import 'add_raider.dart';
import 'dash_user.dart';

class SMSOTPScreen extends StatelessWidget {
  static const String routeName = "/SMSOTPScreen";

  StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: width,
          height: height,
          color: colorM1,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/mix.png",
                  height: height * 0.25,
                  width: width,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        "قم بادخال رمز التحقق",
                        style: textStyleM1,
                        textAlign: TextAlign.right,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        "يرجى ادخال رمز التحقق المرسل اليك.",
                        style: textStyleM2,
                        textAlign: TextAlign.right,
                      )),
                ),
                SizedBox(
                  height: height * 0.12,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    width: width * 0.7,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Container(
                        width: width * 0.36,
                        child: PinCodeTextField(
                          backgroundColor: Colors.transparent,
                          keyboardType: TextInputType.number,
                          pastedTextStyle: TextStyle(color: Colors.white),
                          appContext: context,
                          length: 4,
                          obscureText: false,
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                            selectedFillColor: Colors.white,
                            shape: PinCodeFieldShape.underline,
                            inactiveColor: Colors.white,
                            activeColor: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: height * 0.05,
                            fieldWidth: width * 0.05,
                            activeFillColor: Colors.white,
                          ),
                          animationDuration: Duration(milliseconds: 300),
                          enableActiveFill: false,
                          errorAnimationController: errorController,
                          controller: textEditingController,
                          onCompleted: (v) {
                            print("Completed");
                          },
                          onTap: () {
                            print("jjjjjjjjj");
                          },
                          onChanged: (value) {
                            print(value);
                            // setState(() {
                            //   ConfNumber.smsCode = value;
                            // });
                          },
                          beforeTextPaste: (text) {
                            print("Allowing to paste $text");
                            return true;
                          },
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: colorM2),
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      print(args);
                      if (args == 2) {
                        Navigator.of(context)
                            .pushNamed(ADDRaiderScreen.routeName);
                      } else {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            DashUserScreen.routeName,
                            (Route<dynamic> route) => false);
                      }
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: width * 0.45,
                          height: height * 0.07,
                          child: RaisedButton(
                            elevation: 2,
                            color: colorM2,
                            onPressed: () {
                              print(args);
                              if (args == 2) {
                                Navigator.of(context)
                                    .pushNamed(ADDRaiderScreen.routeName);
                              } else {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    DashUserScreen.routeName,
                                    (Route<dynamic> route) => false);
                              }
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(left: width * 0.13),
                                child: Text(
                                  "متابعة",
                                  style: textStyleM3,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          top: 3,
                          bottom: 3,
                          child: Container(
                            width: width * 0.2,
                            height: height * 0.04,
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              size: 35,
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
        ),
      ),
    );
  }
}
