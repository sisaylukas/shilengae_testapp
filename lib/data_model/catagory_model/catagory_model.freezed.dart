// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catagory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatagoryModel _$CatagoryModelFromJson(Map<String, dynamic> json) {
  return _CatagoryModel.fromJson(json);
}

/// @nodoc
class _$CatagoryModelTearOff {
  const _$CatagoryModelTearOff();

  _CatagoryModel call(
      {int? id,
      String? name,
      required List<int> children,
      int? parent_category_id,
      String? form_name,
      required String status,
      String? created_at}) {
    return _CatagoryModel(
      id: id,
      name: name,
      children: children,
      parent_category_id: parent_category_id,
      form_name: form_name,
      status: status,
      created_at: created_at,
    );
  }

  CatagoryModel fromJson(Map<String, Object?> json) {
    return CatagoryModel.fromJson(json);
  }
}

/// @nodoc
const $CatagoryModel = _$CatagoryModelTearOff();

/// @nodoc
mixin _$CatagoryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<int> get children => throw _privateConstructorUsedError;
  int? get parent_category_id => throw _privateConstructorUsedError;
  String? get form_name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatagoryModelCopyWith<CatagoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatagoryModelCopyWith<$Res> {
  factory $CatagoryModelCopyWith(
          CatagoryModel value, $Res Function(CatagoryModel) then) =
      _$CatagoryModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      List<int> children,
      int? parent_category_id,
      String? form_name,
      String status,
      String? created_at});
}

/// @nodoc
class _$CatagoryModelCopyWithImpl<$Res>
    implements $CatagoryModelCopyWith<$Res> {
  _$CatagoryModelCopyWithImpl(this._value, this._then);

  final CatagoryModel _value;
  // ignore: unused_field
  final $Res Function(CatagoryModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? children = freezed,
    Object? parent_category_id = freezed,
    Object? form_name = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<int>,
      parent_category_id: parent_category_id == freezed
          ? _value.parent_category_id
          : parent_category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      form_name: form_name == freezed
          ? _value.form_name
          : form_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CatagoryModelCopyWith<$Res>
    implements $CatagoryModelCopyWith<$Res> {
  factory _$CatagoryModelCopyWith(
          _CatagoryModel value, $Res Function(_CatagoryModel) then) =
      __$CatagoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      List<int> children,
      int? parent_category_id,
      String? form_name,
      String status,
      String? created_at});
}

/// @nodoc
class __$CatagoryModelCopyWithImpl<$Res>
    extends _$CatagoryModelCopyWithImpl<$Res>
    implements _$CatagoryModelCopyWith<$Res> {
  __$CatagoryModelCopyWithImpl(
      _CatagoryModel _value, $Res Function(_CatagoryModel) _then)
      : super(_value, (v) => _then(v as _CatagoryModel));

  @override
  _CatagoryModel get _value => super._value as _CatagoryModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? children = freezed,
    Object? parent_category_id = freezed,
    Object? form_name = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_CatagoryModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<int>,
      parent_category_id: parent_category_id == freezed
          ? _value.parent_category_id
          : parent_category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      form_name: form_name == freezed
          ? _value.form_name
          : form_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatagoryModel implements _CatagoryModel {
  _$_CatagoryModel(
      {this.id,
      this.name,
      required this.children,
      this.parent_category_id,
      this.form_name,
      required this.status,
      this.created_at});

  factory _$_CatagoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CatagoryModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final List<int> children;
  @override
  final int? parent_category_id;
  @override
  final String? form_name;
  @override
  final String status;
  @override
  final String? created_at;

  @override
  String toString() {
    return 'CatagoryModel(id: $id, name: $name, children: $children, parent_category_id: $parent_category_id, form_name: $form_name, status: $status, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatagoryModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality()
                .equals(other.parent_category_id, parent_category_id) &&
            const DeepCollectionEquality().equals(other.form_name, form_name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(parent_category_id),
      const DeepCollectionEquality().hash(form_name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$CatagoryModelCopyWith<_CatagoryModel> get copyWith =>
      __$CatagoryModelCopyWithImpl<_CatagoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatagoryModelToJson(this);
  }
}

abstract class _CatagoryModel implements CatagoryModel {
  factory _CatagoryModel(
      {int? id,
      String? name,
      required List<int> children,
      int? parent_category_id,
      String? form_name,
      required String status,
      String? created_at}) = _$_CatagoryModel;

  factory _CatagoryModel.fromJson(Map<String, dynamic> json) =
      _$_CatagoryModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<int> get children;
  @override
  int? get parent_category_id;
  @override
  String? get form_name;
  @override
  String get status;
  @override
  String? get created_at;
  @override
  @JsonKey(ignore: true)
  _$CatagoryModelCopyWith<_CatagoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
