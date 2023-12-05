import 'package:fitness_ui/common/avatar_check.dart';
import 'package:fitness_ui/utils/colection_model.dart';
import 'package:flutter/material.dart';

class ColectionItemWidget extends StatelessWidget {
  const ColectionItemWidget({super.key, required this.colection});
  final Colection colection;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      width: 199,
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Stack(
                  children: [
                    SizedBox(
                      width: 190,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          colection.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: AvatarCheckWidget(
                          avatar: colection.avatar,
                          size: 66,
                          place: 'top',
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  Text(
                    colection.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'by',
                          style: TextStyle(
                            color: Color(0xFFD2D2D2),
                            fontSize: 9.96,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextSpan(
                          text: ' ${colection.author}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 9.96,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
