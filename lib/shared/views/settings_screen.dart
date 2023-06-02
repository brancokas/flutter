import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:vjezba_1/food/classes/allergy.dart';
import 'package:vjezba_1/food/containers/allergies_container.dart';
import 'package:vjezba_1/food/containers/date_container.dart';
import 'package:vjezba_1/provider/shared_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    String? birthDate = SharedPreference.getBirthDate();
    late DateTime dateTime;
    if (birthDate != null) {
      dateTime = DateContainer.fromStringToDate(birthDate);
    }
    final allergies = SharedPreference.getAllergies();
    late Allergy allergy = Allergy();
    if (allergies != null) {
      allergy = Allergy.fromListToAllergy(allergies);
    }
    DateContainer dateContainer =
        DateContainer(selectedDate: birthDate!, date: dateTime);
    AllergiesContainer allergiesContainer = AllergiesContainer(
      gluten: allergy.gluten,
      orasastiPlodovi: allergy.orasastiPlodovi,
      soja: allergy.soja,
      riba: allergy.riba,
      jaja: allergy.jaja,
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              SharedPreference.setBirthDate(dateContainer.getDate());
              SharedPreference.setAllergies(
                  allergiesContainer.getAllergies().toList());
              Navigator.pop(context);
            },
            icon: const Icon(MdiIcons.arrowLeft)),
        title: Text("Postavke".toUpperCase()),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dateContainer,
            const SizedBox(
              height: 30,
            ),
            allergiesContainer
          ],
        ),
      )),
    );
  }
}
