import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:vjezba_1/constants.dart';
import 'package:vjezba_1/provider/shared_preferences.dart';
import 'package:vjezba_1/shared/views/food_screen.dart';
import 'package:vjezba_1/shared/views/home_screen_layout.dart';
import 'package:vjezba_1/shared/views/recipe_screen.dart';
import 'package:vjezba_1/shared/views/root_layout.dart';
import 'package:vjezba_1/shared/views/allergies_screen.dart';
import 'package:vjezba_1/shared/views/basic_info_screen.dart';

const _pageKey = ValueKey('_pageKey');

const List<NavigationDestination> destinations = [
  NavigationDestination(
    route: '/',
    label: 'Home',
    icon: Icon(Icons.home),
  ),
  NavigationDestination(
    route: '/food',
    label: 'Food',
    icon: Icon(MdiIcons.silverwareFork),
  ),
  NavigationDestination(
    route: '/recipes',
    label: 'Recipes',
    icon: Icon(MdiIcons.bookOpenOutline),
  ),
];

class NavigationDestination {
  const NavigationDestination(
      {required this.route,
      required this.label,
      required this.icon,
      this.child});

  final String route;
  final String label;
  final Icon icon;
  final Widget? child;
}

class MyRouter {
  late final GoRouter router;
  bool isFirstLogin = true;

  MyRouter() {
    initMyRouter();
  }

  bool _signUp() {
    return SharedPreference.getSignUp();
  }

  void initMyRouter() {
    router = GoRouter(
        // initialLocation: _signUp() ? homeScreen : basicInfoScreen,
        initialLocation: basicInfoScreen,
        routes: [
          GoRoute(
            path: homeScreen,
            pageBuilder: (context, state) => MaterialPage<void>(
              child: HomeScreenLayout(),
            ),
          ),
          GoRoute(
            path: foodScreen,
            pageBuilder: (context, state) => const MaterialPage<void>(
                child: RootLayout(
              key: _pageKey,
              title: "Food",
              currentPage: 1,
              child: FoodScreen(
                key: PageStorageKey('page_two'),
              ),
            )),
          ),
          GoRoute(
            path: recipeScreen,
            pageBuilder: (context, state) => const MaterialPage<void>(
              child: RootLayout(
                key: _pageKey,
                title: "Recipes",
                currentPage: 2,
                child: RecipeScreen(
                  key: PageStorageKey('page_three'),
                ),
              ),
            ),
          ),
          GoRoute(
            path: basicInfoScreen,
            pageBuilder: (context, state) =>
                const MaterialPage<void>(child: BasicInfo()),
          ),
          GoRoute(
            path: allergyScreen,
            pageBuilder: (context, state) =>
                const MaterialPage<void>(child: Allergies()),
          ),
        ]);
  }
}
