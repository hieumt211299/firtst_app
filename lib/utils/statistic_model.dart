import 'package:fitness_ui/home/widgets/profile/profile.dart';
import 'package:fitness_ui/utils/user_model.dart';

class Ranngking {
  final List<RankingDetail> detailList;
  final User user;

  Ranngking({required this.detailList, required this.user});
}

class RankingDetail {
  final String title;
  final String content;
  final TypeInfo type;

  RankingDetail(
      {required this.title, required this.content, required this.type});
}
