import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';



class StatusItem extends StatelessWidget {
  final String name;
  final Color color;

  StatusItem({this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Center(child: Text(name,style: textStyleM8,)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
      ),
    );
  }
}
