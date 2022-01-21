import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';

class SenderMessage extends StatelessWidget {
  final String text;
  SenderMessage({this.text});


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        alignment: Alignment.centerRight,
        // width: width,
        // height: height*0.1,
        child: Container( /// message
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)),
            child: Container(
              color: colorA8,
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
