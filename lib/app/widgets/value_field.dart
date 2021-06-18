import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ValueField extends StatelessWidget {
  final bool isNegative;
  final TextEditingController? controller;
  final void Function(String value)? onChanged;
  final void Function()? onTap;
  final String? labelText;

  const ValueField({
    Key? key,
    this.isNegative = false,
    this.controller,
    this.onChanged,
    this.onTap,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textActionColor = isNegative ? Colors.red[800] : Colors.green[800];
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        RealInputFormatter(centavos: true),
      ],
      keyboardType: TextInputType.number,
      textAlign: TextAlign.right,
      onTap: onTap,
      style: TextStyle(
        color: textActionColor,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        prefixText: '\$ ',
      ),
    );
  }
}
