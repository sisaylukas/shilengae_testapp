// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catagory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatagoryModel _$$_CatagoryModelFromJson(Map<String, dynamic> json) =>
    _$_CatagoryModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      children:
          (json['children'] as List<dynamic>).map((e) => e as int).toList(),
      parent_category_id: json['parent_category_id'] as int?,
      form_name: json['form_name'] as String?,
      status: json['status'] as String,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_CatagoryModelToJson(_$_CatagoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'children': instance.children,
      'parent_category_id': instance.parent_category_id,
      'form_name': instance.form_name,
      'status': instance.status,
      'created_at': instance.created_at,
    };
