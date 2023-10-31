import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(seconds: 1), (i) => i),
      builder: (context, snapshot) {
        var now = DateTime.now();
        var formattedTime = "${now.hour
        }:${now.minute}";

        return Text(
          formattedTime,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15,color: Colors.black),
        );
      },
    );
  }
}
