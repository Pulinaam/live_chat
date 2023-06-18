import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFBCDB8F9),
        body: CustomPaint(
          painter: MyShape(),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 70, top: 60, bottom: 650, right: 1),
                  child: Container(
                    alignment: FractionalOffset.center,
                    transform: new Matrix4.identity()
                      ..rotateZ(35 * 3.1415927 / 180),
                    //margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFFBD9D9D9).withOpacity(0.7),
                          const Color(0xFFBD9D9D9).withOpacity(0.001),
                        ],
                        // color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 750, left: 100, right: 40),
                child: Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFB8E85A0),
                      onPrimary: Colors.white,

                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      minimumSize: Size(80.0, 50.0), //////// HERE
                    ),
                    onPressed: () {},
                    child: const Text('Skip'),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class MyShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    final path = Path();
    paint.color = const Color(0xFFBAA81F7);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5;
    path.moveTo(0, size.height * 0);
    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.0,
      size.width * 0.3,
      size.height * 0.0,
    );
    path.quadraticBezierTo(
      size.width * 0.45,
      size.height * 0.0,
      size.width * 0.5,
      size.height * 0.0,
    );

    path.quadraticBezierTo(
      size.width * 0.95,
      size.height * 0.78,
      size.width,
      size.height * 0.9,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.8);

    canvas.drawPath(path, paint);
    final paint1 = Paint();
    paint1.color = const Color(0xFFBAA81F7);
    paint1.style = PaintingStyle.fill;
    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
