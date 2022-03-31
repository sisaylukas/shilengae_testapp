// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VersionModel _$$_VersionModelFromJson(Map<String, dynamic> json) =>
    _$_VersionModel(
      app_version: json['app_version'] as String,
      category_version: (json['category_version'] as num).toDouble(),
      force_update: json['force_update'] as bool,
    );

Map<String, dynamic> _$$_VersionModelToJson(_$_VersionModel instance) =>
    <String, dynamic>{
      'app_version': instance.app_version,
      'category_version': instance.category_version,
      'force_update': instance.force_update,
    };
