import 'package:cooksoc/core/components/button.dart';
import 'package:cooksoc/dependency_injection.dart';
import 'package:cooksoc/features/recipes/models/create_recipe_state.dart';
import 'package:cooksoc/features/recipes/notifiers/create_recipe_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createRecipeProvider =
    StateNotifierProvider<CreateRecipeNotifier, CreateRecipeState>(
  (ref) => sl<CreateRecipeNotifier>(),
);

class CreateRecipeScreen extends StatelessWidget {
  const CreateRecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Recipe')),
      body: _Form(),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  Future<void> _createRecipe(BuildContext context) async {
    final provider = context.read(createRecipeProvider.notifier);
    await provider.createRecipe();
    if (!mounted) return;
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      return Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                  onChanged: (name) =>
                      context.read(createRecipeProvider.notifier).setName(name),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Ingredients',
                    alignLabelWithHint: true,
                  ),
                  onChanged: (name) => context
                      .read(createRecipeProvider.notifier)
                      .setIngredients(name),
                  minLines: 4,
                  maxLines: null,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Instructions',
                    alignLabelWithHint: true,
                  ),
                  onChanged: (name) => context
                      .read(createRecipeProvider.notifier)
                      .setInstructions(name),
                  minLines: 4,
                  maxLines: null,
                ),
              ],
            ),
          ),
          Button(text: 'CREATE', onTap: () => _createRecipe(context)),
        ],
      );
    });
  }
}
