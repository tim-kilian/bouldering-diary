import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntryList extends StatefulWidget {

  @override
  EntryListState createState() => EntryListState();

}

class EntryListState extends State<EntryList> {

  final List<String> entries = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Bouldering diary')
      ),
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext context, int i) {
          if (i.isOdd) {
            return Divider();
          }
          final int index = i ~/ 2;

          if (index >= entries.length) {

          }

          return buildRow(i.toString());
        }
    );
  }

  Widget buildRow(String entry) {
    return ListTile(
      title: Text(
          entry,
          style: TextStyle(fontSize: 18),
      ),
    );
  }

}