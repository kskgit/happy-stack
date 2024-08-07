import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/login_screen.dart';

void main() async {
  await dotenv.load();
  runApp(const MyApp());
}

// ignore: public_member_api_docs
class MyApp extends StatelessWidget {
  // ignore: public_member_api_docs
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('Bubble Border Example')),
          body: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const ShapeDecoration(
                color: Colors.black,
                shape: BubbleBorder(),
                shadows: [
                  BoxShadow(
                    blurRadius: 1,
                    offset: Offset(10, 10),
                  ),
                ],
              ),
              child:
                  const Text('ふきだしです', style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: public_member_api_docs
class BubbleBorder extends ShapeBorder {
  // ignore: public_member_api_docs
  const BubbleBorder({this.usePadding = true});
  // ignore: public_member_api_docs
  final bool usePadding;

  @override
  EdgeInsetsGeometry get dimensions =>
      EdgeInsets.only(bottom: usePadding ? 16 : 0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) =>
      getOuterPath(rect, textDirection: textDirection);

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final r =
        Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 12));
    return Path()
      ..addRRect(RRect.fromRectAndRadius(r, const Radius.circular(8)))
      ..moveTo(r.bottomCenter.dx - 10, r.bottomCenter.dy)
      ..relativeLineTo(10, 12)
      ..relativeLineTo(10, -12)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawPath(getOuterPath(rect, textDirection: textDirection), paint);
  }

  @override
  ShapeBorder scale(double t) => this;
}
