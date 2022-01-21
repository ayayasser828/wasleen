import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';

class PassengersItem extends StatelessWidget {
  final String name ;
  final String image ;


  PassengersItem({this.name, this.image});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
        width: width*0.35,
        height: height*0.22,
        child: Stack(
          children: [
            Container(
              width: width*0.35,
              height: height*0.22,
              child: Card(
                elevation: 2,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child:Stack(
                  children: [
                    Image.asset(
                      image,
                      fit: BoxFit.fill,
                      width: width*0.35,
                      height: height*0.16,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Material(
                        elevation: 2,
                        color: colorM2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
                        child: Container(
                          width: width*0.35,
                          height: height*0.05,
                          child: Center(child: Text(name,style: textStyleM5,)),
                        ),
                      ),
                    )
                  ],
                )
              ),
            )
          ],
        )
        );
  }
}
