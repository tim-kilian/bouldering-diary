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
      appBar: AppBar(title: Text('Bouldering diary')),
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext context, int i) {
          return buildRow(i.toString());
        });
  }

  Widget buildRow(String entry) {
    return Card(
      child: ListTile(
        title: Text(
          'Nordwandhalle',
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(entry + ' violet 4 orange 1 blue'),
        trailing: Text(
          '11.01.2020',
          style: TextStyle(fontSize: 11),
        ),
        onTap: () {
          print('cow');
        },
      ),
    );
  }
}
