import 'package:flutter/material.dart';
import 'package:headers_designs/src/screens/headers_screen.dart';
import 'package:headers_designs/src/widgets/headers.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Headers',
      home: HeadersScreen(),
    );
  }
}