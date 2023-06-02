import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vjezba_1/shared/views/router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final myRouter = MyRouter();
    final router = myRouter.router;
    return MaterialApp.router(
      theme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
        canvasColor: const Color.fromARGB(255, 232, 208, 207),
      ),
      debugShowCheckedModeBanner: true,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
