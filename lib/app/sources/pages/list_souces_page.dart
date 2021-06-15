import 'package:flutter/material.dart';

class ListSourcesPage extends StatefulWidget {
  final String title;
  const ListSourcesPage({Key? key, this.title = 'ListSoucesPage'})
      : super(key: key);
  @override
  ListSourcesPageState createState() => ListSourcesPageState();
}

class ListSourcesPageState extends State<ListSourcesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
