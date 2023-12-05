import 'package:fitness_ui/common/avatar.dart';
import 'package:fitness_ui/common/check_noti.dart';
import 'package:flutter/material.dart';

class AvatarCheckWidget extends StatelessWidget {
  const AvatarCheckWidget(
      {super.key, this.size = 44, required this.place, required this.avatar});
  final String avatar;
  final double size;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AvatarWidget(avatar: avatar, size: size),
      Positioned(
        top: place == 'top' ? 0 : null,
        bottom: place == 'bottom' ? 0 : null,
        right: 0,
        child: CheckNotiWidget(
          size: size / 3,
        ),
      )
    ]);
  }
}
