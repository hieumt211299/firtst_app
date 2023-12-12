import 'package:fitness_ui/common/avatar_check.dart';
import 'package:fitness_ui/common/money.dart';
import 'package:fitness_ui/home/widgets/profile/profile.dart';
import 'package:fitness_ui/utils/statistic_model.dart';
import 'package:fitness_ui/utils/svgdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatisticDetailWidget extends StatefulWidget {
  final int index;
  final Ranngking ranngking;
  const StatisticDetailWidget(
      {Key? key, required this.ranngking, required this.index})
      : super(key: key);

  @override
  State<StatisticDetailWidget> createState() => StatisticDetailyWidgetState();
}

class StatisticDetailyWidgetState extends State<StatisticDetailWidget> {
  late String _username;
  late String _money;
  late String _avatar;
  late List<RankingDetail> _detailList;

  @override
  void initState() {
    super.initState();
    _username = widget.ranngking.user.username;
    _avatar = widget.ranngking.user.avatar;
    _money = widget.ranngking.user.money;
    _detailList = widget.ranngking.detailList;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.only(bottom: 10),
          decoration: const BoxDecoration(
              border: BorderDirectional(
                  bottom: BorderSide(width: 1, color: Colors.grey))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '#${widget.index + 1}',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    AvatarCheckWidget(
                      place: 'top',
                      avatar: _avatar,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      _username,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(SvgData.ethreum),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 35.62,
                        child: Text(
                          '${double.parse((double.parse(_money) * 100).toStringAsFixed(0)) / 100}',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 13.22,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var item in _detailList)
                  infor(
                    content: item.content,
                    title: item.title,
                    type: item.type,
                  )
              ],
            ),
          )
        ],
      ),
    );
  }

  dynamic infor({
    required String title,
    required String content,
    required TypeInfo type,
  }) {
    late Widget contentWidget;

    switch (type) {
      case TypeInfo.money:
        contentWidget = MoneyWidget(
          money: content,
          size: MoneyWidgetSize.medium,
        );
        break;
      case TypeInfo.percent:
        contentWidget = Text(
          content,
          style: const TextStyle(
            color: Color(0xFF27AE60),
            fontSize: 14,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
          ),
        );
        break;
      case TypeInfo.view:
        contentWidget = Text(
          content,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
          ),
        );
        break;

      default:
        contentWidget = Text(
          content,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
          ),
        );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF828282),
            fontSize: 15,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        contentWidget,
      ],
    );
  }
}
