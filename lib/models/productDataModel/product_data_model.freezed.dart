// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDataModel _$ProductDataModelFromJson(Map<String, dynamic> json) {
  return _ProductDataModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDataModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  String get first_brewed => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image_url => throw _privateConstructorUsedError;
  double get abv => throw _privateConstructorUsedError;
  double get ibu => throw _privateConstructorUsedError;
  double get target_fg => throw _privateConstructorUsedError;
  double get target_og => throw _privateConstructorUsedError;
  double get ebc => throw _privateConstructorUsedError;
  double get srm => throw _privateConstructorUsedError;
  double get ph => throw _privateConstructorUsedError;
  double get attenuation_level => throw _privateConstructorUsedError;
  String get brewers_tips => throw _privateConstructorUsedError;
  String get contributed_by => throw _privateConstructorUsedError;
  Volume? get volume => throw _privateConstructorUsedError;
  Volume? get boil_volume => throw _privateConstructorUsedError;
  Method? get method => throw _privateConstructorUsedError;
  Ingredient? get ingredients => throw _privateConstructorUsedError;
  List<String>? get food_pairing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataModelCopyWith<ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataModelCopyWith<$Res> {
  factory $ProductDataModelCopyWith(
          ProductDataModel value, $Res Function(ProductDataModel) then) =
      _$ProductDataModelCopyWithImpl<$Res, ProductDataModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String tagline,
      String first_brewed,
      String description,
      String image_url,
      double abv,
      double ibu,
      double target_fg,
      double target_og,
      double ebc,
      double srm,
      double ph,
      double attenuation_level,
      String brewers_tips,
      String contributed_by,
      Volume? volume,
      Volume? boil_volume,
      Method? method,
      Ingredient? ingredients,
      List<String>? food_pairing});

  $VolumeCopyWith<$Res>? get volume;
  $VolumeCopyWith<$Res>? get boil_volume;
  $MethodCopyWith<$Res>? get method;
  $IngredientCopyWith<$Res>? get ingredients;
}

