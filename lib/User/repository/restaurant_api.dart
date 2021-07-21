import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

class RestaurantApi{


  Future<http.Response> getRestaurants() async{
    var  headers = {
      "X-RapidAPI-Key": "bedb9bd7d7mshef61c9d6a374289p111d73jsn93ec5ec00873",
    "X-RapidAPI-Host": "resy.p.rapidapi.com",
    };

    var queryParameters = {
      'id': '13347'
    };

    var uri =Uri.https('resy.p.rapidapi.com','/3/venue', queryParameters);
    print(uri);

    final response = await  http.get(uri,headers: headers);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
      return jsonResponse;
    }

    return response;

  }
  
}