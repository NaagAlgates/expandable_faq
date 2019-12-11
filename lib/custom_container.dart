import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              child: Text("Here is my question"),
            ),
            Icon(Icons.arrow_drop_down,size: 20.0,)
          ],
        ),
      )
    );
  }

}