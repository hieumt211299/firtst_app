import 'package:fitness_ui/home/widgets/hot_colection_item.dart';
import 'package:fitness_ui/utils/colection_model.dart';
import 'package:fitness_ui/utils/imagedata.dart';
import 'package:flutter/material.dart';

Colection colection1 = Colection(
    image: ImageData.hotcolection1,
    title: 'The Chair Illumination',
    author: 'Lores Daud',
    avatar: ImageData.avatar1);
Colection colection2 = Colection(
    image: ImageData.hotcolection2,
    title: 'Ghost Terminator',
    author: 'Hadson Marcus',
    avatar: ImageData.avatar2);

class ColectionWidget extends StatelessWidget {
  const ColectionWidget({super.key, this.title = 'Colections'});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
            ),
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
              const SizedBox(
                width: 25,
              ),
              ColectionItemWidget(
                colection: colection1,
              ),
              const SizedBox(
                width: 11,
              ),
              ColectionItemWidget(
                colection: colection2,
              ),
              const SizedBox(
                width: 11,
              ),
              ColectionItemWidget(
                colection: colection1,
              ),
              const SizedBox(
                width: 11,
              ),
              ColectionItemWidget(
                colection: colection2,
              ),
              const SizedBox(
                width: 11,
              ),
              // ColectionItemWidget(
              //   colection: colection2,
              // ),
            ],
          ),
        )
      ],
    );
  }
}
