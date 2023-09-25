// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'product_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDataModel _$$_ProductDataModelFromJson(Map<String, dynamic> json) =>
    _$_ProductDataModel(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      tagline: json['tagline'] as String? ?? '',
      first_brewed: json['first_brewed'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image_url: json['image_url'] as String? ?? '',
      abv: (json['abv'] as num?)?.toDouble() ?? 0,
      ibu: (json['ibu'] as num?)?.toDouble() ?? 0,
      target_fg: (json['target_fg'] as num?)?.toDouble() ?? 0,
      target_og: (json['target_og'] as num?)?.toDouble() ?? 0,
      ebc: (json['ebc'] as num?)?.toDouble() ?? 0,
      srm: (json['srm'] as num?)?.toDouble() ?? 0,
      ph: (json['ph'] as num?)?.toDouble() ?? 0,
      attenuation_level: (json['attenuation_level'] as num?)?.toDouble() ?? 0,
      brewers_tips: json['brewers_tips'] as String? ?? '',
      contributed_by: json['contributed_by'] as String? ?? '',
      volume: json['volume'] == null
          ? null
          : Volume.fromJson(json['volume'] as Map<String, dynamic>),
      boil_volume: json['boil_volume'] == null
          ? null
          : Volume.fromJson(json['boil_volume'] as Map<String, dynamic>),
      method: json['method'] == null
          ? null
          : Method.fromJson(json['method'] as Map<String, dynamic>),
      ingredients: json['ingredients'] == null
          ? null
          : Ingredient.fromJson(json['ingredients'] as Map<String, dynamic>),
      food_pairing: (json['food_pairing'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProductDataModelToJson(_$_ProductDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tagline': instance.tagline,
      'first_brewed': instance.first_brewed,
      'description': instance.description,
      'image_url': instance.image_url,
      'abv': instance.abv,
      'ibu': instance.ibu,
      'target_fg': instance.target_fg,
      'target_og': instance.target_og,
      'ebc': instance.ebc,
      'srm': instance.srm,
      'ph': instance.ph,
      'attenuation_level': instance.attenuation_level,
      'brewers_tips': instance.brewers_tips,
      'contributed_by': instance.contributed_by,
      'volume': instance.volume,
      'boil_volume': instance.boil_volume,
      'method': instance.method,
      'ingredients': instance.ingredients,
      'food_pairing': instance.food_pairing,
    };

_$_Volume _$$_VolumeFromJson(Map<String, dynamic> json) => _$_Volume(
      unit: json['unit'] as String? ?? '',
      value: (json['value'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_VolumeToJson(_$_Volume instance) => <String, dynamic>{
      'unit': instance.unit,
      'value': instance.value,
    };

_$_Fermentation _$$_FermentationFromJson(Map<String, dynamic> json) =>
    _$_Fermentation(
      temp: json['temp'] == null
          ? null
          : Volume.fromJson(json['temp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FermentationToJson(_$_Fermentation instance) =>
    <String, dynamic>{
      'temp': instance.temp,
    };

_$_Method _$$_MethodFromJson(Map<String, dynamic> json) => _$_Method(
      fermentation: json['fermentation'] == null
          ? null
          : Fermentation.fromJson(json['fermentation'] as Map<String, dynamic>),
      mash_temp: (json['mash_temp'] as List<dynamic>?)
          ?.map((e) => MashTemp.fromJson(e as Map<String, dynamic>))
          .toList(),
      twist: json['twist'] as String? ?? '',
    );

Map<String, dynamic> _$$_MethodToJson(_$_Method instance) => <String, dynamic>{
      'fermentation': instance.fermentation,
      'mash_temp': instance.mash_temp,
      'twist': instance.twist,
    };

_$_MashTemp _$$_MashTempFromJson(Map<String, dynamic> json) => _$_MashTemp(
      temp: json['temp'] == null
          ? null
          : Volume.fromJson(json['temp'] as Map<String, dynamic>),
      duration: (json['duration'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_MashTempToJson(_$_MashTemp instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'duration': instance.duration,
    };

_$_Malt _$$_MaltFromJson(Map<String, dynamic> json) => _$_Malt(
      name: json['name'] as String? ?? '',
      amount: json['amount'] == null
          ? null
          : Volume.fromJson(json['amount'] as Map<String, dynamic>),
      add: json['add'] as String? ?? '',
      attribute: json['attribute'] as String? ?? '',
    );

Map<String, dynamic> _$$_MaltToJson(_$_Malt instance) => <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'add': instance.add,
      'attribute': instance.attribute,
    };

_$_Ingredient _$$_IngredientFromJson(Map<String, dynamic> json) =>
    _$_Ingredient(
      malt: (json['malt'] as List<dynamic>?)
          ?.map((e) => Malt.fromJson(e as Map<String, dynamic>))
          .toList(),
      hops: (json['hops'] as List<dynamic>?)
          ?.map((e) => Malt.fromJson(e as Map<String, dynamic>))
          .toList(),
      yeast: json['yeast'] as String? ?? '',
    );

Map<String, dynamic> _$$_IngredientToJson(_$_Ingredient instance) =>
    <String, dynamic>{
      'malt': instance.malt,
      'hops': instance.hops,
      'yeast': instance.yeast,
    };
