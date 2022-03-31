// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionModel _$VersionModelFromJson(Map<String, dynamic> json) {
  return _VersionModel.fromJson(json);
}

/// @nodoc
class _$VersionModelTearOff {
  const _$VersionModelTearOff();

  _VersionModel call(
      {required String app_version,
      required double category_version,
      required bool force_update}) {
    return _VersionModel(
      app_version: app_version,
      category_version: category_version,
      force_update: force_update,
    );
  }

  VersionModel fromJson(Map<String, Object?> json) {
    return VersionModel.fromJson(json);
  }
}

/// @nodoc
const $VersionModel = _$VersionModelTearOff();

/// @nodoc
mixin _$VersionModel {
  String get app_version => throw _privateConstructorUsedError;
  double get category_version => throw _privateConstructorUsedError;
  bool get force_update => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionModelCopyWith<VersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionModelCopyWith<$Res> {
  factory $VersionModelCopyWith(
          VersionModel value, $Res Function(VersionModel) then) =
      _$VersionModelCopyWithImpl<$Res>;
  $Res call({String app_version, double category_version, bool force_update});
}

/// @nodoc
class _$VersionModelCopyWithImpl<$Res> implements $VersionModelCopyWith<$Res> {
  _$VersionModelCopyWithImpl(this._value, this._then);

  final VersionModel _value;
  // ignore: unused_field
  final $Res Function(VersionModel) _then;

  @override
  $Res call({
    Object? app_version = freezed,
    Object? category_version = freezed,
    Object? force_update = freezed,
  }) {
    return _then(_value.copyWith(
      app_version: app_version == freezed
          ? _value.app_version
          : app_version // ignore: cast_nullable_to_non_nullable
              as String,
      category_version: category_version == freezed
          ? _value.category_version
          : category_version // ignore: cast_nullable_to_non_nullable
              as double,
      force_update: force_update == freezed
          ? _value.force_update
          : force_update // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VersionModelCopyWith<$Res>
    implements $VersionModelCopyWith<$Res> {
  factory _$VersionModelCopyWith(
          _VersionModel value, $Res Function(_VersionModel) then) =
      __$VersionModelCopyWithImpl<$Res>;
  @override
  $Res call({String app_version, double category_version, bool force_update});
}

/// @nodoc
class __$VersionModelCopyWithImpl<$Res> extends _$VersionModelCopyWithImpl<$Res>
    implements _$VersionModelCopyWith<$Res> {
  __$VersionModelCopyWithImpl(
      _VersionModel _value, $Res Function(_VersionModel) _then)
      : super(_value, (v) => _then(v as _VersionModel));

  @override
  _VersionModel get _value => super._value as _VersionModel;

  @override
  $Res call({
    Object? app_version = freezed,
    Object? category_version = freezed,
    Object? force_update = freezed,
  }) {
    return _then(_VersionModel(
      app_version: app_version == freezed
          ? _value.app_version
          : app_version // ignore: cast_nullable_to_non_nullable
              as String,
      category_version: category_version == freezed
          ? _value.category_version
          : category_version // ignore: cast_nullable_to_non_nullable
              as double,
      force_update: force_update == freezed
          ? _value.force_update
          : force_update // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionModel with DiagnosticableTreeMixin implements _VersionModel {
  _$_VersionModel(
      {required this.app_version,
      required this.category_version,
      required this.force_update});

  factory _$_VersionModel.fromJson(Map<String, dynamic> json) =>
      _$$_VersionModelFromJson(json);

  @override
  final String app_version;
  @override
  final double category_version;
  @override
  final bool force_update;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VersionModel(app_version: $app_version, category_version: $category_version, force_update: $force_update)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VersionModel'))
      ..add(DiagnosticsProperty('app_version', app_version))
      ..add(DiagnosticsProperty('category_version', category_version))
      ..add(DiagnosticsProperty('force_update', force_update));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionModel &&
            const DeepCollectionEquality()
                .equals(other.app_version, app_version) &&
            const DeepCollectionEquality()
                .equals(other.category_version, category_version) &&
            const DeepCollectionEquality()
                .equals(other.force_update, force_update));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(app_version),
      const DeepCollectionEquality().hash(category_version),
      const DeepCollectionEquality().hash(force_update));

  @JsonKey(ignore: true)
  @override
  _$VersionModelCopyWith<_VersionModel> get copyWith =>
      __$VersionModelCopyWithImpl<_VersionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionModelToJson(this);
  }
}

abstract class _VersionModel implements VersionModel {
  factory _VersionModel(
      {required String app_version,
      required double category_version,
      required bool force_update}) = _$_VersionModel;

  factory _VersionModel.fromJson(Map<String, dynamic> json) =
      _$_VersionModel.fromJson;

  @override
  String get app_version;
  @override
  double get category_version;
  @override
  bool get force_update;
  @override
  @JsonKey(ignore: true)
  _$VersionModelCopyWith<_VersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
