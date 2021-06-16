import 'package:flutter/material.dart';

class ChipTile extends StatelessWidget {
  final Color color;
  final String? label;
  final String value;
  const ChipTile({
    Key? key,
    this.color = const Color(0xffcccccc),
    this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color labelBgColor = color;

    Color _textColorForBackground(Color backgroundColor) {
      if (ThemeData.estimateBrightnessForColor(backgroundColor) ==
          Brightness.dark) {
        return Colors.white;
      }

      return Colors.black;
    }

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            if (label != null)
              WidgetSpan(
                child: Container(
                  color: labelBgColor,
                  child: Padding(
                    padding: const EdgeInsets.all(3)
                        .add(const EdgeInsets.only(left: 3)),
                    child: Text(
                      '$label',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: _textColorForBackground(labelBgColor)),
                    ),
                  ),
                ),
              ),
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.all(3)
                    .add(const EdgeInsets.only(right: 3)),
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 12,
                    color: _textColorForBackground(color),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
