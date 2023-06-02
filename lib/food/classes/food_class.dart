import 'package:vjezba_1/constants.dart';
import 'package:vjezba_1/food/classes/food.dart';

class FoodClass {
  static final List<Food> _foodList = <Food>[
    Food(name: "ananas", foodType: FoodType.fruit, startingMonth: 8),
    Food(name: "banana", foodType: FoodType.fruit, startingMonth: 5),
    Food(name: "dinja", foodType: FoodType.fruit, startingMonth: 8),
    Food.differentImageName(
        imageName: "grozde",
        name: "grožđe",
        foodType: FoodType.fruit,
        startingMonth: 8),
    Food(name: "jabuka", foodType: FoodType.fruit, startingMonth: 5),
    Food(name: "jagoda", foodType: FoodType.fruit, startingMonth: 8),
    Food(name: "kesten", foodType: FoodType.fruit, startingMonth: 10),
    Food.differentImageName(
        name: "kivi",
        imageName: "kiwi",
        foodType: FoodType.fruit,
        startingMonth: 8),
    Food(name: "kokos", foodType: FoodType.fruit, startingMonth: 10),
    Food.differentImageName(
        imageName: "kruska",
        name: "kruška",
        foodType: FoodType.fruit,
        startingMonth: 5),
    Food(name: "kupina", foodType: FoodType.fruit, startingMonth: 7),
    Food(name: "malina", foodType: FoodType.fruit, startingMonth: 7),
    Food(name: "mango", foodType: FoodType.fruit, startingMonth: 8),
    Food(name: "marelica", foodType: FoodType.fruit, startingMonth: 5),
    Food(name: "nektarina", foodType: FoodType.fruit, startingMonth: 7),
    Food.differentImageName(
        imageName: "orasidi",
        name: "orašasti plodovi",
        foodType: FoodType.fruit,
        startingMonth: 11),
    Food.differentImageName(
        name: "papaja",
        imageName: "papaya",
        foodType: FoodType.fruit,
        startingMonth: 8),
    Food(name: "ribizl", foodType: FoodType.fruit, startingMonth: 7),
    Food.differentImageName(
        imageName: "sipak",
        name: "šipak",
        foodType: FoodType.fruit,
        startingMonth: 7),
    Food(name: "smokva", foodType: FoodType.fruit, startingMonth: 7),
    Food.differentImageName(
        imageName: "brasno",
        name: "brašno",
        foodType: FoodType.cereal,
        startingMonth: 5),
    Food(name: "grah", foodType: FoodType.cereal, startingMonth: 11),
    Food.differentImageName(
        imageName: "jecam",
        name: "ječam",
        foodType: FoodType.cereal,
        startingMonth: 6),
    Food(name: "kruh", foodType: FoodType.cereal, startingMonth: 8),
    Food.differentImageName(
        name: "kukuruza",
        imageName: "kukuruz",
        foodType: FoodType.cereal,
        startingMonth: 5),
    Food(name: "kvinoja", foodType: FoodType.cereal, startingMonth: 7),
    Food.differentImageName(
        imageName: "leca",
        name: "zelena leća",
        foodType: FoodType.cereal,
        startingMonth: 10),
    Food.differentImageName(
        imageName: "leca",
        name: "crvena leća",
        foodType: FoodType.cereal,
        startingMonth: 7),
    Food.differentImageName(
        imageName: "leca",
        name: "smeđa leća",
        foodType: FoodType.cereal,
        startingMonth: 10),
    //Psenica je samo slika za ostale zitarice
    Food.differentImageName(
        imageName: "psenica",
        name: "raž",
        foodType: FoodType.cereal,
        startingMonth: 6),
    Food.differentImageName(
        imageName: "psenica",
        name: "amarant",
        foodType: FoodType.cereal,
        startingMonth: 6),
    Food.differentImageName(
        imageName: "psenica",
        name: "heljda",
        foodType: FoodType.cereal,
        startingMonth: 6),
    Food.differentImageName(
        imageName: "riza",
        name: "riža",
        foodType: FoodType.cereal,
        startingMonth: 5),
    Food(name: "slanutak", foodType: FoodType.cereal, startingMonth: 7),
    Food(name: "soja", foodType: FoodType.cereal, startingMonth: 7),
    Food(name: "tjestenina", foodType: FoodType.cereal, startingMonth: 9),
    Food(name: "tost", foodType: FoodType.cereal, startingMonth: 8),
    Food(name: "zob", foodType: FoodType.cereal, startingMonth: 6),
    Food.differentImageName(
        name: "inćun",
        imageName: "anchovy",
        foodType: FoodType.meat_and_fish,
        startingMonth: 8),
    Food.differentImageName(
        name: "teletina",
        imageName: "calf",
        foodType: FoodType.meat_and_fish,
        startingMonth: 6),
    Food.differentImageName(
        name: "piletina",
        imageName: "chicken",
        foodType: FoodType.meat_and_fish,
        startingMonth: 6),
    Food.differentImageName(
        name: "bakalar",
        imageName: "cod",
        foodType: FoodType.meat_and_fish,
        startingMonth: 8),
    Food.differentImageName(
        name: "govedina",
        imageName: "cow",
        foodType: FoodType.meat_and_fish,
        startingMonth: 9),
    Food.differentImageName(
        name: "patka",
        imageName: "duck",
        foodType: FoodType.meat_and_fish,
        startingMonth: 6),
    Food.differentImageName(
        name: "oslić",
        imageName: "hake",
        foodType: FoodType.meat_and_fish,
        startingMonth: 6),
    Food.differentImageName(
        name: "janjetina",
        imageName: "lamb",
        foodType: FoodType.meat_and_fish,
        startingMonth: 7),
    Food.differentImageName(
        name: "pastrva",
        imageName: "pastrva",
        foodType: FoodType.meat_and_fish,
        startingMonth: 6),
    Food.differentImageName(
        name: "svinjetina",
        imageName: "pig",
        foodType: FoodType.meat_and_fish,
        startingMonth: 9),
    Food.differentImageName(
        name: "losos",
        imageName: "salmon",
        foodType: FoodType.meat_and_fish,
        startingMonth: 6),
    Food.differentImageName(
        name: "srdela",
        imageName: "sardines",
        foodType: FoodType.meat_and_fish,
        startingMonth: 8),
    Food.differentImageName(
        name: "škarpina",
        imageName: "skarpina",
        foodType: FoodType.meat_and_fish,
        startingMonth: 6),
    Food.differentImageName(
        name: "tuna",
        imageName: "tuna",
        foodType: FoodType.meat_and_fish,
        startingMonth: 9),
    Food.differentImageName(
        name: "purica",
        imageName: "turkey",
        foodType: FoodType.meat_and_fish,
        startingMonth: 6),
    Food(name: "jogurt", foodType: FoodType.dairy, startingMonth: 7),
    Food.differentImageName(
        name: "kiselo mlijeko",
        imageName: "mlijeko",
        foodType: FoodType.dairy,
        startingMonth: 8),
    Food.differentImageName(
        name: "kefir",
        imageName: "mlijeko",
        foodType: FoodType.dairy,
        startingMonth: 8),
    Food(name: "vrhnje", foodType: FoodType.dairy, startingMonth: 9),
    Food.differentImageName(
        name: "svježi kravlji sir",
        imageName: "svjezi-sir",
        foodType: FoodType.dairy,
        startingMonth: 6),
    Food.differentImageName(
        name: "bjelanjak",
        imageName: "jaje",
        foodType: FoodType.egg,
        startingMonth: 8),
    Food.differentImageName(
        name: "žumanjak",
        imageName: "jaje",
        foodType: FoodType.egg,
        startingMonth: 6),
    Food(name: "maslac", foodType: FoodType.fat, startingMonth: 6),
    Food.differentImageName(
        name: "maslinovo ulje",
        imageName: "maslinovo-ulje",
        foodType: FoodType.fat,
        startingMonth: 6),
    Food.differentImageName(
        name: "bučino ulje",
        imageName: "pumpkin-oil",
        foodType: FoodType.fat,
        startingMonth: 9),
    Food.differentImageName(
        name: "suncokretovo ulje",
        imageName: "suncokretovo-ulje",
        foodType: FoodType.fat,
        startingMonth: 6),
    Food.differentImageName(
        name: "artičoka",
        imageName: "artichoke",
        foodType: FoodType.vegetable,
        startingMonth: 8),
    Food.differentImageName(
        name: "šparoga",
        imageName: "asparagus",
        foodType: FoodType.vegetable,
        startingMonth: 8),
    Food.differentImageName(
        name: "cikla",
        imageName: "beetroot",
        foodType: FoodType.vegetable,
        startingMonth: 7),
    Food.differentImageName(
        name: "mrkva",
        imageName: "carrot",
        foodType: FoodType.vegetable,
        startingMonth: 5),
    Food.differentImageName(
        name: "luk",
        imageName: "onion",
        foodType: FoodType.vegetable,
        startingMonth: 8),
    Food.differentImageName(
        name: "grašak",
        imageName: "peas",
        foodType: FoodType.vegetable,
        startingMonth: 8),
    Food.differentImageName(
        name: "blitva",
        imageName: "spinach",
        foodType: FoodType.vegetable,
        startingMonth: 5),
    Food.differentImageName(
        name: "batat",
        imageName: "sweet-potato",
        foodType: FoodType.vegetable,
        startingMonth: 5),
    Food.differentImageName(
        name: "rajčica",
        imageName: "tomato",
        foodType: FoodType.vegetable,
        startingMonth: 8),
    Food.differentImageName(
        name: "repa",
        imageName: "turnip",
        foodType: FoodType.vegetable,
        startingMonth: 8),
    Food.differentImageName(
        name: "tikvica",
        imageName: "zucchini",
        foodType: FoodType.vegetable,
        startingMonth: 5),
    Food.differentImageName(
        name: "kakao",
        imageName: "cacao",
        foodType: FoodType.other,
        startingMonth: 11),
    Food.differentImageName(
        name: "sladoled",
        imageName: "ice_cream",
        foodType: FoodType.other,
        startingMonth: 11),
    Food.differentImageName(
        name: "sjemenke lana",
        imageName: "seeds",
        foodType: FoodType.seeds,
        startingMonth: 10),
    Food.differentImageName(
        name: "sjemenke suncokreta",
        imageName: "seeds",
        foodType: FoodType.seeds,
        startingMonth: 10),
    Food.differentImageName(
        name: "sjemenke buće",
        imageName: "seeds",
        foodType: FoodType.seeds,
        startingMonth: 10),
    Food.differentImageName(
        name: "bosiljak",
        imageName: "basil",
        foodType: FoodType.spice,
        startingMonth: 6),
    Food.differentImageName(
        name: "celer",
        imageName: "celery",
        foodType: FoodType.spice,
        startingMonth: 9),
    Food.differentImageName(
        name: "vlasac",
        imageName: "chives",
        foodType: FoodType.spice,
        startingMonth: 9),
    Food.differentImageName(
        name: "cimet",
        imageName: "cinnamon",
        foodType: FoodType.spice,
        startingMonth: 6),
    Food.differentImageName(
        name: "češnjak",
        imageName: "garlic",
        foodType: FoodType.spice,
        startingMonth: 11),
    Food.differentImageName(
        name: "menta",
        imageName: "mint",
        foodType: FoodType.spice,
        startingMonth: 11),
    Food.differentImageName(
        name: "origano",
        imageName: "oregano",
        foodType: FoodType.spice,
        startingMonth: 6),
    Food.differentImageName(
        name: "peršin",
        imageName: "parsley",
        foodType: FoodType.spice,
        startingMonth: 11),
    Food.differentImageName(
        name: "ružmarin",
        imageName: "rosemary",
        foodType: FoodType.spice,
        startingMonth: 11),
    Food.differentImageName(
        name: "timijan",
        imageName: "thyme",
        foodType: FoodType.spice,
        startingMonth: 8),
    Food.differentImageName(
        name: "kurkuma",
        imageName: "turmeric",
        foodType: FoodType.spice,
        startingMonth: 8),
    Food.differentImageName(
        name: "vanilija",
        imageName: "vanilla",
        foodType: FoodType.spice,
        startingMonth: 6),
  ];
  static Map<int, List<Food>>? _foodMap = {};

