import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/currency_converter.dart';

void main() {
  runApp(const MyCupertinoapp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return const MaterialApp(
    home: CurrencyConverter(),
    // body: Center(
    // child: Text('Hello'),
    );
  }
}
class MyCupertinoapp extends StatelessWidget {
  const MyCupertinoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverter(),
    );
  }
}