import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'version_model.freezed.dart';
part 'version_model.g.dart';

@freezed
class VersionModel with _$VersionModel {
  factory VersionModel({
    required String app_version,
    required double category_version,
    required bool force_update,
  }) = _VersionModel;
  factory VersionModel.fromJson(Map<String, dynamic> json) =>
      _$VersionModelFromJson(json);
}
