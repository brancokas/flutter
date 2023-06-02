import 'package:vjezba_1/constants.dart';

class Food {
  Food({
    required this.name,
    required this.foodType,
    required this.startingMonth,
    this.width = 40,
    this.monthOfBeginning = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
    this.monthOfEnd = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  }) {
    imageName = "assets/${foodType.name}/$name.png";
  }

  Food.differentImageName({
    required this.name,
    required imageName,
    required this.foodType,
    required this.startingMonth,
    this.width = 40,
    this.monthOfBeginning = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
    this.monthOfEnd = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  }) {
    this.imageName = "assets/${foodType.name}/$imageName.png";
  }

  final String name;
  final FoodType foodType;
  late String imageName;
  late double width;
  late List<int> monthOfBeginning, monthOfEnd;
  final int startingMonth;
}