  static List<Food> toArray() {
    return _foodList;
  }

  static List<Food> getFoodType(FoodType foodType) {
    List<Food> tmp = [];
    for (var food in _foodList) {
      if (food.foodType == foodType) {
        tmp.add(food);
      }
    }
    return tmp;
  }

  static List<Food> getFoodTypeOfFoodList(
      FoodType foodType, List<Food> foodList) {
    List<Food> tmp = [];
    for (var food in foodList) {
      if (food.foodType == foodType) {
        tmp.add(food);
      }
    }
    return tmp;
  }

  static Map<int, List<Food>> getFoodByStartingMonths() {
    if (_foodMap!.isNotEmpty) return _foodMap!;
    for (var foodItem in _foodList) {
      _foodMap!
          .putIfAbsent(foodItem.startingMonth, () => <Food>[])
          .add(foodItem);
    }
    return _foodMap!;
  }

  static List<Food> getFoodByMonth(int month) {
    if (_foodMap!.isEmpty) {
      getFoodByStartingMonths();
    }
    if (month < 4) return _foodMap![4]!;
    if (month > 12) return _foodMap![12]!;
    return _foodMap![month]!;
  }

  static bool isFoodTypePresent(List<Food> food, FoodType foodType) {
    for (var item in food) {
      if (item.foodType == foodType) {
        return true;
      }
    }
    return false;
  }
}
