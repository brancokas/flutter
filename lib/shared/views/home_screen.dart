import 'package:flutter/material.dart';
import 'package:vjezba_1/food/classes/food.dart';
import 'package:vjezba_1/food/containers/home_page_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.food});
  final List<Food> food;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: ListView(
          children: widget.food
              .map((item) => GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                scrollable: true,
                                title: ListTile(
                                  leading: Image(
                                    image: AssetImage(item.imageName),
                                  ),
                                  title: Text(item.name.toUpperCase()),
                                ),
                                content: const Center(child: Text("Content")),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text("OK"),
                                  ),
                                ],
                              ));
                    },
                    child: FoodContainer(food: item),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
