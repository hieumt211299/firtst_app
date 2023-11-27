import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 25, 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            'Balance',
            style: TextStyle(
              color: Colors.black,
              fontSize: 9.96,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/vector.svg'),
                    SvgPicture.asset(
                      'assets/svg/vector2.svg',
                    ),
                  ],
                ),
                const SizedBox(width: 6.57),
                const Text(
                  'NFT DISTRO',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.16,
                    fontFamily: 'Simplified Arabic',
                    fontWeight: FontWeight.w700,
                    height: 0.09,
                    letterSpacing: 1.91,
                  ),
                )
              ],
            ),
            Row(children: [
              SvgPicture.asset('assets/svg/ethreum.svg'),
              const Text(
                '3.421 ',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.63,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )
            ]),
          ]),
        ],
      ),
    );
  }
}
