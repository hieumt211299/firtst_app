import 'package:flutter/material.dart';

class CategoryItemsWidget extends StatelessWidget {
  const CategoryItemsWidget(
      {super.key, required this.title, required this.mainimage});
  final String title;
  final String mainimage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 131,
          height: 152,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(
                mainimage,
              ),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 0.50,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 10,
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
