import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  final String title;
  const ListPage({Key? key, this.title = 'ListPage'}) : super(key: key);
  @override
  ListPageState createState() => ListPageState();
}
class ListPageState extends State<ListPage> {
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