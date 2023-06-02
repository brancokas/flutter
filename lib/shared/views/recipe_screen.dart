import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        child: Image(
          image: AssetImage('assets/vegetable/peas.png'),
        ),
      ),
    );
  }
}
