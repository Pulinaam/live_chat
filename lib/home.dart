import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCDB8F9),
      body: CustomPaint(
        painter: MyShape(),
        child: Stack(
          children: [
            Positioned(
              left: 40,
              top: 50,
              child: Container(
                height: 150,
                width: 150,
                alignment: FractionalOffset.center,
                transform: new Matrix4.identity()
                  ..rotateZ(35 * 3.1415927 / 180),
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
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
            Positioned(
              left: 300,
              top: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFB8E85A0),
                  onPrimary: Colors.white,

                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  minimumSize: Size(95.0, 50.0), //////// HERE
                ),
                onPressed: () {},
                child: const Text('Skip'),
              ),
            ),
            const Positioned(
              left: 83,
              top: 160,
              child : Text(
                'Looking for fun',
                style: TextStyle(color: Colors.white, fontSize: 37),
              ),
              height: 400,

            ),
            //  Positioned(
            //   left: 83,
            //   top: 165,
            //   child: Image.asset(
            //     'asset/line9.png',
            //     width: 70,
            //     height: 200,
            //   ),
            // ),
            Positioned(
              left: 1,
              top: 260,
              right: 0.1,
              child: Image.asset(
                'asset/zeya.png',
                width: 530,
                height: 600,
              ),
            ),
            Positioned(
              left: 12,
              top: 330,
              right: 10,
              child: Image.asset(
                'asset/girl.png',
                width: 460,
                height: 520,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
   
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
   
    return true;
  }
}
