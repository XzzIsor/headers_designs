import 'package:flutter/material.dart';
import 'package:headers_designs/src/widgets/headers.dart';



class HeadersScreen extends StatelessWidget {
  const HeadersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WeavesGradientHeader()
    );
  }
}
