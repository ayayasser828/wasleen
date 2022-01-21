import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/models/current_subscriptions.dart';
import 'package:wasleen/screens/select_driver.dart';




class SearchResultsItem extends StatelessWidget {
  final CurrentSubscriptions _currentSubscriptions;

  SearchResultsItem(this._currentSubscriptions);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SelectDriverScreen.routeName,arguments: _currentSubscriptions );
      },
      child: Card(
        elevation: 2,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
        ),
        child: Container(
          width: width ,
          height: height*0.21,
          color: colorM2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/driver.png",width: width*0.3,height: height*0.21,fit: BoxFit.cover,),
              SizedBox(width: width*0.03,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height*0.01,),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        _currentSubscriptions.name,
                        style: textStyleM9,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RatingBar(
                          ignoreGestures: true,
                          initialRating: _currentSubscriptions.rate,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => FaIcon(
                            FontAwesomeIcons.solidStar,
                            color: colorM1,
                          ),
                          itemSize: width*0.045,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${_currentSubscriptions.numberOfRate}",
                          style: textStyleM10,
                        ),
                        Text(
                          "تقيم",
                          style: textStyleM10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height*0.01,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${_currentSubscriptions.price}",
                          style: textStyleM5,
                        ),
                        SizedBox(
                          width: width*0.01,
                        ),
                        Text(
                          "ريال / شهريا",
                          style: textStyleM5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.6,
                    height: 25,
                    child: ListView.builder(
                      itemCount: _currentSubscriptions.type.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext contex,index){
                      return Container(
                        child: Card(
                          elevation: 1,
                          child: Container(
                            height: height*0.05,
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Center(child: Text(_currentSubscriptions.type[index],style: TextStyle(
                              fontSize: 14,
                              color: colorM2,
                            ),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorM1,
                            ),
                          ),
                        ),
                      );
                    }) ,
                  )

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
