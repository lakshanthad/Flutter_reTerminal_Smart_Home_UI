import 'package:flutter/material.dart';
import 'package:flutter_gpiod/flutter_gpiod.dart';
import './livingRoom.dart';
import './bedroom.dart';
import './kitchen.dart';
import './garden.dart';

void main() {
  runApp(MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'SMART HOME',
            ),
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
          ElevatedButton(
            child: Text('LIVING ROOM'),
            onPressed: () {
              Navigator.of(context).push(
                CustomPageRoute(
                  builder: (context) => MyApp1(),
                ),
              );
              print('LIVING ROOM');
              // ledState(true);
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.orange[700],
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
          ),
          const SizedBox(height: 5),
          ElevatedButton(
            child: Text('KITCHEN'),
            onPressed: () {
              Navigator.of(context).push(
                CustomPageRoute(
                  builder: (context) => MyApp3(),
                ),
              );
              print('KITCHEN');
              // ledState(true);
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.orange[700],
                padding: EdgeInsets.symmetric(horizontal: 51, vertical: 10),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
          ),
          const SizedBox(height: 5),
          ElevatedButton(
            child: Text('BEDROOM'),
            onPressed: () {
              Navigator.of(context).push(
                CustomPageRoute(
                  builder: (context) => MyApp2(),
                ),
              );
              print('BEDROOM');
              // ledState(true);
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.orange[700],
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
          ),
          const SizedBox(height: 5),
          ElevatedButton(
            child: Text('GARDEN'),
            onPressed: () {
              Navigator.of(context).push(
                CustomPageRoute(
                  builder: (context) => MyApp4(),
                ),
              );
              print('GARDEN');
              // ledState(true);
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.orange[700],
                padding: EdgeInsets.symmetric(horizontal: 54, vertical: 10),
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }
}

//widget to turn off page transition animation
class CustomPageRoute extends MaterialPageRoute {
  CustomPageRoute({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}

/// Function for GPIO control
void ledState(state, gpioNum) {
  /// Retrieve the list of GPIO chips.
  final chips = FlutterGpiod.instance.chips;

  /// Retrieve the line with index 'gpioNum assigned in the above function' of the first chip.
  /// This is 'gpioNum assigned in the above function' pin for the Raspberry Pi.
  final chip = chips.singleWhere(
    (chip) => chip.label == 'pinctrl-bcm2711',
    orElse: () => chips.singleWhere((chip) => chip.label == 'pinctrl-bcm2835'),
  );

  final line2 = chip.lines[gpioNum];

  /// Request GPIO as output.
  line2.requestOutput(consumer: "flutter_gpiod test", initialValue: false);
  line2.setValue(state);
  line2.release();
}
