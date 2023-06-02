import 'package:flutter/material.dart';
import 'package:vjezba_1/food/classes/food.dart';

class FoodContainer extends StatefulWidget {
  const FoodContainer({super.key, required this.food});
  final Food food;
  @override
  State<FoodContainer> createState() => _FoodContainerState();
}

class _FoodContainerState extends State<FoodContainer> {
  final double _fontSize = 25;
  late final String _imageName = widget.food.imageName;
  late final String _name = widget.food.name;
  final List<DropdownMenuItem<IconButton>> _dropdownMenu = [];

  double getFontSize(String name) {
    double totalSize = MediaQuery.of(context).size.width;
    if (totalSize - 26 - 80 - _name.length * _fontSize > 0) {
      return _fontSize;
    }

    return ((totalSize - 26 - 80) / _name.length).floor() * 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: 160.0,
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color.fromARGB(255, 175, 81, 114),
            width: 3,
          ),
        ),
        child: Center(
          child: Table(
            children: <TableRow>[
              TableRow(children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Novo',
                        style: TextStyle(fontSize: 18),
                      ),
                    ]),
              ]),
              TableRow(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(width: 80, image: AssetImage(_imageName)),
                    SizedBox(
                      child: Text(
                        _name.toUpperCase(),
                        style: TextStyle(fontSize: getFontSize(_name)),
                      ),
                    )
                  ],
                ),
              ]),
              TableRow(children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: const Text(
                      '1 obrok danas',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ])
              ])
            ],
          ),
        ),
      ),
      Positioned(
        left: 32 / 100 * MediaQuery.of(context).size.width,
        top: 12,
        child: Container(
          padding: const EdgeInsets.only(left: 4, right: 4),
          color: const Color.fromARGB(255, 255, 255, 255),
          child: const Text(
            'Trajanje: 2/3 dana',
            style: TextStyle(fontSize: 17),
          ),
        ),
      ),
      Positioned(
        bottom: 10,
        left: MediaQuery.of(context).size.width / 2,
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: DropdownButton(items: [], onChanged: onChanged),
        ),
      )
    ]);
  }
}
