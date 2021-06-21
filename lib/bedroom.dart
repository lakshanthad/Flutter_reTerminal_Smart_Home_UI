import 'package:flutter/material.dart';
import './main.dart';

/// This is the main application widget.
class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'BEDROOM',
          ),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: AppBody(),
        // ),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'LIGHT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.lightbulb_outlined,
                    color: Colors.white,
                    size: 90,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text('ON'),
                    onPressed: () {
                      print('ON');
                      // ledState(true/false,GPIO_number);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange[700],
                        padding:
                            EdgeInsets.symmetric(horizontal: 33, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal)),
                  ),
                  ElevatedButton(
                    child: Text('OFF'),
                    onPressed: () {
                      print('OFF');
                      // ledState(true/false,GPIO_number);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange[300],
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal)),
                  ),
                ],
              ),
              const SizedBox(width: 80),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'TV',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.tv_outlined,
                    color: Colors.white,
                    size: 90,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text('ON'),
                    onPressed: () {
                      print('ON');
                      // ledState(true/false,GPIO_number);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange[700],
                        padding:
                            EdgeInsets.symmetric(horizontal: 33, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal)),
                  ),

                  // const SizedBox(width: 40),
                  ElevatedButton(
                    child: Text('OFF'),
                    onPressed: () {
                      print('OFF');
                      // ledState(true/false,GPIO_number);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange[300],
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal)),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'AC',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.white,
                    size: 90,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text('ON'),
                    onPressed: () {
                      print('ON');
                      // ledState(true/false,GPIO_number);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange[700],
                        padding:
                            EdgeInsets.symmetric(horizontal: 33, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal)),
                  ),

                  // const SizedBox(width: 40),
                  ElevatedButton(
                    child: Text('OFF'),
                    onPressed: () {
                      print('OFF');
                      // ledState(true/false,GPIO_number);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange[300],
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal)),
                  ),

                  // const SizedBox(width: 40),
                ],
              ),
              const SizedBox(width: 80),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'RADIO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.radio_outlined,
                    color: Colors.white,
                    size: 90,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text('ON'),
                    onPressed: () {
                      print('ON');
                      // ledState(true/false,GPIO_number);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange[700],
                        padding:
                            EdgeInsets.symmetric(horizontal: 33, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal)),
                  ),
                  ElevatedButton(
                    child: Text('OFF'),
                    onPressed: () {
                      print('OFF');
                      // ledState(true/false,GPIO_number);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange[300],
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
