import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/card_model.dart';

class GetCard{

  static List<GameCard> _allCards = [];
  
  

  static Future<List<GameCard>> getAllCards() async{

    final String response =
        await rootBundle.loadString('lib/game3/assets/imgInfo.json');


    _allCards = (await json.decode(response) as List<dynamic>).map((json){
      return GameCard.fromMap(json);
    }).toList();
    
    
    return _allCards;

  }



}