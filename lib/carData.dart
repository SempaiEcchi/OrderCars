import 'dart:core';
import 'cars.dart';
import 'package:flutter/material.dart';

  class CarModels {
  List<Car> auti =[
      Car("DeLorean", "From Back To The Future", "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Delorean_DMC-12_side.jpg/280px-Delorean_DMC-12_side.jpg", 'NO', 4, 'Automatic'),
      Car("Batmobile", "Used by Batman", "https://i.ytimg.com/vi/2T0MRC4PUTY/maxresdefault.jpg", 'NO', 2, 'Automatic'),
      Car("Mystery Machine", "Used by some stoners", "https://cdn.dealeraccelerate.com/ideal/1/357/2202/1920x1440/1972-z-movie-car-scooby-doo-mystery-machine", 'NO', 6, 'Manual'),
  ];
  List<Car> listOfCars(){
    return auti;
  }
}
