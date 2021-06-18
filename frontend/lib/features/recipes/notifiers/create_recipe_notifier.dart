import 'package:cooksoc/core/graphql/mutations/create_recipe.req.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

import 'package:cooksoc/dependency_injection.dart';
import 'package:cooksoc/features/recipes/models/create_recipe_state.dart';

@Injectable(env: Env.main)
class CreateRecipeNotifier extends StateNotifier<CreateRecipeState> {
  CreateRecipeNotifier(this._gql)
      : super(
          CreateRecipeState(
            loading: false,
            name: '',
            instructions: [''],
            ingredients: [''],
          ),
        );

  @protected
  static final log = Logger('$CreateRecipeNotifier');

  final TypedLink _gql;

  Future<void> _performTask(Future<void> Function() task) async {
    state = state.copyWith(loading: true);
    try {
      await task();
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      log.warning(e);
    }
    state = state.copyWith(loading: false);
  }

  void setName(String name) {
    if (state.loading) return;
    state = state.copyWith(name: name);
  }

  void setIngredients(String ingredients) {
    if (state.loading) return;
    state = state.copyWith(ingredients: [ingredients]);
  }

  void setInstructions(String instructions) {
    if (state.loading) return;
    state = state.copyWith(instructions: [instructions]);
  }

  Future<void> createRecipe() async {
    if (state.loading) return;

    if (state.name.isEmpty) return;
    if (state.instructions.isEmpty) return;
    if (state.ingredients.isEmpty) return;

    await _performTask(() async {
      final response = await _gql
          .request(GCreateRecipeReq(
            (b) => b
              ..vars.options.name = state.name
              ..vars.options.instructions = state.instructions.single
              ..vars.options.ingredients = state.ingredients.single
              ..vars.options.info = '',
          ))
          .first;

      log.info(response.data?.createRecipe);
    });
  }
}
