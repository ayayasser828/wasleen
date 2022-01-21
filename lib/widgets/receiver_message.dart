import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';

class ReceiverMessage extends StatelessWidget {
  final String text;
  ReceiverMessage({this.text});


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        alignment: Alignment.centerLeft,
        // width: width,
        // height: height*0.1,
        child: Container( /// message
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)),
            child: Container(
              color: colorA9,
              // margin: const EdgeInsets.only(left: 10.0),
              child: Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Text(
                    text,
                    style: textStyleM13,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
