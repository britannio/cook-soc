import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_recipe_state.freezed.dart';

@freezed
class CreateRecipeState with _$CreateRecipeState {
  const factory CreateRecipeState({
    required bool loading,
    required String name,
    required List<String> ingredients,
    required List<String> instructions,
  }) = _CreateRecipeState;
}
