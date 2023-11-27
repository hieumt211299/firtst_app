import 'package:fitness_ui/utils/colection_model.dart';
import 'package:flutter/material.dart';

class HotColectionItemWidget extends StatelessWidget {
  const HotColectionItemWidget({super.key, required this.colection});
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
                      child: Stack(
                        children: [
                          Image.asset(
                            colection.avatar,
                            width: 60,
                            height: 60,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Container(
                                width: 22,
                                height: 22,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 18,
                                height: 18,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFF007AFF),
                                          shape: OvalBorder(),
                                        ),
                                        child: const Center(
                                            child: Icon(
                                          Icons.check,
                                          size: 11,
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
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
