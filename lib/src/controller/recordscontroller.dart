
import 'dart:convert';

import 'package:contacts_app2/src/model/record.dart';
import 'package:flutter/services.dart' show rootBundle;
class RecordsController{
    Future<List<Records>> getData() async{
      //read data from json file
      String rawData = await rootBundle.loadString("assets/data/records.json");
      //decode data and make as a list of map
      List<dynamic> decodeddata = jsonDecode(rawData);
      //make decoded data to records and iterate items from List
      List<Records> records = decodeddata.map((item) => Records.fromjson(item)).toList();
      return records;
    }

}