// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  String? get street => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  CoordinatesModel? get coordinates => throw _privateConstructorUsedError;

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {String? street,
      String? region,
      String? postalCode,
      CoordinatesModel? coordinates});

  $CoordinatesModelCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? region = freezed,
    Object? postalCode = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesModel?,
    ) as $Val);
  }

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinatesModelCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesModelCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
          _$AddressModelImpl value, $Res Function(_$AddressModelImpl) then) =
      __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? street,
      String? region,
      String? postalCode,
      CoordinatesModel? coordinates});

  @override
  $CoordinatesModelCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
      _$AddressModelImpl _value, $Res Function(_$AddressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? region = freezed,
    Object? postalCode = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$AddressModelImpl(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  _$AddressModelImpl(
      {this.street, this.region, this.postalCode, this.coordinates});

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  final String? street;
  @override
  final String? region;
  @override
  final String? postalCode;
  @override
  final CoordinatesModel? coordinates;

  @override
  String toString() {
    return 'AddressModel(street: $street, region: $region, postalCode: $postalCode, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, street, region, postalCode, coordinates);

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  factory _AddressModel(
      {final String? street,
      final String? region,
      final String? postalCode,
      final CoordinatesModel? coordinates}) = _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  String? get street;
  @override
  String? get region;
  @override
  String? get postalCode;
  @override
  CoordinatesModel? get coordinates;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoordinatesModel _$CoordinatesModelFromJson(Map<String, dynamic> json) {
  return _CoordinatesModel.fromJson(json);
}

/// @nodoc
mixin _$CoordinatesModel {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  /// Serializes this CoordinatesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinatesModelCopyWith<CoordinatesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesModelCopyWith<$Res> {
  factory $CoordinatesModelCopyWith(
          CoordinatesModel value, $Res Function(CoordinatesModel) then) =
      _$CoordinatesModelCopyWithImpl<$Res, CoordinatesModel>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$CoordinatesModelCopyWithImpl<$Res, $Val extends CoordinatesModel>
    implements $CoordinatesModelCopyWith<$Res> {
  _$CoordinatesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinatesModelImplCopyWith<$Res>
    implements $CoordinatesModelCopyWith<$Res> {
  factory _$$CoordinatesModelImplCopyWith(_$CoordinatesModelImpl value,
          $Res Function(_$CoordinatesModelImpl) then) =
      __$$CoordinatesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$CoordinatesModelImplCopyWithImpl<$Res>
    extends _$CoordinatesModelCopyWithImpl<$Res, _$CoordinatesModelImpl>
    implements _$$CoordinatesModelImplCopyWith<$Res> {
  __$$CoordinatesModelImplCopyWithImpl(_$CoordinatesModelImpl _value,
      $Res Function(_$CoordinatesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$CoordinatesModelImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinatesModelImpl implements _CoordinatesModel {
  _$CoordinatesModelImpl({this.latitude, this.longitude});

  factory _$CoordinatesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatesModelImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'CoordinatesModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesModelImplCopyWith<_$CoordinatesModelImpl> get copyWith =>
      __$$CoordinatesModelImplCopyWithImpl<_$CoordinatesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatesModelImplToJson(
      this,
    );
  }
}

abstract class _CoordinatesModel implements CoordinatesModel {
  factory _CoordinatesModel({final double? latitude, final double? longitude}) =
      _$CoordinatesModelImpl;

  factory _CoordinatesModel.fromJson(Map<String, dynamic> json) =
      _$CoordinatesModelImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatesModelImplCopyWith<_$CoordinatesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  AddressModel? get address => throw _privateConstructorUsedError;

  /// Serializes this LocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call({String? country, String? city, AddressModel? address});

  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? city = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ) as $Val);
  }

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? country, String? city, AddressModel? address});

  @override
  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? city = freezed,
    Object? address = freezed,
  }) {
    return _then(_$LocationModelImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl implements _LocationModel {
  _$LocationModelImpl({this.country, this.city, this.address});

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  final String? country;
  @override
  final String? city;
  @override
  final AddressModel? address;

  @override
  String toString() {
    return 'LocationModel(country: $country, city: $city, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, city, address);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  factory _LocationModel(
      {final String? country,
      final String? city,
      final AddressModel? address}) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  String? get country;
  @override
  String? get city;
  @override
  AddressModel? get address;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvatarModel _$AvatarModelFromJson(Map<String, dynamic> json) {
  return _AvatarModel.fromJson(json);
}

/// @nodoc
mixin _$AvatarModel {
  String? get url => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this AvatarModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvatarModelCopyWith<AvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarModelCopyWith<$Res> {
  factory $AvatarModelCopyWith(
          AvatarModel value, $Res Function(AvatarModel) then) =
      _$AvatarModelCopyWithImpl<$Res, AvatarModel>;
  @useResult
  $Res call(
      {String? url,
      String? filename,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt});
}

/// @nodoc
class _$AvatarModelCopyWithImpl<$Res, $Val extends AvatarModel>
    implements $AvatarModelCopyWith<$Res> {
  _$AvatarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? filename = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarModelImplCopyWith<$Res>
    implements $AvatarModelCopyWith<$Res> {
  factory _$$AvatarModelImplCopyWith(
          _$AvatarModelImpl value, $Res Function(_$AvatarModelImpl) then) =
      __$$AvatarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      String? filename,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? uploadedAt});
}

/// @nodoc
class __$$AvatarModelImplCopyWithImpl<$Res>
    extends _$AvatarModelCopyWithImpl<$Res, _$AvatarModelImpl>
    implements _$$AvatarModelImplCopyWith<$Res> {
  __$$AvatarModelImplCopyWithImpl(
      _$AvatarModelImpl _value, $Res Function(_$AvatarModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? filename = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_$AvatarModelImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarModelImpl implements _AvatarModel {
  _$AvatarModelImpl(
      {this.url,
      this.filename,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.uploadedAt});

  factory _$AvatarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarModelImplFromJson(json);

  @override
  final String? url;
  @override
  final String? filename;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? uploadedAt;

  @override
  String toString() {
    return 'AvatarModel(url: $url, filename: $filename, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, filename, uploadedAt);

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarModelImplCopyWith<_$AvatarModelImpl> get copyWith =>
      __$$AvatarModelImplCopyWithImpl<_$AvatarModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarModelImplToJson(
      this,
    );
  }
}

abstract class _AvatarModel implements AvatarModel {
  factory _AvatarModel(
      {final String? url,
      final String? filename,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? uploadedAt}) = _$AvatarModelImpl;

  factory _AvatarModel.fromJson(Map<String, dynamic> json) =
      _$AvatarModelImpl.fromJson;

  @override
  String? get url;
  @override
  String? get filename;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get uploadedAt;

  /// Create a copy of AvatarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvatarModelImplCopyWith<_$AvatarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvestmentPreferencesModel _$InvestmentPreferencesModelFromJson(
    Map<String, dynamic> json) {
  return _InvestmentPreferencesModel.fromJson(json);
}

/// @nodoc
mixin _$InvestmentPreferencesModel {
  List<String>? get sectors => throw _privateConstructorUsedError;
  double? get minAmount => throw _privateConstructorUsedError;
  double? get maxAmount => throw _privateConstructorUsedError;
  List<String>? get regions => throw _privateConstructorUsedError;

  /// Serializes this InvestmentPreferencesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestmentPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestmentPreferencesModelCopyWith<InvestmentPreferencesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentPreferencesModelCopyWith<$Res> {
  factory $InvestmentPreferencesModelCopyWith(InvestmentPreferencesModel value,
          $Res Function(InvestmentPreferencesModel) then) =
      _$InvestmentPreferencesModelCopyWithImpl<$Res,
          InvestmentPreferencesModel>;
  @useResult
  $Res call(
      {List<String>? sectors,
      double? minAmount,
      double? maxAmount,
      List<String>? regions});
}

/// @nodoc
class _$InvestmentPreferencesModelCopyWithImpl<$Res,
        $Val extends InvestmentPreferencesModel>
    implements $InvestmentPreferencesModelCopyWith<$Res> {
  _$InvestmentPreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestmentPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectors = freezed,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? regions = freezed,
  }) {
    return _then(_value.copyWith(
      sectors: freezed == sectors
          ? _value.sectors
          : sectors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minAmount: freezed == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAmount: freezed == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestmentPreferencesModelImplCopyWith<$Res>
    implements $InvestmentPreferencesModelCopyWith<$Res> {
  factory _$$InvestmentPreferencesModelImplCopyWith(
          _$InvestmentPreferencesModelImpl value,
          $Res Function(_$InvestmentPreferencesModelImpl) then) =
      __$$InvestmentPreferencesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? sectors,
      double? minAmount,
      double? maxAmount,
      List<String>? regions});
}

/// @nodoc
class __$$InvestmentPreferencesModelImplCopyWithImpl<$Res>
    extends _$InvestmentPreferencesModelCopyWithImpl<$Res,
        _$InvestmentPreferencesModelImpl>
    implements _$$InvestmentPreferencesModelImplCopyWith<$Res> {
  __$$InvestmentPreferencesModelImplCopyWithImpl(
      _$InvestmentPreferencesModelImpl _value,
      $Res Function(_$InvestmentPreferencesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestmentPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectors = freezed,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? regions = freezed,
  }) {
    return _then(_$InvestmentPreferencesModelImpl(
      sectors: freezed == sectors
          ? _value._sectors
          : sectors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minAmount: freezed == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAmount: freezed == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      regions: freezed == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentPreferencesModelImpl implements _InvestmentPreferencesModel {
  _$InvestmentPreferencesModelImpl(
      {final List<String>? sectors,
      this.minAmount,
      this.maxAmount,
      final List<String>? regions})
      : _sectors = sectors,
        _regions = regions;

  factory _$InvestmentPreferencesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InvestmentPreferencesModelImplFromJson(json);

  final List<String>? _sectors;
  @override
  List<String>? get sectors {
    final value = _sectors;
    if (value == null) return null;
    if (_sectors is EqualUnmodifiableListView) return _sectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? minAmount;
  @override
  final double? maxAmount;
  final List<String>? _regions;
  @override
  List<String>? get regions {
    final value = _regions;
    if (value == null) return null;
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvestmentPreferencesModel(sectors: $sectors, minAmount: $minAmount, maxAmount: $maxAmount, regions: $regions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentPreferencesModelImpl &&
            const DeepCollectionEquality().equals(other._sectors, _sectors) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sectors),
      minAmount,
      maxAmount,
      const DeepCollectionEquality().hash(_regions));

  /// Create a copy of InvestmentPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentPreferencesModelImplCopyWith<_$InvestmentPreferencesModelImpl>
      get copyWith => __$$InvestmentPreferencesModelImplCopyWithImpl<
          _$InvestmentPreferencesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentPreferencesModelImplToJson(
      this,
    );
  }
}

abstract class _InvestmentPreferencesModel
    implements InvestmentPreferencesModel {
  factory _InvestmentPreferencesModel(
      {final List<String>? sectors,
      final double? minAmount,
      final double? maxAmount,
      final List<String>? regions}) = _$InvestmentPreferencesModelImpl;

  factory _InvestmentPreferencesModel.fromJson(Map<String, dynamic> json) =
      _$InvestmentPreferencesModelImpl.fromJson;

  @override
  List<String>? get sectors;
  @override
  double? get minAmount;
  @override
  double? get maxAmount;
  @override
  List<String>? get regions;

  /// Create a copy of InvestmentPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestmentPreferencesModelImplCopyWith<_$InvestmentPreferencesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvestorProfileModel _$InvestorProfileModelFromJson(Map<String, dynamic> json) {
  return _InvestorProfileModel.fromJson(json);
}

/// @nodoc
mixin _$InvestorProfileModel {
  String? get riskTolerance => throw _privateConstructorUsedError;
  InvestmentPreferencesModel? get investmentPreferences =>
      throw _privateConstructorUsedError;
  double? get totalInvested => throw _privateConstructorUsedError;
  int? get activeInvestments => throw _privateConstructorUsedError;

  /// Serializes this InvestorProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvestorProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvestorProfileModelCopyWith<InvestorProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestorProfileModelCopyWith<$Res> {
  factory $InvestorProfileModelCopyWith(InvestorProfileModel value,
          $Res Function(InvestorProfileModel) then) =
      _$InvestorProfileModelCopyWithImpl<$Res, InvestorProfileModel>;
  @useResult
  $Res call(
      {String? riskTolerance,
      InvestmentPreferencesModel? investmentPreferences,
      double? totalInvested,
      int? activeInvestments});

  $InvestmentPreferencesModelCopyWith<$Res>? get investmentPreferences;
}

/// @nodoc
class _$InvestorProfileModelCopyWithImpl<$Res,
        $Val extends InvestorProfileModel>
    implements $InvestorProfileModelCopyWith<$Res> {
  _$InvestorProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvestorProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? riskTolerance = freezed,
    Object? investmentPreferences = freezed,
    Object? totalInvested = freezed,
    Object? activeInvestments = freezed,
  }) {
    return _then(_value.copyWith(
      riskTolerance: freezed == riskTolerance
          ? _value.riskTolerance
          : riskTolerance // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentPreferences: freezed == investmentPreferences
          ? _value.investmentPreferences
          : investmentPreferences // ignore: cast_nullable_to_non_nullable
              as InvestmentPreferencesModel?,
      totalInvested: freezed == totalInvested
          ? _value.totalInvested
          : totalInvested // ignore: cast_nullable_to_non_nullable
              as double?,
      activeInvestments: freezed == activeInvestments
          ? _value.activeInvestments
          : activeInvestments // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of InvestorProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestmentPreferencesModelCopyWith<$Res>? get investmentPreferences {
    if (_value.investmentPreferences == null) {
      return null;
    }

    return $InvestmentPreferencesModelCopyWith<$Res>(
        _value.investmentPreferences!, (value) {
      return _then(_value.copyWith(investmentPreferences: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvestorProfileModelImplCopyWith<$Res>
    implements $InvestorProfileModelCopyWith<$Res> {
  factory _$$InvestorProfileModelImplCopyWith(_$InvestorProfileModelImpl value,
          $Res Function(_$InvestorProfileModelImpl) then) =
      __$$InvestorProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? riskTolerance,
      InvestmentPreferencesModel? investmentPreferences,
      double? totalInvested,
      int? activeInvestments});

  @override
  $InvestmentPreferencesModelCopyWith<$Res>? get investmentPreferences;
}

/// @nodoc
class __$$InvestorProfileModelImplCopyWithImpl<$Res>
    extends _$InvestorProfileModelCopyWithImpl<$Res, _$InvestorProfileModelImpl>
    implements _$$InvestorProfileModelImplCopyWith<$Res> {
  __$$InvestorProfileModelImplCopyWithImpl(_$InvestorProfileModelImpl _value,
      $Res Function(_$InvestorProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvestorProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? riskTolerance = freezed,
    Object? investmentPreferences = freezed,
    Object? totalInvested = freezed,
    Object? activeInvestments = freezed,
  }) {
    return _then(_$InvestorProfileModelImpl(
      riskTolerance: freezed == riskTolerance
          ? _value.riskTolerance
          : riskTolerance // ignore: cast_nullable_to_non_nullable
              as String?,
      investmentPreferences: freezed == investmentPreferences
          ? _value.investmentPreferences
          : investmentPreferences // ignore: cast_nullable_to_non_nullable
              as InvestmentPreferencesModel?,
      totalInvested: freezed == totalInvested
          ? _value.totalInvested
          : totalInvested // ignore: cast_nullable_to_non_nullable
              as double?,
      activeInvestments: freezed == activeInvestments
          ? _value.activeInvestments
          : activeInvestments // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestorProfileModelImpl implements _InvestorProfileModel {
  _$InvestorProfileModelImpl(
      {this.riskTolerance,
      this.investmentPreferences,
      this.totalInvested,
      this.activeInvestments});

  factory _$InvestorProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestorProfileModelImplFromJson(json);

  @override
  final String? riskTolerance;
  @override
  final InvestmentPreferencesModel? investmentPreferences;
  @override
  final double? totalInvested;
  @override
  final int? activeInvestments;

  @override
  String toString() {
    return 'InvestorProfileModel(riskTolerance: $riskTolerance, investmentPreferences: $investmentPreferences, totalInvested: $totalInvested, activeInvestments: $activeInvestments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestorProfileModelImpl &&
            (identical(other.riskTolerance, riskTolerance) ||
                other.riskTolerance == riskTolerance) &&
            (identical(other.investmentPreferences, investmentPreferences) ||
                other.investmentPreferences == investmentPreferences) &&
            (identical(other.totalInvested, totalInvested) ||
                other.totalInvested == totalInvested) &&
            (identical(other.activeInvestments, activeInvestments) ||
                other.activeInvestments == activeInvestments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, riskTolerance,
      investmentPreferences, totalInvested, activeInvestments);

  /// Create a copy of InvestorProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestorProfileModelImplCopyWith<_$InvestorProfileModelImpl>
      get copyWith =>
          __$$InvestorProfileModelImplCopyWithImpl<_$InvestorProfileModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestorProfileModelImplToJson(
      this,
    );
  }
}

abstract class _InvestorProfileModel implements InvestorProfileModel {
  factory _InvestorProfileModel(
      {final String? riskTolerance,
      final InvestmentPreferencesModel? investmentPreferences,
      final double? totalInvested,
      final int? activeInvestments}) = _$InvestorProfileModelImpl;

  factory _InvestorProfileModel.fromJson(Map<String, dynamic> json) =
      _$InvestorProfileModelImpl.fromJson;

  @override
  String? get riskTolerance;
  @override
  InvestmentPreferencesModel? get investmentPreferences;
  @override
  double? get totalInvested;
  @override
  int? get activeInvestments;

  /// Create a copy of InvestorProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvestorProfileModelImplCopyWith<_$InvestorProfileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) {
  return _CompanyModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get registrationNumber => throw _privateConstructorUsedError;
  int? get foundedYear => throw _privateConstructorUsedError;

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
          CompanyModel value, $Res Function(CompanyModel) then) =
      _$CompanyModelCopyWithImpl<$Res, CompanyModel>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? website,
      String? registrationNumber,
      int? foundedYear});
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res, $Val extends CompanyModel>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? website = freezed,
    Object? registrationNumber = freezed,
    Object? foundedYear = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _value.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      foundedYear: freezed == foundedYear
          ? _value.foundedYear
          : foundedYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyModelImplCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$$CompanyModelImplCopyWith(
          _$CompanyModelImpl value, $Res Function(_$CompanyModelImpl) then) =
      __$$CompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? website,
      String? registrationNumber,
      int? foundedYear});
}

/// @nodoc
class __$$CompanyModelImplCopyWithImpl<$Res>
    extends _$CompanyModelCopyWithImpl<$Res, _$CompanyModelImpl>
    implements _$$CompanyModelImplCopyWith<$Res> {
  __$$CompanyModelImplCopyWithImpl(
      _$CompanyModelImpl _value, $Res Function(_$CompanyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? website = freezed,
    Object? registrationNumber = freezed,
    Object? foundedYear = freezed,
  }) {
    return _then(_$CompanyModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _value.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      foundedYear: freezed == foundedYear
          ? _value.foundedYear
          : foundedYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyModelImpl implements _CompanyModel {
  _$CompanyModelImpl(
      {this.name,
      this.description,
      this.website,
      this.registrationNumber,
      this.foundedYear});

  factory _$CompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? website;
  @override
  final String? registrationNumber;
  @override
  final int? foundedYear;

  @override
  String toString() {
    return 'CompanyModel(name: $name, description: $description, website: $website, registrationNumber: $registrationNumber, foundedYear: $foundedYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.foundedYear, foundedYear) ||
                other.foundedYear == foundedYear));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, website, registrationNumber, foundedYear);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      __$$CompanyModelImplCopyWithImpl<_$CompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyModelImplToJson(
      this,
    );
  }
}

abstract class _CompanyModel implements CompanyModel {
  factory _CompanyModel(
      {final String? name,
      final String? description,
      final String? website,
      final String? registrationNumber,
      final int? foundedYear}) = _$CompanyModelImpl;

  factory _CompanyModel.fromJson(Map<String, dynamic> json) =
      _$CompanyModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get website;
  @override
  String? get registrationNumber;
  @override
  int? get foundedYear;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectOwnerProfileModel _$ProjectOwnerProfileModelFromJson(
    Map<String, dynamic> json) {
  return _ProjectOwnerProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectOwnerProfileModel {
  CompanyModel? get company => throw _privateConstructorUsedError;
  List<String>? get skills => throw _privateConstructorUsedError;
  String? get experience => throw _privateConstructorUsedError;
  int? get totalProjectsCreated => throw _privateConstructorUsedError;
  int? get successfulProjects => throw _privateConstructorUsedError;

  /// Serializes this ProjectOwnerProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectOwnerProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectOwnerProfileModelCopyWith<ProjectOwnerProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectOwnerProfileModelCopyWith<$Res> {
  factory $ProjectOwnerProfileModelCopyWith(ProjectOwnerProfileModel value,
          $Res Function(ProjectOwnerProfileModel) then) =
      _$ProjectOwnerProfileModelCopyWithImpl<$Res, ProjectOwnerProfileModel>;
  @useResult
  $Res call(
      {CompanyModel? company,
      List<String>? skills,
      String? experience,
      int? totalProjectsCreated,
      int? successfulProjects});

  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class _$ProjectOwnerProfileModelCopyWithImpl<$Res,
        $Val extends ProjectOwnerProfileModel>
    implements $ProjectOwnerProfileModelCopyWith<$Res> {
  _$ProjectOwnerProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectOwnerProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? skills = freezed,
    Object? experience = freezed,
    Object? totalProjectsCreated = freezed,
    Object? successfulProjects = freezed,
  }) {
    return _then(_value.copyWith(
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      totalProjectsCreated: freezed == totalProjectsCreated
          ? _value.totalProjectsCreated
          : totalProjectsCreated // ignore: cast_nullable_to_non_nullable
              as int?,
      successfulProjects: freezed == successfulProjects
          ? _value.successfulProjects
          : successfulProjects // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ProjectOwnerProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyModelCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectOwnerProfileModelImplCopyWith<$Res>
    implements $ProjectOwnerProfileModelCopyWith<$Res> {
  factory _$$ProjectOwnerProfileModelImplCopyWith(
          _$ProjectOwnerProfileModelImpl value,
          $Res Function(_$ProjectOwnerProfileModelImpl) then) =
      __$$ProjectOwnerProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CompanyModel? company,
      List<String>? skills,
      String? experience,
      int? totalProjectsCreated,
      int? successfulProjects});

  @override
  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class __$$ProjectOwnerProfileModelImplCopyWithImpl<$Res>
    extends _$ProjectOwnerProfileModelCopyWithImpl<$Res,
        _$ProjectOwnerProfileModelImpl>
    implements _$$ProjectOwnerProfileModelImplCopyWith<$Res> {
  __$$ProjectOwnerProfileModelImplCopyWithImpl(
      _$ProjectOwnerProfileModelImpl _value,
      $Res Function(_$ProjectOwnerProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectOwnerProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? skills = freezed,
    Object? experience = freezed,
    Object? totalProjectsCreated = freezed,
    Object? successfulProjects = freezed,
  }) {
    return _then(_$ProjectOwnerProfileModelImpl(
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      totalProjectsCreated: freezed == totalProjectsCreated
          ? _value.totalProjectsCreated
          : totalProjectsCreated // ignore: cast_nullable_to_non_nullable
              as int?,
      successfulProjects: freezed == successfulProjects
          ? _value.successfulProjects
          : successfulProjects // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectOwnerProfileModelImpl implements _ProjectOwnerProfileModel {
  _$ProjectOwnerProfileModelImpl(
      {this.company,
      final List<String>? skills,
      this.experience,
      this.totalProjectsCreated,
      this.successfulProjects})
      : _skills = skills;

  factory _$ProjectOwnerProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectOwnerProfileModelImplFromJson(json);

  @override
  final CompanyModel? company;
  final List<String>? _skills;
  @override
  List<String>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? experience;
  @override
  final int? totalProjectsCreated;
  @override
  final int? successfulProjects;

  @override
  String toString() {
    return 'ProjectOwnerProfileModel(company: $company, skills: $skills, experience: $experience, totalProjectsCreated: $totalProjectsCreated, successfulProjects: $successfulProjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectOwnerProfileModelImpl &&
            (identical(other.company, company) || other.company == company) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.totalProjectsCreated, totalProjectsCreated) ||
                other.totalProjectsCreated == totalProjectsCreated) &&
            (identical(other.successfulProjects, successfulProjects) ||
                other.successfulProjects == successfulProjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      company,
      const DeepCollectionEquality().hash(_skills),
      experience,
      totalProjectsCreated,
      successfulProjects);

  /// Create a copy of ProjectOwnerProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectOwnerProfileModelImplCopyWith<_$ProjectOwnerProfileModelImpl>
      get copyWith => __$$ProjectOwnerProfileModelImplCopyWithImpl<
          _$ProjectOwnerProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectOwnerProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectOwnerProfileModel implements ProjectOwnerProfileModel {
  factory _ProjectOwnerProfileModel(
      {final CompanyModel? company,
      final List<String>? skills,
      final String? experience,
      final int? totalProjectsCreated,
      final int? successfulProjects}) = _$ProjectOwnerProfileModelImpl;

  factory _ProjectOwnerProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProjectOwnerProfileModelImpl.fromJson;

  @override
  CompanyModel? get company;
  @override
  List<String>? get skills;
  @override
  String? get experience;
  @override
  int? get totalProjectsCreated;
  @override
  int? get successfulProjects;

  /// Create a copy of ProjectOwnerProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectOwnerProfileModelImplCopyWith<_$ProjectOwnerProfileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EmailNotificationsModel _$EmailNotificationsModelFromJson(
    Map<String, dynamic> json) {
  return _EmailNotificationsModel.fromJson(json);
}

/// @nodoc
mixin _$EmailNotificationsModel {
  bool? get marketing => throw _privateConstructorUsedError;
  bool? get updates => throw _privateConstructorUsedError;
  bool? get security => throw _privateConstructorUsedError;

  /// Serializes this EmailNotificationsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmailNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmailNotificationsModelCopyWith<EmailNotificationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailNotificationsModelCopyWith<$Res> {
  factory $EmailNotificationsModelCopyWith(EmailNotificationsModel value,
          $Res Function(EmailNotificationsModel) then) =
      _$EmailNotificationsModelCopyWithImpl<$Res, EmailNotificationsModel>;
  @useResult
  $Res call({bool? marketing, bool? updates, bool? security});
}

/// @nodoc
class _$EmailNotificationsModelCopyWithImpl<$Res,
        $Val extends EmailNotificationsModel>
    implements $EmailNotificationsModelCopyWith<$Res> {
  _$EmailNotificationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketing = freezed,
    Object? updates = freezed,
    Object? security = freezed,
  }) {
    return _then(_value.copyWith(
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool?,
      security: freezed == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailNotificationsModelImplCopyWith<$Res>
    implements $EmailNotificationsModelCopyWith<$Res> {
  factory _$$EmailNotificationsModelImplCopyWith(
          _$EmailNotificationsModelImpl value,
          $Res Function(_$EmailNotificationsModelImpl) then) =
      __$$EmailNotificationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? marketing, bool? updates, bool? security});
}

/// @nodoc
class __$$EmailNotificationsModelImplCopyWithImpl<$Res>
    extends _$EmailNotificationsModelCopyWithImpl<$Res,
        _$EmailNotificationsModelImpl>
    implements _$$EmailNotificationsModelImplCopyWith<$Res> {
  __$$EmailNotificationsModelImplCopyWithImpl(
      _$EmailNotificationsModelImpl _value,
      $Res Function(_$EmailNotificationsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketing = freezed,
    Object? updates = freezed,
    Object? security = freezed,
  }) {
    return _then(_$EmailNotificationsModelImpl(
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool?,
      security: freezed == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailNotificationsModelImpl implements _EmailNotificationsModel {
  _$EmailNotificationsModelImpl({this.marketing, this.updates, this.security});

  factory _$EmailNotificationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailNotificationsModelImplFromJson(json);

  @override
  final bool? marketing;
  @override
  final bool? updates;
  @override
  final bool? security;

  @override
  String toString() {
    return 'EmailNotificationsModel(marketing: $marketing, updates: $updates, security: $security)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailNotificationsModelImpl &&
            (identical(other.marketing, marketing) ||
                other.marketing == marketing) &&
            (identical(other.updates, updates) || other.updates == updates) &&
            (identical(other.security, security) ||
                other.security == security));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, marketing, updates, security);

  /// Create a copy of EmailNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailNotificationsModelImplCopyWith<_$EmailNotificationsModelImpl>
      get copyWith => __$$EmailNotificationsModelImplCopyWithImpl<
          _$EmailNotificationsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailNotificationsModelImplToJson(
      this,
    );
  }
}

abstract class _EmailNotificationsModel implements EmailNotificationsModel {
  factory _EmailNotificationsModel(
      {final bool? marketing,
      final bool? updates,
      final bool? security}) = _$EmailNotificationsModelImpl;

  factory _EmailNotificationsModel.fromJson(Map<String, dynamic> json) =
      _$EmailNotificationsModelImpl.fromJson;

  @override
  bool? get marketing;
  @override
  bool? get updates;
  @override
  bool? get security;

  /// Create a copy of EmailNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailNotificationsModelImplCopyWith<_$EmailNotificationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PushNotificationsModel _$PushNotificationsModelFromJson(
    Map<String, dynamic> json) {
  return _PushNotificationsModel.fromJson(json);
}

/// @nodoc
mixin _$PushNotificationsModel {
  bool? get enabled => throw _privateConstructorUsedError;
  bool? get marketing => throw _privateConstructorUsedError;
  bool? get updates => throw _privateConstructorUsedError;

  /// Serializes this PushNotificationsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PushNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PushNotificationsModelCopyWith<PushNotificationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationsModelCopyWith<$Res> {
  factory $PushNotificationsModelCopyWith(PushNotificationsModel value,
          $Res Function(PushNotificationsModel) then) =
      _$PushNotificationsModelCopyWithImpl<$Res, PushNotificationsModel>;
  @useResult
  $Res call({bool? enabled, bool? marketing, bool? updates});
}

/// @nodoc
class _$PushNotificationsModelCopyWithImpl<$Res,
        $Val extends PushNotificationsModel>
    implements $PushNotificationsModelCopyWith<$Res> {
  _$PushNotificationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PushNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? marketing = freezed,
    Object? updates = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushNotificationsModelImplCopyWith<$Res>
    implements $PushNotificationsModelCopyWith<$Res> {
  factory _$$PushNotificationsModelImplCopyWith(
          _$PushNotificationsModelImpl value,
          $Res Function(_$PushNotificationsModelImpl) then) =
      __$$PushNotificationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? enabled, bool? marketing, bool? updates});
}

/// @nodoc
class __$$PushNotificationsModelImplCopyWithImpl<$Res>
    extends _$PushNotificationsModelCopyWithImpl<$Res,
        _$PushNotificationsModelImpl>
    implements _$$PushNotificationsModelImplCopyWith<$Res> {
  __$$PushNotificationsModelImplCopyWithImpl(
      _$PushNotificationsModelImpl _value,
      $Res Function(_$PushNotificationsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PushNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? marketing = freezed,
    Object? updates = freezed,
  }) {
    return _then(_$PushNotificationsModelImpl(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PushNotificationsModelImpl implements _PushNotificationsModel {
  _$PushNotificationsModelImpl({this.enabled, this.marketing, this.updates});

  factory _$PushNotificationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushNotificationsModelImplFromJson(json);

  @override
  final bool? enabled;
  @override
  final bool? marketing;
  @override
  final bool? updates;

  @override
  String toString() {
    return 'PushNotificationsModel(enabled: $enabled, marketing: $marketing, updates: $updates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushNotificationsModelImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.marketing, marketing) ||
                other.marketing == marketing) &&
            (identical(other.updates, updates) || other.updates == updates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, marketing, updates);

  /// Create a copy of PushNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushNotificationsModelImplCopyWith<_$PushNotificationsModelImpl>
      get copyWith => __$$PushNotificationsModelImplCopyWithImpl<
          _$PushNotificationsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushNotificationsModelImplToJson(
      this,
    );
  }
}

abstract class _PushNotificationsModel implements PushNotificationsModel {
  factory _PushNotificationsModel(
      {final bool? enabled,
      final bool? marketing,
      final bool? updates}) = _$PushNotificationsModelImpl;

  factory _PushNotificationsModel.fromJson(Map<String, dynamic> json) =
      _$PushNotificationsModelImpl.fromJson;

  @override
  bool? get enabled;
  @override
  bool? get marketing;
  @override
  bool? get updates;

  /// Create a copy of PushNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushNotificationsModelImplCopyWith<_$PushNotificationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SmsNotificationsModel _$SmsNotificationsModelFromJson(
    Map<String, dynamic> json) {
  return _SmsNotificationsModel.fromJson(json);
}

/// @nodoc
mixin _$SmsNotificationsModel {
  bool? get enabled => throw _privateConstructorUsedError;
  bool? get security => throw _privateConstructorUsedError;

  /// Serializes this SmsNotificationsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SmsNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SmsNotificationsModelCopyWith<SmsNotificationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsNotificationsModelCopyWith<$Res> {
  factory $SmsNotificationsModelCopyWith(SmsNotificationsModel value,
          $Res Function(SmsNotificationsModel) then) =
      _$SmsNotificationsModelCopyWithImpl<$Res, SmsNotificationsModel>;
  @useResult
  $Res call({bool? enabled, bool? security});
}

/// @nodoc
class _$SmsNotificationsModelCopyWithImpl<$Res,
        $Val extends SmsNotificationsModel>
    implements $SmsNotificationsModelCopyWith<$Res> {
  _$SmsNotificationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SmsNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? security = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      security: freezed == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmsNotificationsModelImplCopyWith<$Res>
    implements $SmsNotificationsModelCopyWith<$Res> {
  factory _$$SmsNotificationsModelImplCopyWith(
          _$SmsNotificationsModelImpl value,
          $Res Function(_$SmsNotificationsModelImpl) then) =
      __$$SmsNotificationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? enabled, bool? security});
}

/// @nodoc
class __$$SmsNotificationsModelImplCopyWithImpl<$Res>
    extends _$SmsNotificationsModelCopyWithImpl<$Res,
        _$SmsNotificationsModelImpl>
    implements _$$SmsNotificationsModelImplCopyWith<$Res> {
  __$$SmsNotificationsModelImplCopyWithImpl(_$SmsNotificationsModelImpl _value,
      $Res Function(_$SmsNotificationsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SmsNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? security = freezed,
  }) {
    return _then(_$SmsNotificationsModelImpl(
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      security: freezed == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmsNotificationsModelImpl implements _SmsNotificationsModel {
  _$SmsNotificationsModelImpl({this.enabled, this.security});

  factory _$SmsNotificationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmsNotificationsModelImplFromJson(json);

  @override
  final bool? enabled;
  @override
  final bool? security;

  @override
  String toString() {
    return 'SmsNotificationsModel(enabled: $enabled, security: $security)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsNotificationsModelImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.security, security) ||
                other.security == security));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, security);

  /// Create a copy of SmsNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsNotificationsModelImplCopyWith<_$SmsNotificationsModelImpl>
      get copyWith => __$$SmsNotificationsModelImplCopyWithImpl<
          _$SmsNotificationsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmsNotificationsModelImplToJson(
      this,
    );
  }
}

abstract class _SmsNotificationsModel implements SmsNotificationsModel {
  factory _SmsNotificationsModel({final bool? enabled, final bool? security}) =
      _$SmsNotificationsModelImpl;

  factory _SmsNotificationsModel.fromJson(Map<String, dynamic> json) =
      _$SmsNotificationsModelImpl.fromJson;

  @override
  bool? get enabled;
  @override
  bool? get security;

  /// Create a copy of SmsNotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmsNotificationsModelImplCopyWith<_$SmsNotificationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationsModel _$NotificationsModelFromJson(Map<String, dynamic> json) {
  return _NotificationsModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationsModel {
  EmailNotificationsModel? get email => throw _privateConstructorUsedError;
  PushNotificationsModel? get push => throw _privateConstructorUsedError;
  SmsNotificationsModel? get sms => throw _privateConstructorUsedError;

  /// Serializes this NotificationsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsModelCopyWith<NotificationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsModelCopyWith<$Res> {
  factory $NotificationsModelCopyWith(
          NotificationsModel value, $Res Function(NotificationsModel) then) =
      _$NotificationsModelCopyWithImpl<$Res, NotificationsModel>;
  @useResult
  $Res call(
      {EmailNotificationsModel? email,
      PushNotificationsModel? push,
      SmsNotificationsModel? sms});

  $EmailNotificationsModelCopyWith<$Res>? get email;
  $PushNotificationsModelCopyWith<$Res>? get push;
  $SmsNotificationsModelCopyWith<$Res>? get sms;
}

/// @nodoc
class _$NotificationsModelCopyWithImpl<$Res, $Val extends NotificationsModel>
    implements $NotificationsModelCopyWith<$Res> {
  _$NotificationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? push = freezed,
    Object? sms = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailNotificationsModel?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as PushNotificationsModel?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as SmsNotificationsModel?,
    ) as $Val);
  }

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmailNotificationsModelCopyWith<$Res>? get email {
    if (_value.email == null) {
      return null;
    }

    return $EmailNotificationsModelCopyWith<$Res>(_value.email!, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PushNotificationsModelCopyWith<$Res>? get push {
    if (_value.push == null) {
      return null;
    }

    return $PushNotificationsModelCopyWith<$Res>(_value.push!, (value) {
      return _then(_value.copyWith(push: value) as $Val);
    });
  }

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SmsNotificationsModelCopyWith<$Res>? get sms {
    if (_value.sms == null) {
      return null;
    }

    return $SmsNotificationsModelCopyWith<$Res>(_value.sms!, (value) {
      return _then(_value.copyWith(sms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationsModelImplCopyWith<$Res>
    implements $NotificationsModelCopyWith<$Res> {
  factory _$$NotificationsModelImplCopyWith(_$NotificationsModelImpl value,
          $Res Function(_$NotificationsModelImpl) then) =
      __$$NotificationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailNotificationsModel? email,
      PushNotificationsModel? push,
      SmsNotificationsModel? sms});

  @override
  $EmailNotificationsModelCopyWith<$Res>? get email;
  @override
  $PushNotificationsModelCopyWith<$Res>? get push;
  @override
  $SmsNotificationsModelCopyWith<$Res>? get sms;
}

/// @nodoc
class __$$NotificationsModelImplCopyWithImpl<$Res>
    extends _$NotificationsModelCopyWithImpl<$Res, _$NotificationsModelImpl>
    implements _$$NotificationsModelImplCopyWith<$Res> {
  __$$NotificationsModelImplCopyWithImpl(_$NotificationsModelImpl _value,
      $Res Function(_$NotificationsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? push = freezed,
    Object? sms = freezed,
  }) {
    return _then(_$NotificationsModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailNotificationsModel?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as PushNotificationsModel?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as SmsNotificationsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationsModelImpl implements _NotificationsModel {
  _$NotificationsModelImpl({this.email, this.push, this.sms});

  factory _$NotificationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationsModelImplFromJson(json);

  @override
  final EmailNotificationsModel? email;
  @override
  final PushNotificationsModel? push;
  @override
  final SmsNotificationsModel? sms;

  @override
  String toString() {
    return 'NotificationsModel(email: $email, push: $push, sms: $sms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.push, push) || other.push == push) &&
            (identical(other.sms, sms) || other.sms == sms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, push, sms);

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsModelImplCopyWith<_$NotificationsModelImpl> get copyWith =>
      __$$NotificationsModelImplCopyWithImpl<_$NotificationsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationsModel implements NotificationsModel {
  factory _NotificationsModel(
      {final EmailNotificationsModel? email,
      final PushNotificationsModel? push,
      final SmsNotificationsModel? sms}) = _$NotificationsModelImpl;

  factory _NotificationsModel.fromJson(Map<String, dynamic> json) =
      _$NotificationsModelImpl.fromJson;

  @override
  EmailNotificationsModel? get email;
  @override
  PushNotificationsModel? get push;
  @override
  SmsNotificationsModel? get sms;

  /// Create a copy of NotificationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsModelImplCopyWith<_$NotificationsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrivacyModel _$PrivacyModelFromJson(Map<String, dynamic> json) {
  return _PrivacyModel.fromJson(json);
}

/// @nodoc
mixin _$PrivacyModel {
  String? get profileVisibility => throw _privateConstructorUsedError;
  bool? get showEmail => throw _privateConstructorUsedError;
  bool? get showPhone => throw _privateConstructorUsedError;

  /// Serializes this PrivacyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivacyModelCopyWith<PrivacyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyModelCopyWith<$Res> {
  factory $PrivacyModelCopyWith(
          PrivacyModel value, $Res Function(PrivacyModel) then) =
      _$PrivacyModelCopyWithImpl<$Res, PrivacyModel>;
  @useResult
  $Res call({String? profileVisibility, bool? showEmail, bool? showPhone});
}

/// @nodoc
class _$PrivacyModelCopyWithImpl<$Res, $Val extends PrivacyModel>
    implements $PrivacyModelCopyWith<$Res> {
  _$PrivacyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileVisibility = freezed,
    Object? showEmail = freezed,
    Object? showPhone = freezed,
  }) {
    return _then(_value.copyWith(
      profileVisibility: freezed == profileVisibility
          ? _value.profileVisibility
          : profileVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      showEmail: freezed == showEmail
          ? _value.showEmail
          : showEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      showPhone: freezed == showPhone
          ? _value.showPhone
          : showPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivacyModelImplCopyWith<$Res>
    implements $PrivacyModelCopyWith<$Res> {
  factory _$$PrivacyModelImplCopyWith(
          _$PrivacyModelImpl value, $Res Function(_$PrivacyModelImpl) then) =
      __$$PrivacyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? profileVisibility, bool? showEmail, bool? showPhone});
}

/// @nodoc
class __$$PrivacyModelImplCopyWithImpl<$Res>
    extends _$PrivacyModelCopyWithImpl<$Res, _$PrivacyModelImpl>
    implements _$$PrivacyModelImplCopyWith<$Res> {
  __$$PrivacyModelImplCopyWithImpl(
      _$PrivacyModelImpl _value, $Res Function(_$PrivacyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileVisibility = freezed,
    Object? showEmail = freezed,
    Object? showPhone = freezed,
  }) {
    return _then(_$PrivacyModelImpl(
      profileVisibility: freezed == profileVisibility
          ? _value.profileVisibility
          : profileVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      showEmail: freezed == showEmail
          ? _value.showEmail
          : showEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      showPhone: freezed == showPhone
          ? _value.showPhone
          : showPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivacyModelImpl implements _PrivacyModel {
  _$PrivacyModelImpl({this.profileVisibility, this.showEmail, this.showPhone});

  factory _$PrivacyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivacyModelImplFromJson(json);

  @override
  final String? profileVisibility;
  @override
  final bool? showEmail;
  @override
  final bool? showPhone;

  @override
  String toString() {
    return 'PrivacyModel(profileVisibility: $profileVisibility, showEmail: $showEmail, showPhone: $showPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyModelImpl &&
            (identical(other.profileVisibility, profileVisibility) ||
                other.profileVisibility == profileVisibility) &&
            (identical(other.showEmail, showEmail) ||
                other.showEmail == showEmail) &&
            (identical(other.showPhone, showPhone) ||
                other.showPhone == showPhone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, profileVisibility, showEmail, showPhone);

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyModelImplCopyWith<_$PrivacyModelImpl> get copyWith =>
      __$$PrivacyModelImplCopyWithImpl<_$PrivacyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivacyModelImplToJson(
      this,
    );
  }
}

abstract class _PrivacyModel implements PrivacyModel {
  factory _PrivacyModel(
      {final String? profileVisibility,
      final bool? showEmail,
      final bool? showPhone}) = _$PrivacyModelImpl;

  factory _PrivacyModel.fromJson(Map<String, dynamic> json) =
      _$PrivacyModelImpl.fromJson;

  @override
  String? get profileVisibility;
  @override
  bool? get showEmail;
  @override
  bool? get showPhone;

  /// Create a copy of PrivacyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacyModelImplCopyWith<_$PrivacyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreferencesModel _$PreferencesModelFromJson(Map<String, dynamic> json) {
  return _PreferencesModel.fromJson(json);
}

/// @nodoc
mixin _$PreferencesModel {
  String? get language => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  NotificationsModel? get notifications => throw _privateConstructorUsedError;
  PrivacyModel? get privacy => throw _privateConstructorUsedError;

  /// Serializes this PreferencesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferencesModelCopyWith<PreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesModelCopyWith<$Res> {
  factory $PreferencesModelCopyWith(
          PreferencesModel value, $Res Function(PreferencesModel) then) =
      _$PreferencesModelCopyWithImpl<$Res, PreferencesModel>;
  @useResult
  $Res call(
      {String? language,
      String? timezone,
      NotificationsModel? notifications,
      PrivacyModel? privacy});

  $NotificationsModelCopyWith<$Res>? get notifications;
  $PrivacyModelCopyWith<$Res>? get privacy;
}

/// @nodoc
class _$PreferencesModelCopyWithImpl<$Res, $Val extends PreferencesModel>
    implements $PreferencesModelCopyWith<$Res> {
  _$PreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? timezone = freezed,
    Object? notifications = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_value.copyWith(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationsModel?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as PrivacyModel?,
    ) as $Val);
  }

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationsModelCopyWith<$Res>? get notifications {
    if (_value.notifications == null) {
      return null;
    }

    return $NotificationsModelCopyWith<$Res>(_value.notifications!, (value) {
      return _then(_value.copyWith(notifications: value) as $Val);
    });
  }

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrivacyModelCopyWith<$Res>? get privacy {
    if (_value.privacy == null) {
      return null;
    }

    return $PrivacyModelCopyWith<$Res>(_value.privacy!, (value) {
      return _then(_value.copyWith(privacy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreferencesModelImplCopyWith<$Res>
    implements $PreferencesModelCopyWith<$Res> {
  factory _$$PreferencesModelImplCopyWith(_$PreferencesModelImpl value,
          $Res Function(_$PreferencesModelImpl) then) =
      __$$PreferencesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? language,
      String? timezone,
      NotificationsModel? notifications,
      PrivacyModel? privacy});

  @override
  $NotificationsModelCopyWith<$Res>? get notifications;
  @override
  $PrivacyModelCopyWith<$Res>? get privacy;
}

/// @nodoc
class __$$PreferencesModelImplCopyWithImpl<$Res>
    extends _$PreferencesModelCopyWithImpl<$Res, _$PreferencesModelImpl>
    implements _$$PreferencesModelImplCopyWith<$Res> {
  __$$PreferencesModelImplCopyWithImpl(_$PreferencesModelImpl _value,
      $Res Function(_$PreferencesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? timezone = freezed,
    Object? notifications = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_$PreferencesModelImpl(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationsModel?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as PrivacyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesModelImpl implements _PreferencesModel {
  _$PreferencesModelImpl(
      {this.language, this.timezone, this.notifications, this.privacy});

  factory _$PreferencesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesModelImplFromJson(json);

  @override
  final String? language;
  @override
  final String? timezone;
  @override
  final NotificationsModel? notifications;
  @override
  final PrivacyModel? privacy;

  @override
  String toString() {
    return 'PreferencesModel(language: $language, timezone: $timezone, notifications: $notifications, privacy: $privacy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesModelImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.privacy, privacy) || other.privacy == privacy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, language, timezone, notifications, privacy);

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesModelImplCopyWith<_$PreferencesModelImpl> get copyWith =>
      __$$PreferencesModelImplCopyWithImpl<_$PreferencesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesModelImplToJson(
      this,
    );
  }
}

abstract class _PreferencesModel implements PreferencesModel {
  factory _PreferencesModel(
      {final String? language,
      final String? timezone,
      final NotificationsModel? notifications,
      final PrivacyModel? privacy}) = _$PreferencesModelImpl;

  factory _PreferencesModel.fromJson(Map<String, dynamic> json) =
      _$PreferencesModelImpl.fromJson;

  @override
  String? get language;
  @override
  String? get timezone;
  @override
  NotificationsModel? get notifications;
  @override
  PrivacyModel? get privacy;

  /// Create a copy of PreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesModelImplCopyWith<_$PreferencesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialLinksModel _$SocialLinksModelFromJson(Map<String, dynamic> json) {
  return _SocialLinksModel.fromJson(json);
}

/// @nodoc
mixin _$SocialLinksModel {
  String? get linkedin => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get github => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  /// Serializes this SocialLinksModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialLinksModelCopyWith<SocialLinksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLinksModelCopyWith<$Res> {
  factory $SocialLinksModelCopyWith(
          SocialLinksModel value, $Res Function(SocialLinksModel) then) =
      _$SocialLinksModelCopyWithImpl<$Res, SocialLinksModel>;
  @useResult
  $Res call(
      {String? linkedin,
      String? twitter,
      String? facebook,
      String? github,
      String? website});
}

/// @nodoc
class _$SocialLinksModelCopyWithImpl<$Res, $Val extends SocialLinksModel>
    implements $SocialLinksModelCopyWith<$Res> {
  _$SocialLinksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkedin = freezed,
    Object? twitter = freezed,
    Object? facebook = freezed,
    Object? github = freezed,
    Object? website = freezed,
  }) {
    return _then(_value.copyWith(
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      github: freezed == github
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialLinksModelImplCopyWith<$Res>
    implements $SocialLinksModelCopyWith<$Res> {
  factory _$$SocialLinksModelImplCopyWith(_$SocialLinksModelImpl value,
          $Res Function(_$SocialLinksModelImpl) then) =
      __$$SocialLinksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? linkedin,
      String? twitter,
      String? facebook,
      String? github,
      String? website});
}

/// @nodoc
class __$$SocialLinksModelImplCopyWithImpl<$Res>
    extends _$SocialLinksModelCopyWithImpl<$Res, _$SocialLinksModelImpl>
    implements _$$SocialLinksModelImplCopyWith<$Res> {
  __$$SocialLinksModelImplCopyWithImpl(_$SocialLinksModelImpl _value,
      $Res Function(_$SocialLinksModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkedin = freezed,
    Object? twitter = freezed,
    Object? facebook = freezed,
    Object? github = freezed,
    Object? website = freezed,
  }) {
    return _then(_$SocialLinksModelImpl(
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      github: freezed == github
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialLinksModelImpl implements _SocialLinksModel {
  _$SocialLinksModelImpl(
      {this.linkedin, this.twitter, this.facebook, this.github, this.website});

  factory _$SocialLinksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialLinksModelImplFromJson(json);

  @override
  final String? linkedin;
  @override
  final String? twitter;
  @override
  final String? facebook;
  @override
  final String? github;
  @override
  final String? website;

  @override
  String toString() {
    return 'SocialLinksModel(linkedin: $linkedin, twitter: $twitter, facebook: $facebook, github: $github, website: $website)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLinksModelImpl &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.github, github) || other.github == github) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, linkedin, twitter, facebook, github, website);

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLinksModelImplCopyWith<_$SocialLinksModelImpl> get copyWith =>
      __$$SocialLinksModelImplCopyWithImpl<_$SocialLinksModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialLinksModelImplToJson(
      this,
    );
  }
}

abstract class _SocialLinksModel implements SocialLinksModel {
  factory _SocialLinksModel(
      {final String? linkedin,
      final String? twitter,
      final String? facebook,
      final String? github,
      final String? website}) = _$SocialLinksModelImpl;

  factory _SocialLinksModel.fromJson(Map<String, dynamic> json) =
      _$SocialLinksModelImpl.fromJson;

  @override
  String? get linkedin;
  @override
  String? get twitter;
  @override
  String? get facebook;
  @override
  String? get github;
  @override
  String? get website;

  /// Create a copy of SocialLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialLinksModelImplCopyWith<_$SocialLinksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OAuthProviderModel _$OAuthProviderModelFromJson(Map<String, dynamic> json) {
  return _OAuthProviderModel.fromJson(json);
}

/// @nodoc
mixin _$OAuthProviderModel {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this OAuthProviderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OAuthProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OAuthProviderModelCopyWith<OAuthProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthProviderModelCopyWith<$Res> {
  factory $OAuthProviderModelCopyWith(
          OAuthProviderModel value, $Res Function(OAuthProviderModel) then) =
      _$OAuthProviderModelCopyWithImpl<$Res, OAuthProviderModel>;
  @useResult
  $Res call({String? id, String? email});
}

/// @nodoc
class _$OAuthProviderModelCopyWithImpl<$Res, $Val extends OAuthProviderModel>
    implements $OAuthProviderModelCopyWith<$Res> {
  _$OAuthProviderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OAuthProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OAuthProviderModelImplCopyWith<$Res>
    implements $OAuthProviderModelCopyWith<$Res> {
  factory _$$OAuthProviderModelImplCopyWith(_$OAuthProviderModelImpl value,
          $Res Function(_$OAuthProviderModelImpl) then) =
      __$$OAuthProviderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? email});
}

/// @nodoc
class __$$OAuthProviderModelImplCopyWithImpl<$Res>
    extends _$OAuthProviderModelCopyWithImpl<$Res, _$OAuthProviderModelImpl>
    implements _$$OAuthProviderModelImplCopyWith<$Res> {
  __$$OAuthProviderModelImplCopyWithImpl(_$OAuthProviderModelImpl _value,
      $Res Function(_$OAuthProviderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuthProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_$OAuthProviderModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OAuthProviderModelImpl implements _OAuthProviderModel {
  _$OAuthProviderModelImpl({this.id, this.email});

  factory _$OAuthProviderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OAuthProviderModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? email;

  @override
  String toString() {
    return 'OAuthProviderModel(id: $id, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuthProviderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  /// Create a copy of OAuthProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuthProviderModelImplCopyWith<_$OAuthProviderModelImpl> get copyWith =>
      __$$OAuthProviderModelImplCopyWithImpl<_$OAuthProviderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OAuthProviderModelImplToJson(
      this,
    );
  }
}

abstract class _OAuthProviderModel implements OAuthProviderModel {
  factory _OAuthProviderModel({final String? id, final String? email}) =
      _$OAuthProviderModelImpl;

  factory _OAuthProviderModel.fromJson(Map<String, dynamic> json) =
      _$OAuthProviderModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get email;

  /// Create a copy of OAuthProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuthProviderModelImplCopyWith<_$OAuthProviderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OAuthModel _$OAuthModelFromJson(Map<String, dynamic> json) {
  return _OAuthModel.fromJson(json);
}

/// @nodoc
mixin _$OAuthModel {
  OAuthProviderModel? get google => throw _privateConstructorUsedError;
  OAuthProviderModel? get facebook => throw _privateConstructorUsedError;

  /// Serializes this OAuthModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OAuthModelCopyWith<OAuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthModelCopyWith<$Res> {
  factory $OAuthModelCopyWith(
          OAuthModel value, $Res Function(OAuthModel) then) =
      _$OAuthModelCopyWithImpl<$Res, OAuthModel>;
  @useResult
  $Res call({OAuthProviderModel? google, OAuthProviderModel? facebook});

  $OAuthProviderModelCopyWith<$Res>? get google;
  $OAuthProviderModelCopyWith<$Res>? get facebook;
}

/// @nodoc
class _$OAuthModelCopyWithImpl<$Res, $Val extends OAuthModel>
    implements $OAuthModelCopyWith<$Res> {
  _$OAuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? google = freezed,
    Object? facebook = freezed,
  }) {
    return _then(_value.copyWith(
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as OAuthProviderModel?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as OAuthProviderModel?,
    ) as $Val);
  }

  /// Create a copy of OAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OAuthProviderModelCopyWith<$Res>? get google {
    if (_value.google == null) {
      return null;
    }

    return $OAuthProviderModelCopyWith<$Res>(_value.google!, (value) {
      return _then(_value.copyWith(google: value) as $Val);
    });
  }

  /// Create a copy of OAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OAuthProviderModelCopyWith<$Res>? get facebook {
    if (_value.facebook == null) {
      return null;
    }

    return $OAuthProviderModelCopyWith<$Res>(_value.facebook!, (value) {
      return _then(_value.copyWith(facebook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OAuthModelImplCopyWith<$Res>
    implements $OAuthModelCopyWith<$Res> {
  factory _$$OAuthModelImplCopyWith(
          _$OAuthModelImpl value, $Res Function(_$OAuthModelImpl) then) =
      __$$OAuthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OAuthProviderModel? google, OAuthProviderModel? facebook});

  @override
  $OAuthProviderModelCopyWith<$Res>? get google;
  @override
  $OAuthProviderModelCopyWith<$Res>? get facebook;
}

/// @nodoc
class __$$OAuthModelImplCopyWithImpl<$Res>
    extends _$OAuthModelCopyWithImpl<$Res, _$OAuthModelImpl>
    implements _$$OAuthModelImplCopyWith<$Res> {
  __$$OAuthModelImplCopyWithImpl(
      _$OAuthModelImpl _value, $Res Function(_$OAuthModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? google = freezed,
    Object? facebook = freezed,
  }) {
    return _then(_$OAuthModelImpl(
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as OAuthProviderModel?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as OAuthProviderModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OAuthModelImpl implements _OAuthModel {
  _$OAuthModelImpl({this.google, this.facebook});

  factory _$OAuthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OAuthModelImplFromJson(json);

  @override
  final OAuthProviderModel? google;
  @override
  final OAuthProviderModel? facebook;

  @override
  String toString() {
    return 'OAuthModel(google: $google, facebook: $facebook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuthModelImpl &&
            (identical(other.google, google) || other.google == google) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, google, facebook);

  /// Create a copy of OAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuthModelImplCopyWith<_$OAuthModelImpl> get copyWith =>
      __$$OAuthModelImplCopyWithImpl<_$OAuthModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OAuthModelImplToJson(
      this,
    );
  }
}

abstract class _OAuthModel implements OAuthModel {
  factory _OAuthModel(
      {final OAuthProviderModel? google,
      final OAuthProviderModel? facebook}) = _$OAuthModelImpl;

  factory _OAuthModel.fromJson(Map<String, dynamic> json) =
      _$OAuthModelImpl.fromJson;

  @override
  OAuthProviderModel? get google;
  @override
  OAuthProviderModel? get facebook;

  /// Create a copy of OAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuthModelImplCopyWith<_$OAuthModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginHistoryModel _$LoginHistoryModelFromJson(Map<String, dynamic> json) {
  return _LoginHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$LoginHistoryModel {
  String? get ip => throw _privateConstructorUsedError;
  String? get userAgent => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get timestamp => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;

  /// Serializes this LoginHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginHistoryModelCopyWith<LoginHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginHistoryModelCopyWith<$Res> {
  factory $LoginHistoryModelCopyWith(
          LoginHistoryModel value, $Res Function(LoginHistoryModel) then) =
      _$LoginHistoryModelCopyWithImpl<$Res, LoginHistoryModel>;
  @useResult
  $Res call(
      {String? ip,
      String? userAgent,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? timestamp,
      LocationModel? location});

  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$LoginHistoryModelCopyWithImpl<$Res, $Val extends LoginHistoryModel>
    implements $LoginHistoryModelCopyWith<$Res> {
  _$LoginHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = freezed,
    Object? userAgent = freezed,
    Object? timestamp = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ) as $Val);
  }

  /// Create a copy of LoginHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginHistoryModelImplCopyWith<$Res>
    implements $LoginHistoryModelCopyWith<$Res> {
  factory _$$LoginHistoryModelImplCopyWith(_$LoginHistoryModelImpl value,
          $Res Function(_$LoginHistoryModelImpl) then) =
      __$$LoginHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? ip,
      String? userAgent,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? timestamp,
      LocationModel? location});

  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$LoginHistoryModelImplCopyWithImpl<$Res>
    extends _$LoginHistoryModelCopyWithImpl<$Res, _$LoginHistoryModelImpl>
    implements _$$LoginHistoryModelImplCopyWith<$Res> {
  __$$LoginHistoryModelImplCopyWithImpl(_$LoginHistoryModelImpl _value,
      $Res Function(_$LoginHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = freezed,
    Object? userAgent = freezed,
    Object? timestamp = freezed,
    Object? location = freezed,
  }) {
    return _then(_$LoginHistoryModelImpl(
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginHistoryModelImpl implements _LoginHistoryModel {
  _$LoginHistoryModelImpl(
      {this.ip,
      this.userAgent,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.timestamp,
      this.location});

  factory _$LoginHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginHistoryModelImplFromJson(json);

  @override
  final String? ip;
  @override
  final String? userAgent;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? timestamp;
  @override
  final LocationModel? location;

  @override
  String toString() {
    return 'LoginHistoryModel(ip: $ip, userAgent: $userAgent, timestamp: $timestamp, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginHistoryModelImpl &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ip, userAgent, timestamp, location);

  /// Create a copy of LoginHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginHistoryModelImplCopyWith<_$LoginHistoryModelImpl> get copyWith =>
      __$$LoginHistoryModelImplCopyWithImpl<_$LoginHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _LoginHistoryModel implements LoginHistoryModel {
  factory _LoginHistoryModel(
      {final String? ip,
      final String? userAgent,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? timestamp,
      final LocationModel? location}) = _$LoginHistoryModelImpl;

  factory _LoginHistoryModel.fromJson(Map<String, dynamic> json) =
      _$LoginHistoryModelImpl.fromJson;

  @override
  String? get ip;
  @override
  String? get userAgent;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get timestamp;
  @override
  LocationModel? get location;

  /// Create a copy of LoginHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginHistoryModelImplCopyWith<_$LoginHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  AvatarModel? get avatar => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  InvestorProfileModel? get investorProfile =>
      throw _privateConstructorUsedError;
  ProjectOwnerProfileModel? get projectOwnerProfile =>
      throw _privateConstructorUsedError;
  bool? get emailVerified => throw _privateConstructorUsedError;
  String? get emailVerificationToken => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get emailVerificationExpires => throw _privateConstructorUsedError;
  bool? get phoneVerified => throw _privateConstructorUsedError;
  String? get phoneVerificationToken => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get phoneVerificationExpires => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get passwordChangedAt => throw _privateConstructorUsedError;
  String? get passwordResetToken => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get passwordResetExpires => throw _privateConstructorUsedError;
  int? get loginAttempts => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get lockUntil => throw _privateConstructorUsedError;
  bool? get twoFactorEnabled => throw _privateConstructorUsedError;
  String? get twoFactorSecret => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  bool? get suspended => throw _privateConstructorUsedError;
  String? get suspensionReason => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get suspendedAt => throw _privateConstructorUsedError;
  String? get suspendedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get lastLogin => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get lastActivity => throw _privateConstructorUsedError;
  List<LoginHistoryModel>? get loginHistory =>
      throw _privateConstructorUsedError;
  PreferencesModel? get preferences => throw _privateConstructorUsedError;
  SocialLinksModel? get socialLinks => throw _privateConstructorUsedError;
  OAuthModel? get oauth => throw _privateConstructorUsedError;
  bool? get termsAccepted => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get termsAcceptedAt => throw _privateConstructorUsedError;
  bool? get privacyPolicyAccepted => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get privacyPolicyAcceptedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      String firstName,
      String lastName,
      String email,
      String? password,
      String role,
      List<String> permissions,
      String? phone,
      AvatarModel? avatar,
      String? bio,
      LocationModel? location,
      InvestorProfileModel? investorProfile,
      ProjectOwnerProfileModel? projectOwnerProfile,
      bool? emailVerified,
      String? emailVerificationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? emailVerificationExpires,
      bool? phoneVerified,
      String? phoneVerificationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? phoneVerificationExpires,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? passwordChangedAt,
      String? passwordResetToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? passwordResetExpires,
      int? loginAttempts,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? lockUntil,
      bool? twoFactorEnabled,
      String? twoFactorSecret,
      bool? active,
      bool? suspended,
      String? suspensionReason,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? suspendedAt,
      String? suspendedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? lastLogin,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? lastActivity,
      List<LoginHistoryModel>? loginHistory,
      PreferencesModel? preferences,
      SocialLinksModel? socialLinks,
      OAuthModel? oauth,
      bool? termsAccepted,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? termsAcceptedAt,
      bool? privacyPolicyAccepted,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? privacyPolicyAcceptedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  $AvatarModelCopyWith<$Res>? get avatar;
  $LocationModelCopyWith<$Res>? get location;
  $InvestorProfileModelCopyWith<$Res>? get investorProfile;
  $ProjectOwnerProfileModelCopyWith<$Res>? get projectOwnerProfile;
  $PreferencesModelCopyWith<$Res>? get preferences;
  $SocialLinksModelCopyWith<$Res>? get socialLinks;
  $OAuthModelCopyWith<$Res>? get oauth;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = freezed,
    Object? role = null,
    Object? permissions = null,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? investorProfile = freezed,
    Object? projectOwnerProfile = freezed,
    Object? emailVerified = freezed,
    Object? emailVerificationToken = freezed,
    Object? emailVerificationExpires = freezed,
    Object? phoneVerified = freezed,
    Object? phoneVerificationToken = freezed,
    Object? phoneVerificationExpires = freezed,
    Object? passwordChangedAt = freezed,
    Object? passwordResetToken = freezed,
    Object? passwordResetExpires = freezed,
    Object? loginAttempts = freezed,
    Object? lockUntil = freezed,
    Object? twoFactorEnabled = freezed,
    Object? twoFactorSecret = freezed,
    Object? active = freezed,
    Object? suspended = freezed,
    Object? suspensionReason = freezed,
    Object? suspendedAt = freezed,
    Object? suspendedBy = freezed,
    Object? lastLogin = freezed,
    Object? lastActivity = freezed,
    Object? loginHistory = freezed,
    Object? preferences = freezed,
    Object? socialLinks = freezed,
    Object? oauth = freezed,
    Object? termsAccepted = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyPolicyAccepted = freezed,
    Object? privacyPolicyAcceptedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarModel?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      investorProfile: freezed == investorProfile
          ? _value.investorProfile
          : investorProfile // ignore: cast_nullable_to_non_nullable
              as InvestorProfileModel?,
      projectOwnerProfile: freezed == projectOwnerProfile
          ? _value.projectOwnerProfile
          : projectOwnerProfile // ignore: cast_nullable_to_non_nullable
              as ProjectOwnerProfileModel?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailVerificationToken: freezed == emailVerificationToken
          ? _value.emailVerificationToken
          : emailVerificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerificationExpires: freezed == emailVerificationExpires
          ? _value.emailVerificationExpires
          : emailVerificationExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneVerified: freezed == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneVerificationToken: freezed == phoneVerificationToken
          ? _value.phoneVerificationToken
          : phoneVerificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerificationExpires: freezed == phoneVerificationExpires
          ? _value.phoneVerificationExpires
          : phoneVerificationExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      passwordChangedAt: freezed == passwordChangedAt
          ? _value.passwordChangedAt
          : passwordChangedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      passwordResetToken: freezed == passwordResetToken
          ? _value.passwordResetToken
          : passwordResetToken // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordResetExpires: freezed == passwordResetExpires
          ? _value.passwordResetExpires
          : passwordResetExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loginAttempts: freezed == loginAttempts
          ? _value.loginAttempts
          : loginAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      lockUntil: freezed == lockUntil
          ? _value.lockUntil
          : lockUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      twoFactorEnabled: freezed == twoFactorEnabled
          ? _value.twoFactorEnabled
          : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      suspended: freezed == suspended
          ? _value.suspended
          : suspended // ignore: cast_nullable_to_non_nullable
              as bool?,
      suspensionReason: freezed == suspensionReason
          ? _value.suspensionReason
          : suspensionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      suspendedAt: freezed == suspendedAt
          ? _value.suspendedAt
          : suspendedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      suspendedBy: freezed == suspendedBy
          ? _value.suspendedBy
          : suspendedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loginHistory: freezed == loginHistory
          ? _value.loginHistory
          : loginHistory // ignore: cast_nullable_to_non_nullable
              as List<LoginHistoryModel>?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as PreferencesModel?,
      socialLinks: freezed == socialLinks
          ? _value.socialLinks
          : socialLinks // ignore: cast_nullable_to_non_nullable
              as SocialLinksModel?,
      oauth: freezed == oauth
          ? _value.oauth
          : oauth // ignore: cast_nullable_to_non_nullable
              as OAuthModel?,
      termsAccepted: freezed == termsAccepted
          ? _value.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      privacyPolicyAccepted: freezed == privacyPolicyAccepted
          ? _value.privacyPolicyAccepted
          : privacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      privacyPolicyAcceptedAt: freezed == privacyPolicyAcceptedAt
          ? _value.privacyPolicyAcceptedAt
          : privacyPolicyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvatarModelCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $AvatarModelCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvestorProfileModelCopyWith<$Res>? get investorProfile {
    if (_value.investorProfile == null) {
      return null;
    }

    return $InvestorProfileModelCopyWith<$Res>(_value.investorProfile!,
        (value) {
      return _then(_value.copyWith(investorProfile: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectOwnerProfileModelCopyWith<$Res>? get projectOwnerProfile {
    if (_value.projectOwnerProfile == null) {
      return null;
    }

    return $ProjectOwnerProfileModelCopyWith<$Res>(_value.projectOwnerProfile!,
        (value) {
      return _then(_value.copyWith(projectOwnerProfile: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreferencesModelCopyWith<$Res>? get preferences {
    if (_value.preferences == null) {
      return null;
    }

    return $PreferencesModelCopyWith<$Res>(_value.preferences!, (value) {
      return _then(_value.copyWith(preferences: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinksModelCopyWith<$Res>? get socialLinks {
    if (_value.socialLinks == null) {
      return null;
    }

    return $SocialLinksModelCopyWith<$Res>(_value.socialLinks!, (value) {
      return _then(_value.copyWith(socialLinks: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OAuthModelCopyWith<$Res>? get oauth {
    if (_value.oauth == null) {
      return null;
    }

    return $OAuthModelCopyWith<$Res>(_value.oauth!, (value) {
      return _then(_value.copyWith(oauth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      String firstName,
      String lastName,
      String email,
      String? password,
      String role,
      List<String> permissions,
      String? phone,
      AvatarModel? avatar,
      String? bio,
      LocationModel? location,
      InvestorProfileModel? investorProfile,
      ProjectOwnerProfileModel? projectOwnerProfile,
      bool? emailVerified,
      String? emailVerificationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? emailVerificationExpires,
      bool? phoneVerified,
      String? phoneVerificationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? phoneVerificationExpires,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? passwordChangedAt,
      String? passwordResetToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? passwordResetExpires,
      int? loginAttempts,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? lockUntil,
      bool? twoFactorEnabled,
      String? twoFactorSecret,
      bool? active,
      bool? suspended,
      String? suspensionReason,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? suspendedAt,
      String? suspendedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? lastLogin,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? lastActivity,
      List<LoginHistoryModel>? loginHistory,
      PreferencesModel? preferences,
      SocialLinksModel? socialLinks,
      OAuthModel? oauth,
      bool? termsAccepted,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? termsAcceptedAt,
      bool? privacyPolicyAccepted,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? privacyPolicyAcceptedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime? updatedAt});

  @override
  $AvatarModelCopyWith<$Res>? get avatar;
  @override
  $LocationModelCopyWith<$Res>? get location;
  @override
  $InvestorProfileModelCopyWith<$Res>? get investorProfile;
  @override
  $ProjectOwnerProfileModelCopyWith<$Res>? get projectOwnerProfile;
  @override
  $PreferencesModelCopyWith<$Res>? get preferences;
  @override
  $SocialLinksModelCopyWith<$Res>? get socialLinks;
  @override
  $OAuthModelCopyWith<$Res>? get oauth;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = freezed,
    Object? role = null,
    Object? permissions = null,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? investorProfile = freezed,
    Object? projectOwnerProfile = freezed,
    Object? emailVerified = freezed,
    Object? emailVerificationToken = freezed,
    Object? emailVerificationExpires = freezed,
    Object? phoneVerified = freezed,
    Object? phoneVerificationToken = freezed,
    Object? phoneVerificationExpires = freezed,
    Object? passwordChangedAt = freezed,
    Object? passwordResetToken = freezed,
    Object? passwordResetExpires = freezed,
    Object? loginAttempts = freezed,
    Object? lockUntil = freezed,
    Object? twoFactorEnabled = freezed,
    Object? twoFactorSecret = freezed,
    Object? active = freezed,
    Object? suspended = freezed,
    Object? suspensionReason = freezed,
    Object? suspendedAt = freezed,
    Object? suspendedBy = freezed,
    Object? lastLogin = freezed,
    Object? lastActivity = freezed,
    Object? loginHistory = freezed,
    Object? preferences = freezed,
    Object? socialLinks = freezed,
    Object? oauth = freezed,
    Object? termsAccepted = freezed,
    Object? termsAcceptedAt = freezed,
    Object? privacyPolicyAccepted = freezed,
    Object? privacyPolicyAcceptedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarModel?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      investorProfile: freezed == investorProfile
          ? _value.investorProfile
          : investorProfile // ignore: cast_nullable_to_non_nullable
              as InvestorProfileModel?,
      projectOwnerProfile: freezed == projectOwnerProfile
          ? _value.projectOwnerProfile
          : projectOwnerProfile // ignore: cast_nullable_to_non_nullable
              as ProjectOwnerProfileModel?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailVerificationToken: freezed == emailVerificationToken
          ? _value.emailVerificationToken
          : emailVerificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerificationExpires: freezed == emailVerificationExpires
          ? _value.emailVerificationExpires
          : emailVerificationExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneVerified: freezed == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneVerificationToken: freezed == phoneVerificationToken
          ? _value.phoneVerificationToken
          : phoneVerificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerificationExpires: freezed == phoneVerificationExpires
          ? _value.phoneVerificationExpires
          : phoneVerificationExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      passwordChangedAt: freezed == passwordChangedAt
          ? _value.passwordChangedAt
          : passwordChangedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      passwordResetToken: freezed == passwordResetToken
          ? _value.passwordResetToken
          : passwordResetToken // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordResetExpires: freezed == passwordResetExpires
          ? _value.passwordResetExpires
          : passwordResetExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loginAttempts: freezed == loginAttempts
          ? _value.loginAttempts
          : loginAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      lockUntil: freezed == lockUntil
          ? _value.lockUntil
          : lockUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      twoFactorEnabled: freezed == twoFactorEnabled
          ? _value.twoFactorEnabled
          : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      suspended: freezed == suspended
          ? _value.suspended
          : suspended // ignore: cast_nullable_to_non_nullable
              as bool?,
      suspensionReason: freezed == suspensionReason
          ? _value.suspensionReason
          : suspensionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      suspendedAt: freezed == suspendedAt
          ? _value.suspendedAt
          : suspendedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      suspendedBy: freezed == suspendedBy
          ? _value.suspendedBy
          : suspendedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loginHistory: freezed == loginHistory
          ? _value._loginHistory
          : loginHistory // ignore: cast_nullable_to_non_nullable
              as List<LoginHistoryModel>?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as PreferencesModel?,
      socialLinks: freezed == socialLinks
          ? _value.socialLinks
          : socialLinks // ignore: cast_nullable_to_non_nullable
              as SocialLinksModel?,
      oauth: freezed == oauth
          ? _value.oauth
          : oauth // ignore: cast_nullable_to_non_nullable
              as OAuthModel?,
      termsAccepted: freezed == termsAccepted
          ? _value.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      termsAcceptedAt: freezed == termsAcceptedAt
          ? _value.termsAcceptedAt
          : termsAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      privacyPolicyAccepted: freezed == privacyPolicyAccepted
          ? _value.privacyPolicyAccepted
          : privacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      privacyPolicyAcceptedAt: freezed == privacyPolicyAcceptedAt
          ? _value.privacyPolicyAcceptedAt
          : privacyPolicyAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: 'id') required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.password,
      required this.role,
      final List<String> permissions = const [],
      this.phone,
      this.avatar,
      this.bio,
      this.location,
      this.investorProfile,
      this.projectOwnerProfile,
      this.emailVerified,
      this.emailVerificationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.emailVerificationExpires,
      this.phoneVerified,
      this.phoneVerificationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.phoneVerificationExpires,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.passwordChangedAt,
      this.passwordResetToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.passwordResetExpires,
      this.loginAttempts,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.lockUntil,
      this.twoFactorEnabled,
      this.twoFactorSecret,
      this.active,
      this.suspended,
      this.suspensionReason,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.suspendedAt,
      this.suspendedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.lastLogin,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.lastActivity,
      final List<LoginHistoryModel>? loginHistory,
      this.preferences,
      this.socialLinks,
      this.oauth,
      this.termsAccepted,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.termsAcceptedAt,
      this.privacyPolicyAccepted,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.privacyPolicyAcceptedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      this.updatedAt})
      : _permissions = permissions,
        _loginHistory = loginHistory;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String? password;
  @override
  final String role;
  final List<String> _permissions;
  @override
  @JsonKey()
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  final String? phone;
  @override
  final AvatarModel? avatar;
  @override
  final String? bio;
  @override
  final LocationModel? location;
  @override
  final InvestorProfileModel? investorProfile;
  @override
  final ProjectOwnerProfileModel? projectOwnerProfile;
  @override
  final bool? emailVerified;
  @override
  final String? emailVerificationToken;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? emailVerificationExpires;
  @override
  final bool? phoneVerified;
  @override
  final String? phoneVerificationToken;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? phoneVerificationExpires;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? passwordChangedAt;
  @override
  final String? passwordResetToken;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? passwordResetExpires;
  @override
  final int? loginAttempts;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? lockUntil;
  @override
  final bool? twoFactorEnabled;
  @override
  final String? twoFactorSecret;
  @override
  final bool? active;
  @override
  final bool? suspended;
  @override
  final String? suspensionReason;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? suspendedAt;
  @override
  final String? suspendedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? lastLogin;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? lastActivity;
  final List<LoginHistoryModel>? _loginHistory;
  @override
  List<LoginHistoryModel>? get loginHistory {
    final value = _loginHistory;
    if (value == null) return null;
    if (_loginHistory is EqualUnmodifiableListView) return _loginHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PreferencesModel? preferences;
  @override
  final SocialLinksModel? socialLinks;
  @override
  final OAuthModel? oauth;
  @override
  final bool? termsAccepted;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? termsAcceptedAt;
  @override
  final bool? privacyPolicyAccepted;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? privacyPolicyAcceptedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, password: $password, role: $role, permissions: $permissions, phone: $phone, avatar: $avatar, bio: $bio, location: $location, investorProfile: $investorProfile, projectOwnerProfile: $projectOwnerProfile, emailVerified: $emailVerified, emailVerificationToken: $emailVerificationToken, emailVerificationExpires: $emailVerificationExpires, phoneVerified: $phoneVerified, phoneVerificationToken: $phoneVerificationToken, phoneVerificationExpires: $phoneVerificationExpires, passwordChangedAt: $passwordChangedAt, passwordResetToken: $passwordResetToken, passwordResetExpires: $passwordResetExpires, loginAttempts: $loginAttempts, lockUntil: $lockUntil, twoFactorEnabled: $twoFactorEnabled, twoFactorSecret: $twoFactorSecret, active: $active, suspended: $suspended, suspensionReason: $suspensionReason, suspendedAt: $suspendedAt, suspendedBy: $suspendedBy, lastLogin: $lastLogin, lastActivity: $lastActivity, loginHistory: $loginHistory, preferences: $preferences, socialLinks: $socialLinks, oauth: $oauth, termsAccepted: $termsAccepted, termsAcceptedAt: $termsAcceptedAt, privacyPolicyAccepted: $privacyPolicyAccepted, privacyPolicyAcceptedAt: $privacyPolicyAcceptedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.investorProfile, investorProfile) ||
                other.investorProfile == investorProfile) &&
            (identical(other.projectOwnerProfile, projectOwnerProfile) ||
                other.projectOwnerProfile == projectOwnerProfile) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.emailVerificationToken, emailVerificationToken) ||
                other.emailVerificationToken == emailVerificationToken) &&
            (identical(other.emailVerificationExpires, emailVerificationExpires) ||
                other.emailVerificationExpires == emailVerificationExpires) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.phoneVerificationToken, phoneVerificationToken) ||
                other.phoneVerificationToken == phoneVerificationToken) &&
            (identical(other.phoneVerificationExpires, phoneVerificationExpires) ||
                other.phoneVerificationExpires == phoneVerificationExpires) &&
            (identical(other.passwordChangedAt, passwordChangedAt) ||
                other.passwordChangedAt == passwordChangedAt) &&
            (identical(other.passwordResetToken, passwordResetToken) ||
                other.passwordResetToken == passwordResetToken) &&
            (identical(other.passwordResetExpires, passwordResetExpires) ||
                other.passwordResetExpires == passwordResetExpires) &&
            (identical(other.loginAttempts, loginAttempts) ||
                other.loginAttempts == loginAttempts) &&
            (identical(other.lockUntil, lockUntil) ||
                other.lockUntil == lockUntil) &&
            (identical(other.twoFactorEnabled, twoFactorEnabled) ||
                other.twoFactorEnabled == twoFactorEnabled) &&
            (identical(other.twoFactorSecret, twoFactorSecret) ||
                other.twoFactorSecret == twoFactorSecret) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.suspended, suspended) ||
                other.suspended == suspended) &&
            (identical(other.suspensionReason, suspensionReason) ||
                other.suspensionReason == suspensionReason) &&
            (identical(other.suspendedAt, suspendedAt) ||
                other.suspendedAt == suspendedAt) &&
            (identical(other.suspendedBy, suspendedBy) ||
                other.suspendedBy == suspendedBy) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            const DeepCollectionEquality()
                .equals(other._loginHistory, _loginHistory) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.socialLinks, socialLinks) ||
                other.socialLinks == socialLinks) &&
            (identical(other.oauth, oauth) || other.oauth == oauth) &&
            (identical(other.termsAccepted, termsAccepted) ||
                other.termsAccepted == termsAccepted) &&
            (identical(other.termsAcceptedAt, termsAcceptedAt) ||
                other.termsAcceptedAt == termsAcceptedAt) &&
            (identical(other.privacyPolicyAccepted, privacyPolicyAccepted) ||
                other.privacyPolicyAccepted == privacyPolicyAccepted) &&
            (identical(other.privacyPolicyAcceptedAt, privacyPolicyAcceptedAt) || other.privacyPolicyAcceptedAt == privacyPolicyAcceptedAt) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        email,
        password,
        role,
        const DeepCollectionEquality().hash(_permissions),
        phone,
        avatar,
        bio,
        location,
        investorProfile,
        projectOwnerProfile,
        emailVerified,
        emailVerificationToken,
        emailVerificationExpires,
        phoneVerified,
        phoneVerificationToken,
        phoneVerificationExpires,
        passwordChangedAt,
        passwordResetToken,
        passwordResetExpires,
        loginAttempts,
        lockUntil,
        twoFactorEnabled,
        twoFactorSecret,
        active,
        suspended,
        suspensionReason,
        suspendedAt,
        suspendedBy,
        lastLogin,
        lastActivity,
        const DeepCollectionEquality().hash(_loginHistory),
        preferences,
        socialLinks,
        oauth,
        termsAccepted,
        termsAcceptedAt,
        privacyPolicyAccepted,
        privacyPolicyAcceptedAt,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {@JsonKey(name: 'id') required final String id,
      required final String firstName,
      required final String lastName,
      required final String email,
      final String? password,
      required final String role,
      final List<String> permissions,
      final String? phone,
      final AvatarModel? avatar,
      final String? bio,
      final LocationModel? location,
      final InvestorProfileModel? investorProfile,
      final ProjectOwnerProfileModel? projectOwnerProfile,
      final bool? emailVerified,
      final String? emailVerificationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? emailVerificationExpires,
      final bool? phoneVerified,
      final String? phoneVerificationToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? phoneVerificationExpires,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? passwordChangedAt,
      final String? passwordResetToken,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? passwordResetExpires,
      final int? loginAttempts,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? lockUntil,
      final bool? twoFactorEnabled,
      final String? twoFactorSecret,
      final bool? active,
      final bool? suspended,
      final String? suspensionReason,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? suspendedAt,
      final String? suspendedBy,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? lastLogin,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? lastActivity,
      final List<LoginHistoryModel>? loginHistory,
      final PreferencesModel? preferences,
      final SocialLinksModel? socialLinks,
      final OAuthModel? oauth,
      final bool? termsAccepted,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? termsAcceptedAt,
      final bool? privacyPolicyAccepted,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? privacyPolicyAcceptedAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? createdAt,
      @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      final DateTime? updatedAt}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String? get password;
  @override
  String get role;
  @override
  List<String> get permissions;
  @override
  String? get phone;
  @override
  AvatarModel? get avatar;
  @override
  String? get bio;
  @override
  LocationModel? get location;
  @override
  InvestorProfileModel? get investorProfile;
  @override
  ProjectOwnerProfileModel? get projectOwnerProfile;
  @override
  bool? get emailVerified;
  @override
  String? get emailVerificationToken;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get emailVerificationExpires;
  @override
  bool? get phoneVerified;
  @override
  String? get phoneVerificationToken;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get phoneVerificationExpires;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get passwordChangedAt;
  @override
  String? get passwordResetToken;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get passwordResetExpires;
  @override
  int? get loginAttempts;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get lockUntil;
  @override
  bool? get twoFactorEnabled;
  @override
  String? get twoFactorSecret;
  @override
  bool? get active;
  @override
  bool? get suspended;
  @override
  String? get suspensionReason;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get suspendedAt;
  @override
  String? get suspendedBy;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get lastLogin;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get lastActivity;
  @override
  List<LoginHistoryModel>? get loginHistory;
  @override
  PreferencesModel? get preferences;
  @override
  SocialLinksModel? get socialLinks;
  @override
  OAuthModel? get oauth;
  @override
  bool? get termsAccepted;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get termsAcceptedAt;
  @override
  bool? get privacyPolicyAccepted;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get privacyPolicyAcceptedAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? get updatedAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
