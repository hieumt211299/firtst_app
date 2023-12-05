import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key, required this.size, required this.avatar});

  final String avatar;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      avatar,
      width: size,
      height: size,
      fit: BoxFit.fill,
    );
  }
}
