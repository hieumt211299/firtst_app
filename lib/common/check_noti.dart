// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CheckNotiWidget extends StatelessWidget {
  const CheckNotiWidget({
    Key? key,
    this.size = 17,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        width: size + 4,
        height: size + 4,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: size,
        height: size,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: size,
                height: size,
                decoration: const ShapeDecoration(
                  color: Color(0xFF007AFF),
                  shape: OvalBorder(),
                ),
                child: Center(
                    child: Icon(
                  Icons.check_rounded,
                  size: size - 4,
                  color: Colors.white,
                )),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
