import 'package:contacts_app2/src/controller/recordscontroller.dart';
import 'package:contacts_app2/src/views/widgets/Contact_List_item.dart';
import 'package:flutter/material.dart';

import '../../model/record.dart';

class Contact_pages extends StatefulWidget {
  const Contact_pages({Key? key}) : super(key: key);

  @override
  State<Contact_pages> createState() => _Contact_pagesState();
}

class _Contact_pagesState extends State<Contact_pages> {
  List<Records> records = [ ];

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData(){
    RecordsController controller = RecordsController();
    controller.getData().then((value) {
      setState(() {
        records = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: records.length,
          itemBuilder: (BuildContext context, int index) {
            return Contact_list(records: records[index]);
          },

        ),
      ),
    );
  }
}
