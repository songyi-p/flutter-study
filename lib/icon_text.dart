import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container IconText(IconData iconName, String text){
  return Container(
        child: Column(children: [
          Icon(iconName, color: Colors.lightBlue),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(text,
                  style: TextStyle(color: Colors.lightBlue)
              )
          )
        ])
  );
  }