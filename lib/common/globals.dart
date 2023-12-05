import 'package:fitness_ui/utils/imagedata.dart';
import 'package:fitness_ui/utils/item_model.dart';
import 'package:fitness_ui/utils/user_model.dart';
import 'package:flutter/material.dart';

class IGlobals {
  static User user1 = User(
    username: 'Perperzon',
    avatar: ImageData.avatar1, // Example path, adjust it accordingly
    money: '3.421',
  );
  static User user2 = User(
    username: 'Richard',
    avatar: ImageData.avatar2, // Example path, adjust it accordingly
    money: '5,412',
  );

  static Item item1 = Item(
      mainImage: ImageData.item1,
      author: 'Perperzon',
      title: 'The Illumination',
      money: '16,4',
      lover: '200');
  static Item item2 = Item(
      mainImage: ImageData.item2,
      author: 'Jacob Jones',
      title: 'Lavern Laboy',
      money: '26,4',
      lover: '810');
  static Item item3 = Item(
      mainImage: ImageData.item3,
      author: 'Lemon balm',
      title: 'The Illumination',
      money: '36,4',
      lover: '250');
  static Item item4 = Item(
      mainImage: ImageData.item4,
      author: 'Geoffrey Mott',
      title: 'Lavern Laboy',
      money: '46,4',
      lover: '400');

  // static double spaceLeft = 23;
  static const EdgeInsets spaceLeft = EdgeInsets.only(left: 25);
}
