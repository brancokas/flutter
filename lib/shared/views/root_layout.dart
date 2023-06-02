import 'package:flutter/material.dart';
import 'package:vjezba_1/food/containers/app_bar_container.dart';
import 'package:vjezba_1/shared/views/router.dart' as router;
import 'package:go_router/go_router.dart' as go;

class RootLayout extends StatelessWidget {
  const RootLayout({
    super.key,
    required this.child,
    required this.currentPage,
    this.title,
  });

  final Widget child;
  final int currentPage;
  final String? title;

  @override
  Widget build(BuildContext context) {
    void onSelected(int index) {
      final destination = router.destinations[index];
      go.GoRouter.of(context).go(destination.route);
    }

    return Scaffold(
      appBar: NewAppBar(context),
      body: child,
      bottomNavigationBar: NavigationBar(
          backgroundColor: const Color.fromARGB(255, 232, 208, 207),
          selectedIndex: currentPage,
          onDestinationSelected: onSelected,
          destinations: router.destinations
              .map((e) => NavigationDestination(icon: e.icon, label: e.label))
              .toList()),
    );
  }
}
