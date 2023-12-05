// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fitness_ui/common/avatar_check.dart';
import 'package:fitness_ui/common/money.dart';
import 'package:fitness_ui/home/widgets/trending/trending_nft_detail.dart';
import 'package:fitness_ui/utils/svgdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fitness_ui/utils/user_model.dart';

class NFTDetailWidget extends StatelessWidget {
  final User user;
  final String title;
  final String mainimage;

  const NFTDetailWidget({
    Key? key,
    required this.user,
    required this.title,
    required this.mainimage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TrendingNFTDetailWidget(
                    user: user,
                    title: title,
                    image: mainimage,
                  )),
        );
      },
      child: Container(
        width: 248,
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
            children: [
              Stack(
                children: [
                  const SizedBox(
                    width: 233,
                    height: 280,
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          mainimage,
                          width: 233,
                          height: 242,
                          fit: BoxFit.fill,
                        ),
                      )),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      width: 76,
                      height: 76,
                      padding: const EdgeInsets.all(26.21),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(0.13, -0.99),
                          end: Alignment(-0.13, 0.99),
                          colors: [Color(0xFFFF56BB), Color(0xFFFF8F76)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(262.07),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: SvgPicture.asset(
                            SvgData.wallet,
                            width: 23,
                            height: 23,
                          ))
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        AvatarCheckWidget(
                          avatar: user.avatar,
                          size: 34,
                          place: 'top',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text(
                            user.username,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Current Bid',
                          style: TextStyle(
                            color: Color(0xFFD2D2D2),
                            fontSize: 10.38,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        MoneyWidget(money: user.money)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
