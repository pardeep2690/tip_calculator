// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _total = 0;
  final _2000Controller = TextEditingController();
  final _500Controller = TextEditingController();
  final _200Controller = TextEditingController();
  final _100Controller = TextEditingController();
  final _50Controller = TextEditingController();
  final _20Controller = TextEditingController();
  final _10Controller = TextEditingController();

  void _refresh() {
    setState(() {
      _total = 0;
      _2000Controller.clear();
      _500Controller.clear();
      _200Controller.clear();
      _100Controller.clear();
      _50Controller.clear();
      _20Controller.clear();
      _10Controller.clear();
    });
  }

  void _updateTotal() {
    setState(() {
      _total = 0;
      if (_2000Controller.text.isNotEmpty) {
        _total += 2000 * int.parse(_2000Controller.text);
      }
      if (_500Controller.text.isNotEmpty) {
        _total += 500 * int.parse(_500Controller.text);
      }
      if (_200Controller.text.isNotEmpty) {
        _total += 200 * int.parse(_200Controller.text);
      }
      if (_100Controller.text.isNotEmpty) {
        _total += 100 * int.parse(_100Controller.text);
      }
      if (_50Controller.text.isNotEmpty) {
        _total += 50 * int.parse(_50Controller.text);
      }
      if (_20Controller.text.isNotEmpty) {
        _total += 20 * int.parse(_20Controller.text);
      }
      if (_10Controller.text.isNotEmpty) {
        _total += 10 * int.parse(_10Controller.text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Bank Note Total',
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('2000 x '),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.next,
                        controller: _2000Controller,
                        onChanged: (value) => _updateTotal(),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Text(
                        '= ${_2000Controller.text.isNotEmpty ? 2000 * int.parse(_2000Controller.text) : 0}'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('500 x '),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.next,
                        controller: _500Controller,
                        onChanged: (value) => _updateTotal(),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Text(
                        '= ${_500Controller.text.isNotEmpty ? 500 * int.parse(_500Controller.text) : 0}'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('200 x '),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.next,
                        controller: _200Controller,
                        onChanged: (value) => _updateTotal(),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Text(
                        '= ${_200Controller.text.isNotEmpty ? 200 * int.parse(_200Controller.text) : 0}'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('100 x '),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.next,
                        controller: _100Controller,
                        onChanged: (value) => _updateTotal(),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Text(
                        '= ${_100Controller.text.isNotEmpty ? 100 * int.parse(_100Controller.text) : 0}'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('50 x '),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.next,
                        controller: _50Controller,
                        onChanged: (value) => _updateTotal(),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Text(
                        '= ${_50Controller.text.isNotEmpty ? 50 * int.parse(_50Controller.text) : 0}'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('20 x '),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.next,
                        controller: _20Controller,
                        onChanged: (value) => _updateTotal(),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Text(
                        '= ${_20Controller.text.isNotEmpty ? 20 * int.parse(_20Controller.text) : 0}'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('10 x '),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.done,
                        controller: _10Controller,
                        onChanged: (value) => _updateTotal(),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Text(
                        '= ${_10Controller.text.isNotEmpty ? 10 * int.parse(_10Controller.text) : 0}'),
                  ],
                ),
                const SizedBox(height: 16),
                Text('Total: $_total'),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _refresh,
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
