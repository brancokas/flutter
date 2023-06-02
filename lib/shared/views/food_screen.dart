import 'package:flutter/material.dart';
import 'package:vjezba_1/constants.dart';
import 'package:vjezba_1/food/classes/food.dart';
import 'package:vjezba_1/food/classes/food_class.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class Item {
  Item({
    required this.food,
    required this.title,
    this.isExpanded = false,
  }) {
    itemOfMonth.add(ItemOfMonth(
        title: "voće",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.fruit, food)));
    itemOfMonth.add(ItemOfMonth(
        title: "povrće",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.vegetable, food)));
    itemOfMonth.add(ItemOfMonth(
        title: "žitarice",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.cereal, food)));
    itemOfMonth.add(ItemOfMonth(
        title: "meso i riba",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.meat_and_fish, food)));
    itemOfMonth.add(ItemOfMonth(
        title: "mliječni prozivodi",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.dairy, food)));
    itemOfMonth.add(ItemOfMonth(
        title: "jaje",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.egg, food)));
    itemOfMonth.add(ItemOfMonth(
        title: "masnoća",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.fat, food)));
    itemOfMonth.add(ItemOfMonth(
        title: "začini",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.spice, food)));
    itemOfMonth.add(ItemOfMonth(
        title: "sjemenke",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.seeds, food)));
    itemOfMonth.add(ItemOfMonth(
        title: "ostalo",
        food: FoodClass.getFoodTypeOfFoodList(FoodType.other, food)));

    itemOfMonth.removeWhere((element) => element.food.isEmpty);
  }

  List<Food> food;
  final String title;
  bool isExpanded;
  List<ItemOfMonth> itemOfMonth = [];
}

class ItemOfMonth {
  ItemOfMonth(
      {required this.food, required this.title, this.isExpanded = false});
  List<Food> food;
  final String title;
  bool isExpanded;
}

List<Item> generateList() {
  List<Item> tmpList = [];
  for (int month = 5; month < 12; month++) {
    tmpList.add(
        Item(food: FoodClass.getFoodByMonth(month), title: "$month. mjesec"));
  }
  return tmpList;
}

class _FoodScreenState extends State<FoodScreen> {
  final List<Item> _foodList = generateList();

  @override
  Widget build(BuildContext context) {
    return Center(child: SingleChildScrollView(child: _buildPanel()));
  }

  Widget _buildPanel() {
    return SizedBox(
      child: ExpansionPanelList(
        dividerColor: Colors.white,
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            _foodList.elementAt(panelIndex).isExpanded = !isExpanded;
          });
        },
        children: _foodList.map<ExpansionPanel>((e) {
          return ExpansionPanel(
            canTapOnHeader: true,
            isExpanded: e.isExpanded,
            headerBuilder: (context, isExpanded) {
              return Container(
                margin: const EdgeInsets.fromLTRB(4, 4, 0, 0),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(20),
                  shape: const RoundedRectangleBorder(
                      side:
                          BorderSide(color: Color.fromARGB(255, 210, 168, 182)),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  title: Center(child: Text(e.title.toUpperCase())),
                ),
              );
            },
            body: ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  e.itemOfMonth.elementAt(panelIndex).isExpanded = !isExpanded;
                });
              },
              children: e.itemOfMonth.map<ExpansionPanel>((foodTypeItem) {
                return ExpansionPanel(
                    canTapOnHeader: true,
                    isExpanded: foodTypeItem.isExpanded,
                    headerBuilder: (context, isExpanded) {
                      return Container(
                        margin: const EdgeInsets.all(15),
                        child: ListTile(
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 210, 168, 182)),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          contentPadding: const EdgeInsets.all(20.0),
                          title: Center(
                              child: Text(foodTypeItem.title.toUpperCase())),
                        ),
                      );
                    },
                    body: SizedBox(
                      child: generateFoodPanelContainer(foodTypeItem.food),
                    ));
              }).toList(),
            ),
          );
        }).toList(),
      ),
    );
  }

  TableRow _buildRow(List<TableCell> cells) {
    return TableRow(
      children: cells.map(((cell) {
        if (cell.notShow) {
          return Container();
        }
        return GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      scrollable: true,
                      title: ListTile(
                        leading: Image(
                          image: AssetImage(cell.food!.imageName),
                        ),
                        title: Text(cell.food!.name.toUpperCase()),
                      ),
                      content: Center(child: Text("Content")),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("OK")),
                      ],
                    ));
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(cell.food!.imageName),
                  width: 50,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(cell.food!.name.toUpperCase())
              ],
            ),
          ),
        );
      })).toList(),
    );
  }

  List<TableRow> _buildTable(List<Food> food) {
    final table = <TableRow>[];
    final row = <TableCell>[];
    for (var f in food) {
      if (row.length == 3) {
        table.add(_buildRow(row));
        row.clear();
      }
      row.add(TableCell(food: f));
    }
    if (row.isNotEmpty) {
      for (int i = row.length; i < 3; i++) {
        row.add(TableCell(notShow: true));
      }
      table.add(_buildRow(row));
    }
    return table;
  }

  Widget generateFoodPanelContainer(List<Food> food) {
    return Table(
      children: _buildTable(food),
    );
  }
}

class TableCell {
  TableCell({
    this.food,
    this.notShow = false,
  });
  final Food? food;
  final bool notShow;
}
