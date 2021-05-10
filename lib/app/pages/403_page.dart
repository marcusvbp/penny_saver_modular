import 'package:flutter/material.dart';

class NotFoundPage extends StatefulWidget {
  final String title;
  const NotFoundPage({Key? key, this.title = 'NotFoundPage'}) : super(key: key);
  @override
  NotFoundPageState createState() => NotFoundPageState();
}

class NotFoundPageState extends State<NotFoundPage> {
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
