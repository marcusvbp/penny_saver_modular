import 'package:flutter/material.dart';

class AddFormWidget extends StatelessWidget {
  final String title;
  const AddFormWidget({Key? key, this.title = "AddFormWidget"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(title));
  }
}