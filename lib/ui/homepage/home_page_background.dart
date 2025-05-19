import 'package:flutter/material.dart';

class HomePageBackground extends StatelessWidget {
  final double screenHeight;

  const HomePageBackground({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        height: screenHeight * 0.5,
        color: themeData.primaryColor,
      ),
    );
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final curveStartPoint = Offset(0, size.height * 0.85);
    final curveEndPoint = Offset(size.width, size.height * 0.85);

    path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      curveEndPoint.dx,
      curveEndPoint.dy,
    );
    path.lineTo(size.width, 0);
    path.close(); // Tambahan opsional untuk menutup path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
