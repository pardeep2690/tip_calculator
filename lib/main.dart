// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cashier Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CashierCalculator(),
    );
  }
}

class CashierCalculator extends StatefulWidget {
  @override
  _CashierCalculatorState createState() => _CashierCalculatorState();
}

class _CashierCalculatorState extends State<CashierCalculator> {
  // ignore: non_constant_identifier_names
  int _2000notes = 0;
  int _500notes = 0;
  int _200notes = 0;
  int _100notes = 0;
  int _50notes = 0;
  int _20notes = 0;
  int _10notes = 0;
  int _5notes = 0;
  int _2notes = 0;
  int _1notes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Cashier Calculator'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Enter the number of notes'),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _2000notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '2000'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _500notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '500'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _200notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '200'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _100notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '100'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _50notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '50'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _20notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '20'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _10notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '10'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _5notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '5'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _2notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '2'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _1notes = int.parse(value);
                });
              },
              decoration: const InputDecoration(labelText: '1'),
            ),
            const Text('Total Amount'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('2000 : '),
                Text('${_2000notes * 2000}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('500 : '),
                Text('${_500notes * 500}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('200 : '),
                Text('${_200notes * 200}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('100 : '),
                Text('${_100notes * 100}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('50 : '),
                Text('${_50notes * 50}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('20 : '),
                Text('${_20notes * 20}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('10 : '),
                Text('${_10notes * 10}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('5 : '),
                Text('${_5notes * 5}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('2 : '),
                Text('${_2notes * 2}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('1 : '),
                Text('${_1notes * 1}'),
              ],
            ),
            const Text('Total Amount : '),
            Text(
                '${_2000notes * 2000 + _500notes * 500 + _200notes * 200 + _100notes * 100 + _50notes * 50 + _20notes * 20 + _10notes * 10 + _5notes * 5 + _2notes * 2 + _1notes * 1}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _2000notes = 0;
            _500notes = 0;
            _200notes = 0;
            _100notes = 0;
            _50notes = 0;
            _20notes = 0;
            _10notes = 0;
            _5notes = 0;
            _2notes = 0;
            _1notes = 0;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
