



 import 'package:flutter/material.dart';

class CurrentSubscriptions{
  final String name;
  final double rate;
  final int numberOfRate;
  final int price;
  final Color color;
  final List<String> type;
  final String serviceType;
  final String deliveryArea;
  final String typeOfVehicle;
  final String vehicleModel;
  final String nodes;
  final int numberOfPassengers;


  CurrentSubscriptions({this.name, this.rate, this.numberOfRate, this.price,this.color,this.type,this.deliveryArea,this.nodes,this.serviceType,this.typeOfVehicle,this.vehicleModel,this.numberOfPassengers});
}