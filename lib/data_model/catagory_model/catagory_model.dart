import 'package:freezed_annotation/freezed_annotation.dart';
part 'catagory_model.freezed.dart';
part 'catagory_model.g.dart';

@freezed
class CatagoryModel with _$CatagoryModel {
  factory CatagoryModel({
    int? id,
    String? name,
    required List<int> children,
    int? parent_category_id,
    String? form_name,
    required String status,
    String? created_at,
  }) = _CatagoryModel;
  factory CatagoryModel.fromJson(Map<String, dynamic> json) =>
      _$CatagoryModelFromJson(json);
}
