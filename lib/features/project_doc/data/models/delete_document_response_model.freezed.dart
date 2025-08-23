// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_document_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteDocumentResponseModel _$DeleteDocumentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteDocumentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteDocumentResponseModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteDocumentResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteDocumentResponseModelCopyWith<DeleteDocumentResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteDocumentResponseModelCopyWith<$Res> {
  factory $DeleteDocumentResponseModelCopyWith(
          DeleteDocumentResponseModel value,
          $Res Function(DeleteDocumentResponseModel) then) =
      _$DeleteDocumentResponseModelCopyWithImpl<$Res,
          DeleteDocumentResponseModel>;
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class _$DeleteDocumentResponseModelCopyWithImpl<$Res,
        $Val extends DeleteDocumentResponseModel>
    implements $DeleteDocumentResponseModelCopyWith<$Res> {
  _$DeleteDocumentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteDocumentResponseModelImplCopyWith<$Res>
    implements $DeleteDocumentResponseModelCopyWith<$Res> {
  factory _$$DeleteDocumentResponseModelImplCopyWith(
          _$DeleteDocumentResponseModelImpl value,
          $Res Function(_$DeleteDocumentResponseModelImpl) then) =
      __$$DeleteDocumentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class __$$DeleteDocumentResponseModelImplCopyWithImpl<$Res>
    extends _$DeleteDocumentResponseModelCopyWithImpl<$Res,
        _$DeleteDocumentResponseModelImpl>
    implements _$$DeleteDocumentResponseModelImplCopyWith<$Res> {
  __$$DeleteDocumentResponseModelImplCopyWithImpl(
      _$DeleteDocumentResponseModelImpl _value,
      $Res Function(_$DeleteDocumentResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_$DeleteDocumentResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteDocumentResponseModelImpl
    implements _DeleteDocumentResponseModel {
  _$DeleteDocumentResponseModelImpl(
      {required this.success, required this.message});

  factory _$DeleteDocumentResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteDocumentResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'DeleteDocumentResponseModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDocumentResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of DeleteDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDocumentResponseModelImplCopyWith<_$DeleteDocumentResponseModelImpl>
      get copyWith => __$$DeleteDocumentResponseModelImplCopyWithImpl<
          _$DeleteDocumentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteDocumentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteDocumentResponseModel
    implements DeleteDocumentResponseModel {
  factory _DeleteDocumentResponseModel(
      {required final bool success,
      required final String message}) = _$DeleteDocumentResponseModelImpl;

  factory _DeleteDocumentResponseModel.fromJson(Map<String, dynamic> json) =
      _$DeleteDocumentResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;

  /// Create a copy of DeleteDocumentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteDocumentResponseModelImplCopyWith<_$DeleteDocumentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
