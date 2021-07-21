import 'package:flutter/material.dart';
import 'package:prueba_tyba/User/repository/restaurant_api.dart';

class HomeUser extends StatelessWidget{

  RestaurantApi _restaurantApi = new RestaurantApi();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print(_restaurantApi.getRestaurants());
    return Container(
      child: Column(
        children: <Widget>[
          Text(""),
        ],
      ),

      color: Colors.greenAccent,
    );
  }
  
}