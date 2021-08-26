import 'package:flutter/material.dart';

class WeavesGradientHeader extends StatelessWidget {
  const WeavesGradientHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _WeavesGradientHeaderPainter(),
        ));
  }
}

class _WeavesGradientHeaderPainter extends CustomPainter {
  final Rect rect = Rect.fromCircle(
    center: Offset(350, 150), 
    radius: 180
  );

  final Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
    Colors.deepPurpleAccent,
    Colors.blueAccent,
    Colors.lightBlueAccent
    ],
    stops: [
      0.0,
      0.3,
      0.8
    ]
  
  );

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..shader = gradient.createShader(rect);

    paint.color = Colors.deepPurpleAccent;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 8;

    final path = Path();

    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.45,
        size.width * 0.5, size.height * 0.35);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.25, size.width, size.height * 0.35);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
