import 'package:flutter/material.dart';
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
      // appBar: AppBar(
      //   title: Text('공강 찾기'),
      //   leading: Icon(Icons.access_alarm_sharp),
      //   actions: [Container(
      //     padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      //       child: Icon(Icons.menu))],
      //   backgroundColor: Colors.deepPurpleAccent,
      //   centerTitle: false,
      // ),
      // body: Align(
      //   alignment: Alignment.centerLeft,
      //   child: Container(
      //     width: double.infinity, height: 475,
      //     margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      //     decoration: BoxDecoration(
      //         color: Colors.deepPurpleAccent,
      //         border: Border.all(color : Colors.black12, width: 2)),
      //     child: Column(children: [Container(
      //       width: 400, height: 400,
      //       margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      //       decoration: BoxDecoration(
      //           border : Border.all(color: Colors.white, width: 3))
      //     )])
      //   ),
      // ),
      body: Column(children: [
        Image.asset(
          'assets/images/lake.jpg',
          width: 600,
          height: 200,
          fit: BoxFit.fill,
        ),
        Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text('Oeschinen Lake Campgrounts',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600))),
                  Container(child: Text('Kandersteg, Switzerland'))
                ]),
                Row(children: [Icon(Icons.star, color: Colors.red), Text('41')])
              ],
            )),
        SizedBox(
          width: 400,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Icontext(Icons.add_call, 'CALL'),
            Icontext(Icons.map, 'ROUTE'),
            Icontext(Icons.share, 'SHARE'),
          ]),
        ),
        SizedBox(
          width: 370,
          child: Text(
              'Oeschinen Lake (German: Oeschinensee) is a lake in the Bernese Oberland, Switzerland, '
              '4 kilometres (2.5 mi) east of Kandersteg in the Oeschinen valley. At an elevation of 1,578 metres (5,177 ft), '
              'it has a surface area of 1.1147 square kilometres (0.4304 sq mi). Its maximum depth is 56 metres (184 ft).'
              'The lake was created by a giant landslide and is fed through a series of mountain creeks and drains underground.'),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
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
      )),
    ));
  }
}
