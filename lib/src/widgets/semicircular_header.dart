import 'package:flutter/material.dart';

class SemicircularHeader extends StatelessWidget {
  const SemicircularHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(65), bottomRight: Radius.circular(65)),
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}