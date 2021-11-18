import 'package:flutter/material.dart';
import 'package:kcal/model/recipe.dart';
import 'package:kcal/widgets/recipe_card.dart';

class Rpage extends StatelessWidget {
  const Rpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ListView.builder(
              itemBuilder: (context, i) => RecipeItem(i),
              itemCount: RecipeList.length,
            ),
          ),
        ),
      ),
    );
  }
}
