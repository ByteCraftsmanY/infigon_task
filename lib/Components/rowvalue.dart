import 'package:flutter/material.dart';
import 'package:infigon_task/Constant.dart';

class RowData extends StatelessWidget {
  final String label;
  final String value;

  const RowData({Key key, @required this.label, @required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          text: '$label : ',
          style: TextStyle(
            color: kFontColors,
            fontWeight: FontWeight.w900,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '$value',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
