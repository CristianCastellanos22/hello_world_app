import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$counter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text( (counter == 0 || counter > 1) ? 'Clicks' : 'Click', style: const TextStyle(fontSize: 25)),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter ++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
