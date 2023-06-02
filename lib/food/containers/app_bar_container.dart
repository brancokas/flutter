import 'package:flutter/material.dart';
import 'package:vjezba_1/shared/views/settings_screen.dart';

class NewAppBar extends AppBar {
  NewAppBar(BuildContext context, {super.key})
      : super(
            backgroundColor: const Color.fromARGB(255, 232, 208, 207),
            title: const Center(
                child: Text(
              "BEBIN KALENDAR DOHRANE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            )),
            automaticallyImplyLeading: false,
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => const Settings()));
                },
                icon: const Icon(Icons.baby_changing_station),
              )
            ]);
}
