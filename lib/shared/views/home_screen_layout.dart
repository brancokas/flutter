import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:vjezba_1/food/classes/food.dart';
import 'package:vjezba_1/food/classes/food_class.dart';
import 'package:vjezba_1/food/containers/app_bar_container.dart';
import 'package:vjezba_1/shared/views/home_screen.dart';
import 'package:vjezba_1/shared/views/router.dart' as router;
import 'package:go_router/go_router.dart' as go;

class HomeScreenLayout extends StatelessWidget {
  HomeScreenLayout({super.key});

  final isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    void onSelected(int index) {
      final destination = router.destinations[index];
      go.GoRouter.of(context).go(destination.route);
    }

    List<Food> food = FoodClass.toArray();
    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          isDialOpen.value = false;

          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: NewAppBar(context),
        body: HomeScreen(food: food),
        bottomNavigationBar: NavigationBar(
            backgroundColor: const Color.fromARGB(255, 232, 208, 207),
            selectedIndex: 0,
            onDestinationSelected: onSelected,
            destinations: router.destinations
                .map((e) => NavigationDestination(icon: e.icon, label: e.label))
                .toList()),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: SpeedDial(
          backgroundColor: const Color.fromARGB(255, 232, 208, 207),
          spaceBetweenChildren: 10,
          spacing: 12,
          icon: Icons.add,
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          openCloseDial: isDialOpen,
          children: [
            SpeedDialChild(
                child: const Icon(MdiIcons.shuffleVariant),
                label: "Generiraj kalendar".toUpperCase()),
            SpeedDialChild(
                child: const Icon(Icons.add),
                label: "Dodaj namirnicu".toUpperCase())
          ],
        ),
      ),
    );
  }
}
