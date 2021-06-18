import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:cooksoc/core/graphql/mutations/create_recipe.data.gql.dart'
    show
        GCreateRecipeData,
        GCreateRecipeData_createRecipe,
        GCreateRecipeData_createRecipe_recipe;
import 'package:cooksoc/core/graphql/mutations/create_recipe.req.gql.dart'
    show GCreateRecipeReq;
import 'package:cooksoc/core/graphql/mutations/create_recipe.var.gql.dart'
    show GCreateRecipeVars;
import 'package:cooksoc/core/graphql/mutations/delete_account.data.gql.dart'
    show GDeleteAccountData, GDeleteAccountData_deleteAccount;
import 'package:cooksoc/core/graphql/mutations/delete_account.req.gql.dart'
    show GDeleteAccountReq;
import 'package:cooksoc/core/graphql/mutations/delete_account.var.gql.dart'
    show GDeleteAccountVars;
import 'package:cooksoc/core/graphql/mutations/get_auth_token.data.gql.dart'
    show GGetAuthTokenData, GGetAuthTokenData_getAuthToken;
import 'package:cooksoc/core/graphql/mutations/get_auth_token.req.gql.dart'
    show GGetAuthTokenReq;
import 'package:cooksoc/core/graphql/mutations/get_auth_token.var.gql.dart'
    show GGetAuthTokenVars;
import 'package:cooksoc/core/graphql/mutations/send_auth_code.data.gql.dart'
    show GSendAuthCodeData, GSendAuthCodeData_sendAuthCode;
import 'package:cooksoc/core/graphql/mutations/send_auth_code.req.gql.dart'
    show GSendAuthCodeReq;
import 'package:cooksoc/core/graphql/mutations/send_auth_code.var.gql.dart'
    show GSendAuthCodeVars;
import 'package:cooksoc/core/graphql/queries/get_user.data.gql.dart'
    show GGetUserData, GGetUserData_getUser, GGetUserData_getUser_user;
import 'package:cooksoc/core/graphql/queries/get_user.req.gql.dart'
    show GGetUserReq;
import 'package:cooksoc/core/graphql/queries/get_user.var.gql.dart'
    show GGetUserVars;
import 'package:cooksoc/core/graphql/queries/hello.data.gql.dart'
    show GHelloData;
import 'package:cooksoc/core/graphql/queries/hello.req.gql.dart' show GHelloReq;
import 'package:cooksoc/core/graphql/queries/hello.var.gql.dart'
    show GHelloVars;
import 'package:cooksoc/core/graphql/schema.schema.gql.dart'
    show GDateTime, GRecipeInput;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateRecipeData,
  GCreateRecipeData_createRecipe,
  GCreateRecipeData_createRecipe_recipe,
  GCreateRecipeReq,
  GCreateRecipeVars,
  GDateTime,
  GDeleteAccountData,
  GDeleteAccountData_deleteAccount,
  GDeleteAccountReq,
  GDeleteAccountVars,
  GGetAuthTokenData,
  GGetAuthTokenData_getAuthToken,
  GGetAuthTokenReq,
  GGetAuthTokenVars,
  GGetUserData,
  GGetUserData_getUser,
  GGetUserData_getUser_user,
  GGetUserReq,
  GGetUserVars,
  GHelloData,
  GHelloReq,
  GHelloVars,
  GRecipeInput,
  GSendAuthCodeData,
  GSendAuthCodeData_sendAuthCode,
  GSendAuthCodeReq,
  GSendAuthCodeVars
])
final Serializers serializers = _serializersBuilder.build();
