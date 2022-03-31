import 'dart:convert';
import 'dart:io';

import 'package:apitest/app/app.constants.dart';
import 'package:apitest/app/app.locator.dart';
import 'package:apitest/app/app.logger.dart';
import 'package:apitest/data_model/catagory_model/catagory_model.dart';
import 'package:apitest/data_model/version_model/version_model.dart';

import 'package:apitest/services/shared_perference.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiServices {
  final log = getLogger('ApiServices');

  final sharedPreferenceServices = locator<SharedPreferenceServices>();
  List<CatagoryModel> allCatagory = [];

  Dio dio = Dio();

  Future<bool> getVersionNumber() async {
    VersionModel versionModel;
    bool hasNewVersion;
    Response response;
    try {
      response = await dio.get(VersionUrl);
      versionModel = VersionModel.fromJson(response.data);
      print(versionModel);
      hasNewVersion = await checkNewVersion(versionModel);
      return hasNewVersion;
    } on SocketException {
      rethrow;
    } on DioError catch (e) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> checkNewVersion(VersionModel versionModel) async {
    if (await sharedPreferenceServices.getData(VersionKey) == null) {
      sharedPreferenceServices.setData(
          VersionKey, versionModel.category_version.toString());
      return true;
    } else {
      if (await sharedPreferenceServices.getData(VersionKey) !=
          versionModel.app_version) {
        sharedPreferenceServices.setData(VersionKey, versionModel.app_version);
        return true;
      }
    }
    return false;
  }

  Future<CatagoryModel> getCatagory() async {
    log.i('called');

    List<String> jsonCategories = [];
    Response response;
    try {
      response = await dio.get(CatUrl);
      var data = response.data['results'];
      for (var cat in data) {
        jsonCategories.add(json.encode(cat));
      }

      /// store to local data
      await sharedPreferenceServices.setListData(CategoryKey, jsonCategories);
      await setAllcatagory();

      return await getRoot();
    } on SocketException {
      rethrow;
    } on DioError catch (e) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> setAllcatagory() async {
    if (allCatagory.isEmpty) {
      allCatagory = await getCategoriesFromLocal(CategoryKey);
    }
  }

  Future<List<CatagoryModel>> getCategoriesFromLocal(String key) async {
    final data = await sharedPreferenceServices.getListData(CategoryKey);

    if (data != null) {
      for (var cat in data) {
        Map<String, dynamic> jsonData = jsonDecode(cat);
        allCatagory.add(CatagoryModel.fromJson(jsonData));
      }
    }

    return allCatagory;
  }

  Future<List<CatagoryModel>> getSubCatagory(int parentId) async {
    List<CatagoryModel> allSubcatagoryCatagory = [];

    allCatagory.forEach((element) {
      if (element.id != null && element.parent_category_id == parentId) {
        allSubcatagoryCatagory.add(element);
      }
    });
    return allSubcatagoryCatagory;
  }

  Future<CatagoryModel> getRoot() async {
    await setAllcatagory();
    late CatagoryModel rootCatagory;
    for (var cat in allCatagory) {
      if (cat.parent_category_id == null) {
        rootCatagory = cat;
        return rootCatagory;
      }
    }
    return rootCatagory;
  }
}
