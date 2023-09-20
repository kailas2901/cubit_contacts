import 'package:contacts_app2/src/model/record.dart';
import 'package:flutter/material.dart';

class Contact_list extends StatelessWidget {
  const Contact_list({Key? key, required this.records}) : super(key: key);

  final Records records;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 40 ,
              backgroundImage: NetworkImage(records.photo),
            ),
            title: Text(records.name),
            subtitle: Text(records.address),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
          )
        ],
      );
  }
}
