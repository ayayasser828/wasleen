import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasleen/screens/driver_tracking_screen.dart';

class CurrentSubscriptionsItem extends StatelessWidget {
  final String name;
  final double rate;
  final int numberOfRate;
  final int price;
  final Color color;

  CurrentSubscriptionsItem(
      {this.name, this.rate, this.numberOfRate, this.price, this.color});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right:5.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(DriverTrackingScreen.routeName);
        },
        child: Stack(
          children: [
            Container(
              height: height*0.165,
              width: width*0.55,
              padding: EdgeInsets.only(top: 5),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            name,
                            style: textStyleM9,
                          )),
                      SizedBox(
                        height: height*0.01,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RatingBar(
                              initialRating: rate,
                              ignoreGestures: true,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => FaIcon(
                                FontAwesomeIcons.solidStar,
                                color: colorM1,
                              ),
                              itemSize: height*0.034,
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${numberOfRate}",
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
                              "${price}",
                              style: textStyleM5,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "ريال / شهريا",
                              style: textStyleM5,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color,
                ),
                width: 10,
                height: height*0.165,
              ),
            )
          ],
        ),
      ),
    );
  }
}
