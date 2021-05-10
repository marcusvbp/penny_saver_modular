import 'package:flutter/material.dart';

class ListSoucesPage extends StatefulWidget {
  final String title;
  const ListSoucesPage({Key? key, this.title = 'ListSoucesPage'}) : super(key: key);
  @override
  ListSoucesPageState createState() => ListSoucesPageState();
}
class ListSoucesPageState extends State<ListSoucesPage> {
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