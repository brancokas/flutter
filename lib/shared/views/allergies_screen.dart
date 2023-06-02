import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' as go;
import 'package:vjezba_1/constants.dart';
import 'package:vjezba_1/food/containers/allergies_container.dart';
import 'package:vjezba_1/provider/shared_preferences.dart';

class Allergies extends StatefulWidget {
  const Allergies({super.key});

  @override
  State<Allergies> createState() => _AllergiesState();
}

class _AllergiesState extends State<Allergies> {
  final allergy = AllergiesContainer(
      gluten: false,
      orasastiPlodovi: false,
      soja: false,
      riba: false,
      jaja: false);
  @override
  Widget build(BuildContext context) {
    void nextPage() {
      final allAlergies = allergy.getAllergies();
      SharedPreference.setAllergies(allAlergies.toList());
      go.GoRouter.of(context).go(homeScreen);
    }

    return Scaffold(
        body: Center(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "ALERGIJE",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 40,
            ),
            allergy,
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                backgroundColor: const MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 235, 141, 135)),
              ),
              onPressed: nextPage,
              child: const Text(
                'NASLOVNA',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
