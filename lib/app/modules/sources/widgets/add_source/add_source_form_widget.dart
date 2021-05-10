import 'package:flutter/material.dart';

class AddSourceFormWidget extends StatelessWidget {
  final String title;
  const AddSourceFormWidget({Key? key, this.title = "AddSourceFormWidget"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(title));
  }
}