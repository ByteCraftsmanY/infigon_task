import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:infigon_task/Constant.dart';

class CardHeading extends StatelessWidget {
  final String label;
  final Function fun;
  final Widget leading;

  const CardHeading({Key key, this.label, this.fun, this.leading})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading == null
            ? SizedBox(
                width: 30,
              )
            : leading,
        SizedBox(
          width: 10,
        ),
        Text(
          label,
          style: TextStyle(
            color: kFontColors,
            fontSize: 20,
          ),
        ),
        Spacer(),
        Container(
          height: 20,
          width: 15,
          decoration: BoxDecoration(
            color: kFontColors,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: FittedBox(
            child: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: fun),
          ),
        ),
      ],
    );
  }
}
