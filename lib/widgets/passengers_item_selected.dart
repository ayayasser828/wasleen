import 'package:flutter/material.dart';
import 'package:wasleen/constant/constant.dart';

class PassengersItemSelected extends StatefulWidget {
  final String name ;
  final String image ;


  PassengersItemSelected({this.name, this.image});

  @override
  _PassengersItemSelectedState createState() => _PassengersItemSelectedState();
}

class _PassengersItemSelectedState extends State<PassengersItemSelected> {
  bool select = false;
  void selected(){
    setState(() {
      select = !select;
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selected(),
      child: SizedBox(
          width: 136,
          height: 136,
          child: Stack(
            children: [
              Container(
                width: 136,
                height: 134,
                child: Card(
                    elevation: 3,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:Stack(
                      children: [
                        Image.asset(
                          widget.image,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Material(
                            elevation: 10,
                            color: select?colorM1 :colorM2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Container(
                              width: 130,
                              height: 41,
                              child: Center(child: Text(widget.name,style:select?textStyleM13: textStyleM5,)),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              )
            ],
          )
      ),
    );
  }
}
