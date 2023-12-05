import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  const MainButtonWidget(
      {super.key,
      this.prefix,
      this.suffix,
      required this.title,
      this.onPressed,
      this.test = false});
  final Widget? prefix;
  final Widget? suffix;
  final String title;
  final Function()? onPressed;
  final bool test;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.90, -0.43),
          end: Alignment(-0.9, 0.43),
          colors: [Color(0xFFFF56BB), Color(0xFFFF8F76)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: test
              ? const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                )
              : BorderRadius.circular(16),
        ),
      ),
      child: ElevatedButton(
        onPressed: (onPressed),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          minimumSize: const Size(double.infinity, 63),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefix != null) prefix!,
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            if (suffix != null) suffix!,
          ],
        ),
      ),
    );
  }
}
