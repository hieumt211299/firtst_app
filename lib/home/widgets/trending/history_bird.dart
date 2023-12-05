// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fitness_ui/common/avatar_check.dart';
import 'package:fitness_ui/common/money.dart';
import 'package:fitness_ui/utils/user_model.dart';

// class HistoryOfBird {
//   User user;
//   String time;
//   String moneyBird;
//   HistoryOfBird({
//     required this.user,
//     required this.time,
//     required this.moneyBird,
//   });
// }
// List<HistoryOfBird> HistoryOfBirds=[
//   HistoryOfBird(user: )
// ];

class HistoryBirdWidget extends StatelessWidget {
  const HistoryBirdWidget(
      {super.key, required this.time, required this.money, required this.user});

  final User user;
  final String time;
  final String money;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 28, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AvatarCheckWidget(
                  place: 'top',
                  avatar: user.avatar,
                  size: 56,
                ),
                const SizedBox(
                  width: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.username,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Color(0xFFD2D2D2),
                        fontSize: 13,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
            MoneyWidget(
              money: money,
              size: MoneyWidgetSize.large,
            ),
          ],
        ),
      ),
    );
  }
}
