import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomNavigation = BottomAppBar(
    child: SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.contact_page)
        ],
      ),
    )
);