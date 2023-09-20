import 'dart:convert';

import 'package:contacts_app2/src/model/record.dart';
import 'package:flutter/services.dart' show rootBundle;

class Recordsrepository{

 Future<List<dynamic>?> getData() async{
    try{
      String rawData = await rootBundle.loadString("assets/data/records.json");
      //decode data and make as a list of map
      List<dynamic> decodeddata = jsonDecode(rawData);
      return decodeddata;
    }catch(ex){
      return null;
    }

  }

}