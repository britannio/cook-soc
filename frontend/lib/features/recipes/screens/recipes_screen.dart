import 'package:cooksoc/core/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Placeholder()),
        Positioned(
          right: 16,
          bottom: 16,
          child: FloatingActionButton(
            onPressed: () => AutoRouter.of(context).push(CreateRecipeRouter()),
            child: FaIcon(FontAwesomeIcons.plus),
          ),
        ),
      ],
    );
  }
}
