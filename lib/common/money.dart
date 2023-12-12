import 'package:fitness_ui/utils/svgdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum MoneyWidgetSize { small, medium, large }

class MoneyWidget extends StatefulWidget {
  const MoneyWidget(
      {super.key, required this.money, this.size = MoneyWidgetSize.small});

  final String money;
  final MoneyWidgetSize size;

  @override
  State<MoneyWidget> createState() => _MoneyyWidgetState();
}

class _MoneyyWidgetState extends State<MoneyWidget> {
  late String _money;
  late double _height;
  late double _width;
  late double _fontSize;
  @override
  void initState() {
    _money = widget.money;
    if (widget.size == MoneyWidgetSize.large) {
      _height = 25;
      _width = 16;
      _fontSize = 24;
    } else {
      _height = 13;
      _width = 8;
      _fontSize = 13;
    }
    switch (widget.size) {
      case MoneyWidgetSize.large:
        _height = 25;
        _width = 16;
        _fontSize = 24;
        break;
      case MoneyWidgetSize.small:
        _height = 13;
        _width = 8;
        _fontSize = 13;
        break;
      case MoneyWidgetSize.medium:
        _height = 18;
        _width = 13;
        _fontSize = 18;
        break;
      default:
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(
        SvgData.ethreum,
        height: _height,
        width: _width,
      ),
      const SizedBox(
        width: 3,
      ),
      Text(
        _money.toString(),
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.black,
          fontSize: _fontSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
      ),
    ]);
  }
}
