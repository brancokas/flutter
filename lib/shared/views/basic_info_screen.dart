import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' as go;
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vjezba_1/constants.dart';
import 'package:vjezba_1/food/containers/date_container.dart';
import 'package:vjezba_1/provider/shared_preferences.dart';

class BasicInfo extends StatefulWidget {
  const BasicInfo({super.key});

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  final dateContainer = DateContainer(
    selectedDate: "Datum rodenja djeteta",
    date: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    void goToAllergiesPage() {
      if (dateContainer.getSelected()) {
        SharedPreference.setBirthDate(dateContainer.getDate());
        SharedPreference.setSignUp();
        go.GoRouter.of(context).go(allergyScreen);
      } else {
        setState(() {
          dateContainer.setError(true);
        });
      }
    }

    return Scaffold(
        body: Container(
      color: const Color.fromARGB(255, 232, 208, 207),
      child: Center(
        child: SafeArea(
          child: ChangeNotifierProvider(
            create: (context) => dateContainer,
            builder: (context, child) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'DOBRO DOSLI',
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                Text(
                  'RODITELJI',
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                dateContainer,
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 235, 141, 135)),
                      textStyle: MaterialStatePropertyAll<TextStyle>(
                          GoogleFonts.aBeeZee(
                              textStyle: const TextStyle(fontSize: 20)))),
                  onPressed: goToAllergiesPage,
                  child: const Text('SLJEDECE'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Provider.of<DateContainer>(context).getError()
                    ? const Text(
                        "Must select a birth date",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
