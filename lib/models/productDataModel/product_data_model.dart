// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data_model.freezed.dart';
part 'product_data_model.g.dart';

@freezed
class ProductDataModel with _$ProductDataModel {
  const ProductDataModel._();

  factory ProductDataModel({
    required int id,
    @Default('') String name,
    @Default('') String tagline,
    @Default('') String first_brewed,
    @Default('') String description,
    @Default('') String image_url,
    @Default(0) double abv,
    @Default(0) double ibu,
    @Default(0) double target_fg,
    @Default(0) double target_og,
    @Default(0) double ebc,
    @Default(0) double srm,
    @Default(0) double ph,
    @Default(0) double attenuation_level,
    @Default('') String brewers_tips,
    @Default('') String contributed_by,
    Volume? volume,
    Volume? boil_volume,
    Method? method,
    Ingredient? ingredients,
    List<String>? food_pairing,
  }) = _ProductDataModel;

  factory ProductDataModel.fromJson(Map<String, Object?> json) =>
      _$ProductDataModelFromJson(json);
}

@freezed
class Volume with _$Volume {
  const Volume._();

  factory Volume({
    @Default('') String unit,
    @Default(0) double value,
  }) = _Volume;

  factory Volume.fromJson(Map<String, Object?> json) => _$VolumeFromJson(json);
}

@freezed
class Fermentation with _$Fermentation {
  const Fermentation._();

  factory Fermentation({
    Volume? temp,
  }) = _Fermentation;

  factory Fermentation.fromJson(Map<String, Object?> json) =>
      _$FermentationFromJson(json);
}

@freezed
class Method with _$Method {
  const Method._();

  factory Method({
    Fermentation? fermentation,
    List<MashTemp>? mash_temp,
    @Default('') String twist,
  }) = _Method;

  factory Method.fromJson(Map<String, Object?> json) => _$MethodFromJson(json);
}

@freezed
class MashTemp with _$MashTemp {
  const MashTemp._();

  factory MashTemp({
    Volume? temp,
    @Default(0) double duration,
  }) = _MashTemp;

  factory MashTemp.fromJson(Map<String, Object?> json) =>
      _$MashTempFromJson(json);
}

@freezed
class Malt with _$Malt {
  const Malt._();

  factory Malt({
    @Default('') String name,
    Volume? amount,
    @Default('') String add,
    @Default('') String attribute,
  }) = _Malt;

  factory Malt.fromJson(Map<String, Object?> json) => _$MaltFromJson(json);
}

@freezed
class Ingredient with _$Ingredient {
  const Ingredient._();

  factory Ingredient({
    List<Malt>? malt,
    List<Malt>? hops,
    @Default('') String yeast,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, Object?> json) =>
      _$IngredientFromJson(json);
}
