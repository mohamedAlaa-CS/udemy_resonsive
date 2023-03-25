import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class counterScrean extends StatefulWidget {
  @override
  State<counterScrean> createState() => _counterScreanState();
}

class _counterScreanState extends State<counterScrean> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              counter--;
              print(counter);
            },
            child: Text('MINUS'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              counter++;
              print(counter);
            },
            child: Text('PUNUS'),
          ),
        ],
      )),
    );
  }
}
