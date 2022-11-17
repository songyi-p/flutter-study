import 'package:flutter/material.dart';
import 'package:flutter_study_practice/bottom_navigation.dart';
import 'package:flutter_study_practice/icon_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        imageSection,
        titleSection,
        iconButtonSection,
        contentSection
      ]),
      bottomNavigationBar: bottomNavigation,
    ));
  }
}


//image
Widget imageSection = Image.asset(
  'assets/images/lake.jpg',
  width: 600,
  height: 200,
  fit: BoxFit.fill,
);


//title
Widget titleSection = Container(
    margin: EdgeInsets.fromLTRB(0, 20, 0, 35),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('Oeschinen Lake Campgrounts',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Container(
              child: Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey[500]),
              ))
        ]),
        Row(children: [Icon(Icons.star, color: Colors.red), Text('41')])
      ],
    )
);


//icon button
Widget iconButtonSection = SizedBox(
  width: 400,
  child:
  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
    IconText(Icons.add_call, 'CALL'),
    IconText(Icons.map, 'ROUTE'),
    IconText(Icons.share, 'SHARE'),
  ]),
);


//content
Widget contentSection = SizedBox(
  width: 370,
  child: Text(
      'Oeschinen Lake (German: Oeschinensee) is a lake in the Bernese Oberland, Switzerland, '
          '4 kilometres (2.5 mi) east of Kandersteg in the Oeschinen valley. At an elevation of 1,578 metres (5,177 ft), '
          'it has a surface area of 1.1147 square kilometres (0.4304 sq mi). Its maximum depth is 56 metres (184 ft).'
          'The lake was created by a giant landslide and is fed through a series of mountain creeks and drains underground.'
  ),
);