/// @nodoc
class _$ProductDataModelCopyWithImpl<$Res, $Val extends ProductDataModel>
    implements $ProductDataModelCopyWith<$Res> {
  _$ProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tagline = null,
    Object? first_brewed = null,
    Object? description = null,
    Object? image_url = null,
    Object? abv = null,
    Object? ibu = null,
    Object? target_fg = null,
    Object? target_og = null,
    Object? ebc = null,
    Object? srm = null,
    Object? ph = null,
    Object? attenuation_level = null,
    Object? brewers_tips = null,
    Object? contributed_by = null,
    Object? volume = freezed,
    Object? boil_volume = freezed,
    Object? method = freezed,
    Object? ingredients = freezed,
    Object? food_pairing = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      first_brewed: null == first_brewed
          ? _value.first_brewed
          : first_brewed // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      abv: null == abv
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as double,
      ibu: null == ibu
          ? _value.ibu
          : ibu // ignore: cast_nullable_to_non_nullable
              as double,
      target_fg: null == target_fg
          ? _value.target_fg
          : target_fg // ignore: cast_nullable_to_non_nullable
              as double,
      target_og: null == target_og
          ? _value.target_og
          : target_og // ignore: cast_nullable_to_non_nullable
              as double,
      ebc: null == ebc
          ? _value.ebc
          : ebc // ignore: cast_nullable_to_non_nullable
              as double,
      srm: null == srm
          ? _value.srm
          : srm // ignore: cast_nullable_to_non_nullable
              as double,
      ph: null == ph
          ? _value.ph
          : ph // ignore: cast_nullable_to_non_nullable
              as double,
      attenuation_level: null == attenuation_level
          ? _value.attenuation_level
          : attenuation_level // ignore: cast_nullable_to_non_nullable
              as double,
      brewers_tips: null == brewers_tips
          ? _value.brewers_tips
          : brewers_tips // ignore: cast_nullable_to_non_nullable
              as String,
      contributed_by: null == contributed_by
          ? _value.contributed_by
          : contributed_by // ignore: cast_nullable_to_non_nullable
              as String,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as Volume?,
      boil_volume: freezed == boil_volume
          ? _value.boil_volume
          : boil_volume // ignore: cast_nullable_to_non_nullable
              as Volume?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Ingredient?,
      food_pairing: freezed == food_pairing
          ? _value.food_pairing
          : food_pairing // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VolumeCopyWith<$Res>? get volume {
    if (_value.volume == null) {
      return null;
    }

    return $VolumeCopyWith<$Res>(_value.volume!, (value) {
      return _then(_value.copyWith(volume: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VolumeCopyWith<$Res>? get boil_volume {
    if (_value.boil_volume == null) {
      return null;
    }

    return $VolumeCopyWith<$Res>(_value.boil_volume!, (value) {
      return _then(_value.copyWith(boil_volume: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MethodCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $MethodCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientCopyWith<$Res>? get ingredients {
    if (_value.ingredients == null) {
      return null;
    }

    return $IngredientCopyWith<$Res>(_value.ingredients!, (value) {
      return _then(_value.copyWith(ingredients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDataModelCopyWith<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  factory _$$_ProductDataModelCopyWith(
          _$_ProductDataModel value, $Res Function(_$_ProductDataModel) then) =
      __$$_ProductDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String tagline,
      String first_brewed,
      String description,
      String image_url,
      double abv,
      double ibu,
      double target_fg,
      double target_og,
      double ebc,
      double srm,
      double ph,
      double attenuation_level,
      String brewers_tips,
      String contributed_by,
      Volume? volume,
      Volume? boil_volume,
      Method? method,
      Ingredient? ingredients,
      List<String>? food_pairing});

  @override
  $VolumeCopyWith<$Res>? get volume;
  @override
  $VolumeCopyWith<$Res>? get boil_volume;
  @override
  $MethodCopyWith<$Res>? get method;
  @override
  $IngredientCopyWith<$Res>? get ingredients;
}

/// @nodoc
class __$$_ProductDataModelCopyWithImpl<$Res>
    extends _$ProductDataModelCopyWithImpl<$Res, _$_ProductDataModel>
    implements _$$_ProductDataModelCopyWith<$Res> {
  __$$_ProductDataModelCopyWithImpl(
      _$_ProductDataModel _value, $Res Function(_$_ProductDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tagline = null,
    Object? first_brewed = null,
    Object? description = null,
    Object? image_url = null,
    Object? abv = null,
    Object? ibu = null,
    Object? target_fg = null,
    Object? target_og = null,
    Object? ebc = null,
    Object? srm = null,
    Object? ph = null,
    Object? attenuation_level = null,
    Object? brewers_tips = null,
    Object? contributed_by = null,
    Object? volume = freezed,
    Object? boil_volume = freezed,
    Object? method = freezed,
    Object? ingredients = freezed,
    Object? food_pairing = freezed,
  }) {
    return _then(_$_ProductDataModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      first_brewed: null == first_brewed
          ? _value.first_brewed
          : first_brewed // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      abv: null == abv
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as double,
      ibu: null == ibu
          ? _value.ibu
          : ibu // ignore: cast_nullable_to_non_nullable
              as double,
      target_fg: null == target_fg
          ? _value.target_fg
          : target_fg // ignore: cast_nullable_to_non_nullable
              as double,
      target_og: null == target_og
          ? _value.target_og
          : target_og // ignore: cast_nullable_to_non_nullable
              as double,
      ebc: null == ebc
          ? _value.ebc
          : ebc // ignore: cast_nullable_to_non_nullable
              as double,
      srm: null == srm
          ? _value.srm
          : srm // ignore: cast_nullable_to_non_nullable
              as double,
      ph: null == ph
          ? _value.ph
          : ph // ignore: cast_nullable_to_non_nullable
              as double,
      attenuation_level: null == attenuation_level
          ? _value.attenuation_level
          : attenuation_level // ignore: cast_nullable_to_non_nullable
              as double,
      brewers_tips: null == brewers_tips
          ? _value.brewers_tips
          : brewers_tips // ignore: cast_nullable_to_non_nullable
              as String,
      contributed_by: null == contributed_by
          ? _value.contributed_by
          : contributed_by // ignore: cast_nullable_to_non_nullable
              as String,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as Volume?,
      boil_volume: freezed == boil_volume
          ? _value.boil_volume
          : boil_volume // ignore: cast_nullable_to_non_nullable
              as Volume?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Ingredient?,
      food_pairing: freezed == food_pairing
          ? _value._food_pairing
          : food_pairing // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDataModel extends _ProductDataModel {
  _$_ProductDataModel(
      {required this.id,
      this.name = '',
      this.tagline = '',
      this.first_brewed = '',
      this.description = '',
      this.image_url = '',
      this.abv = 0,
      this.ibu = 0,
      this.target_fg = 0,
      this.target_og = 0,
      this.ebc = 0,
      this.srm = 0,
      this.ph = 0,
      this.attenuation_level = 0,
      this.brewers_tips = '',
      this.contributed_by = '',
      this.volume,
      this.boil_volume,
      this.method,
      this.ingredients,
      final List<String>? food_pairing})
      : _food_pairing = food_pairing,
        super._();

  factory _$_ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDataModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String tagline;
  @override
  @JsonKey()
  final String first_brewed;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String image_url;
  @override
  @JsonKey()
  final double abv;
  @override
  @JsonKey()
  final double ibu;
  @override
  @JsonKey()
  final double target_fg;
  @override
  @JsonKey()
  final double target_og;
  @override
  @JsonKey()
  final double ebc;
  @override
  @JsonKey()
  final double srm;
  @override
  @JsonKey()
  final double ph;
  @override
  @JsonKey()
  final double attenuation_level;
  @override
  @JsonKey()
  final String brewers_tips;
  @override
  @JsonKey()
  final String contributed_by;
  @override
  final Volume? volume;
  @override
  final Volume? boil_volume;
  @override
  final Method? method;
  @override
  final Ingredient? ingredients;
  final List<String>? _food_pairing;
  @override
  List<String>? get food_pairing {
    final value = _food_pairing;
    if (value == null) return null;
    if (_food_pairing is EqualUnmodifiableListView) return _food_pairing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDataModel(id: $id, name: $name, tagline: $tagline, first_brewed: $first_brewed, description: $description, image_url: $image_url, abv: $abv, ibu: $ibu, target_fg: $target_fg, target_og: $target_og, ebc: $ebc, srm: $srm, ph: $ph, attenuation_level: $attenuation_level, brewers_tips: $brewers_tips, contributed_by: $contributed_by, volume: $volume, boil_volume: $boil_volume, method: $method, ingredients: $ingredients, food_pairing: $food_pairing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.first_brewed, first_brewed) ||
                other.first_brewed == first_brewed) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.abv, abv) || other.abv == abv) &&
            (identical(other.ibu, ibu) || other.ibu == ibu) &&
            (identical(other.target_fg, target_fg) ||
                other.target_fg == target_fg) &&
            (identical(other.target_og, target_og) ||
                other.target_og == target_og) &&
            (identical(other.ebc, ebc) || other.ebc == ebc) &&
            (identical(other.srm, srm) || other.srm == srm) &&
            (identical(other.ph, ph) || other.ph == ph) &&
            (identical(other.attenuation_level, attenuation_level) ||
                other.attenuation_level == attenuation_level) &&
            (identical(other.brewers_tips, brewers_tips) ||
                other.brewers_tips == brewers_tips) &&
            (identical(other.contributed_by, contributed_by) ||
                other.contributed_by == contributed_by) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.boil_volume, boil_volume) ||
                other.boil_volume == boil_volume) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.ingredients, ingredients) ||
                other.ingredients == ingredients) &&
            const DeepCollectionEquality()
                .equals(other._food_pairing, _food_pairing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        tagline,
        first_brewed,
        description,
        image_url,
        abv,
        ibu,
        target_fg,
        target_og,
        ebc,
        srm,
        ph,
        attenuation_level,
        brewers_tips,
        contributed_by,
        volume,
        boil_volume,
        method,
        ingredients,
        const DeepCollectionEquality().hash(_food_pairing)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDataModelCopyWith<_$_ProductDataModel> get copyWith =>
      __$$_ProductDataModelCopyWithImpl<_$_ProductDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDataModelToJson(
      this,
    );
  }
}

abstract class _ProductDataModel extends ProductDataModel {
  factory _ProductDataModel(
      {required final int id,
      final String name,
      final String tagline,
      final String first_brewed,
      final String description,
      final String image_url,
      final double abv,
      final double ibu,
      final double target_fg,
      final double target_og,
      final double ebc,
      final double srm,
      final double ph,
      final double attenuation_level,
      final String brewers_tips,
      final String contributed_by,
      final Volume? volume,
      final Volume? boil_volume,
      final Method? method,
      final Ingredient? ingredients,
      final List<String>? food_pairing}) = _$_ProductDataModel;
  _ProductDataModel._() : super._();

  factory _ProductDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDataModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get tagline;
  @override
  String get first_brewed;
  @override
  String get description;
  @override
  String get image_url;
  @override
  double get abv;
  @override
  double get ibu;
  @override
  double get target_fg;
  @override
  double get target_og;
  @override
  double get ebc;
  @override
  double get srm;
  @override
  double get ph;
  @override
  double get attenuation_level;
  @override
  String get brewers_tips;
  @override
  String get contributed_by;
  @override
  Volume? get volume;
  @override
  Volume? get boil_volume;
  @override
  Method? get method;
  @override
  Ingredient? get ingredients;
  @override
  List<String>? get food_pairing;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDataModelCopyWith<_$_ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Volume _$VolumeFromJson(Map<String, dynamic> json) {
  return _Volume.fromJson(json);
}

/// @nodoc
mixin _$Volume {
  String get unit => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolumeCopyWith<Volume> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeCopyWith<$Res> {
  factory $VolumeCopyWith(Volume value, $Res Function(Volume) then) =
      _$VolumeCopyWithImpl<$Res, Volume>;
  @useResult
  $Res call({String unit, double value});
}

/// @nodoc
class _$VolumeCopyWithImpl<$Res, $Val extends Volume>
    implements $VolumeCopyWith<$Res> {
  _$VolumeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VolumeCopyWith<$Res> implements $VolumeCopyWith<$Res> {
  factory _$$_VolumeCopyWith(_$_Volume value, $Res Function(_$_Volume) then) =
      __$$_VolumeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String unit, double value});
}

/// @nodoc
class __$$_VolumeCopyWithImpl<$Res>
    extends _$VolumeCopyWithImpl<$Res, _$_Volume>
    implements _$$_VolumeCopyWith<$Res> {
  __$$_VolumeCopyWithImpl(_$_Volume _value, $Res Function(_$_Volume) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? value = null,
  }) {
    return _then(_$_Volume(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Volume extends _Volume {
  _$_Volume({this.unit = '', this.value = 0}) : super._();

  factory _$_Volume.fromJson(Map<String, dynamic> json) =>
      _$$_VolumeFromJson(json);

  @override
  @JsonKey()
  final String unit;
  @override
  @JsonKey()
  final double value;

  @override
  String toString() {
    return 'Volume(unit: $unit, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Volume &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unit, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VolumeCopyWith<_$_Volume> get copyWith =>
      __$$_VolumeCopyWithImpl<_$_Volume>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VolumeToJson(
      this,
    );
  }
}

abstract class _Volume extends Volume {
  factory _Volume({final String unit, final double value}) = _$_Volume;
  _Volume._() : super._();

  factory _Volume.fromJson(Map<String, dynamic> json) = _$_Volume.fromJson;

  @override
  String get unit;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_VolumeCopyWith<_$_Volume> get copyWith =>
      throw _privateConstructorUsedError;
}

Fermentation _$FermentationFromJson(Map<String, dynamic> json) {
  return _Fermentation.fromJson(json);
}

/// @nodoc
mixin _$Fermentation {
  Volume? get temp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FermentationCopyWith<Fermentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FermentationCopyWith<$Res> {
  factory $FermentationCopyWith(
          Fermentation value, $Res Function(Fermentation) then) =
      _$FermentationCopyWithImpl<$Res, Fermentation>;
  @useResult
  $Res call({Volume? temp});

  $VolumeCopyWith<$Res>? get temp;
}

/// @nodoc
class _$FermentationCopyWithImpl<$Res, $Val extends Fermentation>
    implements $FermentationCopyWith<$Res> {
  _$FermentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Volume?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VolumeCopyWith<$Res>? get temp {
    if (_value.temp == null) {
      return null;
    }

    return $VolumeCopyWith<$Res>(_value.temp!, (value) {
      return _then(_value.copyWith(temp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FermentationCopyWith<$Res>
    implements $FermentationCopyWith<$Res> {
  factory _$$_FermentationCopyWith(
          _$_Fermentation value, $Res Function(_$_Fermentation) then) =
      __$$_FermentationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Volume? temp});

  @override
  $VolumeCopyWith<$Res>? get temp;
}

/// @nodoc
class __$$_FermentationCopyWithImpl<$Res>
    extends _$FermentationCopyWithImpl<$Res, _$_Fermentation>
    implements _$$_FermentationCopyWith<$Res> {
  __$$_FermentationCopyWithImpl(
      _$_Fermentation _value, $Res Function(_$_Fermentation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_$_Fermentation(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Volume?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fermentation extends _Fermentation {
  _$_Fermentation({this.temp}) : super._();

  factory _$_Fermentation.fromJson(Map<String, dynamic> json) =>
      _$$_FermentationFromJson(json);

  @override
  final Volume? temp;

  @override
  String toString() {
    return 'Fermentation(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fermentation &&
            (identical(other.temp, temp) || other.temp == temp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FermentationCopyWith<_$_Fermentation> get copyWith =>
      __$$_FermentationCopyWithImpl<_$_Fermentation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FermentationToJson(
      this,
    );
  }
}

abstract class _Fermentation extends Fermentation {
  factory _Fermentation({final Volume? temp}) = _$_Fermentation;
  _Fermentation._() : super._();

  factory _Fermentation.fromJson(Map<String, dynamic> json) =
      _$_Fermentation.fromJson;

  @override
  Volume? get temp;
  @override
  @JsonKey(ignore: true)
  _$$_FermentationCopyWith<_$_Fermentation> get copyWith =>
      throw _privateConstructorUsedError;
}

Method _$MethodFromJson(Map<String, dynamic> json) {
  return _Method.fromJson(json);
}

/// @nodoc
mixin _$Method {
  Fermentation? get fermentation => throw _privateConstructorUsedError;
  List<MashTemp>? get mash_temp => throw _privateConstructorUsedError;
  String get twist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodCopyWith<Method> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodCopyWith<$Res> {
  factory $MethodCopyWith(Method value, $Res Function(Method) then) =
      _$MethodCopyWithImpl<$Res, Method>;
  @useResult
  $Res call(
      {Fermentation? fermentation, List<MashTemp>? mash_temp, String twist});

  $FermentationCopyWith<$Res>? get fermentation;
}

/// @nodoc
class _$MethodCopyWithImpl<$Res, $Val extends Method>
    implements $MethodCopyWith<$Res> {
  _$MethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fermentation = freezed,
    Object? mash_temp = freezed,
    Object? twist = null,
  }) {
    return _then(_value.copyWith(
      fermentation: freezed == fermentation
          ? _value.fermentation
          : fermentation // ignore: cast_nullable_to_non_nullable
              as Fermentation?,
      mash_temp: freezed == mash_temp
          ? _value.mash_temp
          : mash_temp // ignore: cast_nullable_to_non_nullable
              as List<MashTemp>?,
      twist: null == twist
          ? _value.twist
          : twist // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FermentationCopyWith<$Res>? get fermentation {
    if (_value.fermentation == null) {
      return null;
    }

    return $FermentationCopyWith<$Res>(_value.fermentation!, (value) {
      return _then(_value.copyWith(fermentation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MethodCopyWith<$Res> implements $MethodCopyWith<$Res> {
  factory _$$_MethodCopyWith(_$_Method value, $Res Function(_$_Method) then) =
      __$$_MethodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Fermentation? fermentation, List<MashTemp>? mash_temp, String twist});

  @override
  $FermentationCopyWith<$Res>? get fermentation;
}

/// @nodoc
class __$$_MethodCopyWithImpl<$Res>
    extends _$MethodCopyWithImpl<$Res, _$_Method>
    implements _$$_MethodCopyWith<$Res> {
  __$$_MethodCopyWithImpl(_$_Method _value, $Res Function(_$_Method) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fermentation = freezed,
    Object? mash_temp = freezed,
    Object? twist = null,
  }) {
    return _then(_$_Method(
      fermentation: freezed == fermentation
          ? _value.fermentation
          : fermentation // ignore: cast_nullable_to_non_nullable
              as Fermentation?,
      mash_temp: freezed == mash_temp
          ? _value._mash_temp
          : mash_temp // ignore: cast_nullable_to_non_nullable
              as List<MashTemp>?,
      twist: null == twist
          ? _value.twist
          : twist // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Method extends _Method {
  _$_Method(
      {this.fermentation, final List<MashTemp>? mash_temp, this.twist = ''})
      : _mash_temp = mash_temp,
        super._();

  factory _$_Method.fromJson(Map<String, dynamic> json) =>
      _$$_MethodFromJson(json);

  @override
  final Fermentation? fermentation;
  final List<MashTemp>? _mash_temp;
  @override
  List<MashTemp>? get mash_temp {
    final value = _mash_temp;
    if (value == null) return null;
    if (_mash_temp is EqualUnmodifiableListView) return _mash_temp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String twist;

  @override
  String toString() {
    return 'Method(fermentation: $fermentation, mash_temp: $mash_temp, twist: $twist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Method &&
            (identical(other.fermentation, fermentation) ||
                other.fermentation == fermentation) &&
            const DeepCollectionEquality()
                .equals(other._mash_temp, _mash_temp) &&
            (identical(other.twist, twist) || other.twist == twist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fermentation,
      const DeepCollectionEquality().hash(_mash_temp), twist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MethodCopyWith<_$_Method> get copyWith =>
      __$$_MethodCopyWithImpl<_$_Method>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MethodToJson(
      this,
    );
  }
}

abstract class _Method extends Method {
  factory _Method(
      {final Fermentation? fermentation,
      final List<MashTemp>? mash_temp,
      final String twist}) = _$_Method;
  _Method._() : super._();

  factory _Method.fromJson(Map<String, dynamic> json) = _$_Method.fromJson;

  @override
  Fermentation? get fermentation;
  @override
  List<MashTemp>? get mash_temp;
  @override
  String get twist;
  @override
  @JsonKey(ignore: true)
  _$$_MethodCopyWith<_$_Method> get copyWith =>
      throw _privateConstructorUsedError;
}

MashTemp _$MashTempFromJson(Map<String, dynamic> json) {
  return _MashTemp.fromJson(json);
}

/// @nodoc
mixin _$MashTemp {
  Volume? get temp => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MashTempCopyWith<MashTemp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MashTempCopyWith<$Res> {
  factory $MashTempCopyWith(MashTemp value, $Res Function(MashTemp) then) =
      _$MashTempCopyWithImpl<$Res, MashTemp>;
  @useResult
  $Res call({Volume? temp, double duration});

  $VolumeCopyWith<$Res>? get temp;
}

/// @nodoc
class _$MashTempCopyWithImpl<$Res, $Val extends MashTemp>
    implements $MashTempCopyWith<$Res> {
  _$MashTempCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Volume?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VolumeCopyWith<$Res>? get temp {
    if (_value.temp == null) {
      return null;
    }

    return $VolumeCopyWith<$Res>(_value.temp!, (value) {
      return _then(_value.copyWith(temp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MashTempCopyWith<$Res> implements $MashTempCopyWith<$Res> {
  factory _$$_MashTempCopyWith(
          _$_MashTemp value, $Res Function(_$_MashTemp) then) =
      __$$_MashTempCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Volume? temp, double duration});

  @override
  $VolumeCopyWith<$Res>? get temp;
}

/// @nodoc
class __$$_MashTempCopyWithImpl<$Res>
    extends _$MashTempCopyWithImpl<$Res, _$_MashTemp>
    implements _$$_MashTempCopyWith<$Res> {
  __$$_MashTempCopyWithImpl(
      _$_MashTemp _value, $Res Function(_$_MashTemp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? duration = null,
  }) {
    return _then(_$_MashTemp(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Volume?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MashTemp extends _MashTemp {
  _$_MashTemp({this.temp, this.duration = 0}) : super._();

  factory _$_MashTemp.fromJson(Map<String, dynamic> json) =>
      _$$_MashTempFromJson(json);

  @override
  final Volume? temp;
  @override
  @JsonKey()
  final double duration;

  @override
  String toString() {
    return 'MashTemp(temp: $temp, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MashTemp &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MashTempCopyWith<_$_MashTemp> get copyWith =>
      __$$_MashTempCopyWithImpl<_$_MashTemp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MashTempToJson(
      this,
    );
  }
}

abstract class _MashTemp extends MashTemp {
  factory _MashTemp({final Volume? temp, final double duration}) = _$_MashTemp;
  _MashTemp._() : super._();

  factory _MashTemp.fromJson(Map<String, dynamic> json) = _$_MashTemp.fromJson;

  @override
  Volume? get temp;
  @override
  double get duration;
  @override
  @JsonKey(ignore: true)
  _$$_MashTempCopyWith<_$_MashTemp> get copyWith =>
      throw _privateConstructorUsedError;
}

Malt _$MaltFromJson(Map<String, dynamic> json) {
  return _Malt.fromJson(json);
}

/// @nodoc
mixin _$Malt {
  String get name => throw _privateConstructorUsedError;
  Volume? get amount => throw _privateConstructorUsedError;
  String get add => throw _privateConstructorUsedError;
  String get attribute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaltCopyWith<Malt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaltCopyWith<$Res> {
  factory $MaltCopyWith(Malt value, $Res Function(Malt) then) =
      _$MaltCopyWithImpl<$Res, Malt>;
  @useResult
  $Res call({String name, Volume? amount, String add, String attribute});

  $VolumeCopyWith<$Res>? get amount;
}

/// @nodoc
class _$MaltCopyWithImpl<$Res, $Val extends Malt>
    implements $MaltCopyWith<$Res> {
  _$MaltCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = freezed,
    Object? add = null,
    Object? attribute = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Volume?,
      add: null == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as String,
      attribute: null == attribute
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VolumeCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $VolumeCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MaltCopyWith<$Res> implements $MaltCopyWith<$Res> {
  factory _$$_MaltCopyWith(_$_Malt value, $Res Function(_$_Malt) then) =
      __$$_MaltCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Volume? amount, String add, String attribute});

  @override
  $VolumeCopyWith<$Res>? get amount;
}

/// @nodoc
class __$$_MaltCopyWithImpl<$Res> extends _$MaltCopyWithImpl<$Res, _$_Malt>
    implements _$$_MaltCopyWith<$Res> {
  __$$_MaltCopyWithImpl(_$_Malt _value, $Res Function(_$_Malt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = freezed,
    Object? add = null,
    Object? attribute = null,
  }) {
    return _then(_$_Malt(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Volume?,
      add: null == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as String,
      attribute: null == attribute
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Malt extends _Malt {
  _$_Malt({this.name = '', this.amount, this.add = '', this.attribute = ''})
      : super._();

  factory _$_Malt.fromJson(Map<String, dynamic> json) => _$$_MaltFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  final Volume? amount;
  @override
  @JsonKey()
  final String add;
  @override
  @JsonKey()
  final String attribute;

  @override
  String toString() {
    return 'Malt(name: $name, amount: $amount, add: $add, attribute: $attribute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Malt &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.add, add) || other.add == add) &&
            (identical(other.attribute, attribute) ||
                other.attribute == attribute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, add, attribute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaltCopyWith<_$_Malt> get copyWith =>
      __$$_MaltCopyWithImpl<_$_Malt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaltToJson(
      this,
    );
  }
}

abstract class _Malt extends Malt {
  factory _Malt(
      {final String name,
      final Volume? amount,
      final String add,
      final String attribute}) = _$_Malt;
  _Malt._() : super._();

  factory _Malt.fromJson(Map<String, dynamic> json) = _$_Malt.fromJson;

  @override
  String get name;
  @override
  Volume? get amount;
  @override
  String get add;
  @override
  String get attribute;
  @override
  @JsonKey(ignore: true)
  _$$_MaltCopyWith<_$_Malt> get copyWith => throw _privateConstructorUsedError;
}

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  List<Malt>? get malt => throw _privateConstructorUsedError;
  List<Malt>? get hops => throw _privateConstructorUsedError;
  String get yeast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res, Ingredient>;
  @useResult
  $Res call({List<Malt>? malt, List<Malt>? hops, String yeast});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res, $Val extends Ingredient>
    implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malt = freezed,
    Object? hops = freezed,
    Object? yeast = null,
  }) {
    return _then(_value.copyWith(
      malt: freezed == malt
          ? _value.malt
          : malt // ignore: cast_nullable_to_non_nullable
              as List<Malt>?,
      hops: freezed == hops
          ? _value.hops
          : hops // ignore: cast_nullable_to_non_nullable
              as List<Malt>?,
      yeast: null == yeast
          ? _value.yeast
          : yeast // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$_IngredientCopyWith(
          _$_Ingredient value, $Res Function(_$_Ingredient) then) =
      __$$_IngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Malt>? malt, List<Malt>? hops, String yeast});
}

/// @nodoc
class __$$_IngredientCopyWithImpl<$Res>
    extends _$IngredientCopyWithImpl<$Res, _$_Ingredient>
    implements _$$_IngredientCopyWith<$Res> {
  __$$_IngredientCopyWithImpl(
      _$_Ingredient _value, $Res Function(_$_Ingredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malt = freezed,
    Object? hops = freezed,
    Object? yeast = null,
  }) {
    return _then(_$_Ingredient(
      malt: freezed == malt
          ? _value._malt
          : malt // ignore: cast_nullable_to_non_nullable
              as List<Malt>?,
      hops: freezed == hops
          ? _value._hops
          : hops // ignore: cast_nullable_to_non_nullable
              as List<Malt>?,
      yeast: null == yeast
          ? _value.yeast
          : yeast // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ingredient extends _Ingredient {
  _$_Ingredient(
      {final List<Malt>? malt, final List<Malt>? hops, this.yeast = ''})
      : _malt = malt,
        _hops = hops,
        super._();

  factory _$_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientFromJson(json);

  final List<Malt>? _malt;
  @override
  List<Malt>? get malt {
    final value = _malt;
    if (value == null) return null;
    if (_malt is EqualUnmodifiableListView) return _malt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Malt>? _hops;
  @override
  List<Malt>? get hops {
    final value = _hops;
    if (value == null) return null;
    if (_hops is EqualUnmodifiableListView) return _hops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String yeast;

  @override
  String toString() {
    return 'Ingredient(malt: $malt, hops: $hops, yeast: $yeast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ingredient &&
            const DeepCollectionEquality().equals(other._malt, _malt) &&
            const DeepCollectionEquality().equals(other._hops, _hops) &&
            (identical(other.yeast, yeast) || other.yeast == yeast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_malt),
      const DeepCollectionEquality().hash(_hops),
      yeast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      __$$_IngredientCopyWithImpl<_$_Ingredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientToJson(
      this,
    );
  }
}

abstract class _Ingredient extends Ingredient {
  factory _Ingredient(
      {final List<Malt>? malt,
      final List<Malt>? hops,
      final String yeast}) = _$_Ingredient;
  _Ingredient._() : super._();

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$_Ingredient.fromJson;

  @override
  List<Malt>? get malt;
  @override
  List<Malt>? get hops;
  @override
  String get yeast;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
