import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Volume Up Down';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

double _volume = 0.0;

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  void _increaseVolume() {
    setState(() {
      _volume += 1;
    });
  }

  void _decreaseVolume() {
    setState(() {
      _volume -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Volume : $_volume'),
        const SizedBox(height: 10,),
        IconButton(
            onPressed: () {
              _increaseVolume();
            },
            icon: const Icon(Icons.volume_up)),
        IconButton(
            onPressed: () {
              _decreaseVolume();
            },
            icon: const Icon(Icons.volume_down))
      ],
    );
  }
}