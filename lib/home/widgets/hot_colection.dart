import 'package:fitness_ui/home/widgets/hot_colection_item.dart';
import 'package:fitness_ui/utils/colection_model.dart';
import 'package:flutter/material.dart';

Colection colection1 = Colection(
    image: 'assets/img/hotcolection1.png',
    title: 'The Chair Illumination',
    author: 'Lores Daud',
    avatar: 'assets/img/avatar1.png');
Colection colection2 = Colection(
    image: 'assets/img/hotcolection2.png',
    title: 'Ghost Terminator',
    author: 'Hadson Marcus',
    avatar: 'assets/img/avatar2.png');

class HotColectionWidget extends StatelessWidget {
  const HotColectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hot Collections',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
            height: 0.08,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 184,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              HotColectionItemWidget(
                colection: colection1,
              ),
              const SizedBox(
                width: 11,
              ),
              HotColectionItemWidget(
                colection: colection2,
              ),
              const SizedBox(
                width: 11,
              ),
              HotColectionItemWidget(
                colection: colection1,
              ),
              const SizedBox(
                width: 11,
              ),
              HotColectionItemWidget(
                colection: colection2,
              ),
              const SizedBox(
                width: 11,
              ),
              // HotColectionItemWidget(
              //   colection: colection2,
              // ),
            ],
          ),
        )
      ],
    );
  }
}
