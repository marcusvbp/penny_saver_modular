import 'package:flutter/material.dart';

class ListContasPage extends StatefulWidget {
  final String title;
  const ListContasPage({Key? key, this.title = 'ListPage'}) : super(key: key);
  @override
  ListContasPageState createState() => ListContasPageState();
}

class ListContasPageState extends State<ListContasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[Text('tela de contas')],
      ),
    );
  }
}
