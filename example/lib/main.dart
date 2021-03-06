import 'package:flutter/material.dart';
import 'package:sticky_float_button/sticky_float_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sticky Float Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StickyFloatExample(),
    );
  }
}

class StickyFloatExample extends StatefulWidget {
  const StickyFloatExample({Key? key}) : super(key: key);

  @override
  _StickyFloatExampleState createState() => _StickyFloatExampleState();
}

class _StickyFloatExampleState extends State<StickyFloatExample> {
  AppBar _appBar() {
    return AppBar(
      title: const Text("Sticky Float Example"),
    );
  }

  Widget _body() {
    return Center(
      child: GestureDetector(onTap: () {}, child: const Text("Sticky")),
    );
  }

  Widget _floatButton() {
    return const CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: StickyBuilder(
        stickyButton: _floatButton(),
        child: _body(),
      ),
    );
  }
}
