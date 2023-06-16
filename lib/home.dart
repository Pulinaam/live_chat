import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCDB8F9),
      body: CustomPaint(
        painter: MyShape(),
        child: Container(
          
          margin: EdgeInsets.all(100.0),
          decoration: BoxDecoration(
             shape: BoxShape.circle,
             gradient: new LinearGradient(

                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                   colors: [
                    Color(0xFFBD9D9D9).withOpacity(0.9),
                    Color(0xFFBD9D9D9).withOpacity(0.3),
                  ],
            // color: Colors.orange,
            
          ),
        )
          
        ),
      )
      );
      
    
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
    //paint1.color = Colors.red;
    paint1.style = PaintingStyle.fill;
    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
