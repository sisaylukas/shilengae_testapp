import 'dart:io';

import 'package:apitest/app/app.locator.dart';
import 'package:apitest/app/app.logger.dart';
import 'package:apitest/app/app.router.dart';
import 'package:apitest/data_model/catagory_model/catagory_model.dart';

import 'package:apitest/services/api_services.dart';

import 'package:apitest/services/shared_perference.dart';
import 'package:dio/dio.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FutureViewModel {
  final log = getLogger("HomeViewModel");
  final _apiServices = locator<ApiServices>();
  final _sharedPreferenceServices = locator<SharedPreferenceServices>();
  final _navigationService = locator<NavigationService>();

  @override
  Future futureToRun() async {
    /// TODO: move this into starup view
    await _sharedPreferenceServices.sharedPereferndeInstance();
    return getVersionNumber();
  }

  Future getVersionNumber() async {
    try {
      bool isNewVersion = await _apiServices.getVersionNumber();
      if (isNewVersion) {
        await getCatagory();
      } else {
        await getAllCatagoryFromLocalStorage();
      }
    } on SocketException {
      ///TODO: Show dialog here
      log.e('check connection went wrong');
    } on DioError catch (e) {
      log.e(e.message);
    } catch (e) {
      log.e('Someting went wrong');
    }
  }

  List<CatagoryModel> _allcatagory = [];
  List<CatagoryModel> get allcatagory => _allcatagory;

  Future getCatagory() async {
    log.i('called');
    try {
      final rootCatagory = await _apiServices.getCatagory();
      _allcatagory = await _apiServices.getSubCatagory(rootCatagory.id!);
      log.i(_allcatagory);
    } on SocketException {
      ///TODO: Show dialog here
      log.e('check connection went wrong');
    } on DioError catch (e) {
      log.e(e.message);
    } catch (e) {
      log.e('Someting went wrong');
    }
  }

  Future getAllCatagoryFromLocalStorage() async {
    log.i('called');
    try {
      final rootCatagory = await _apiServices.getRoot();
      _allcatagory = await _apiServices.getSubCatagory(rootCatagory.id!);
      log.i(_allcatagory);
    } on SocketException {
      ///TODO: Show dialog here
      log.e('check connection went wrong');
    } on DioError catch (e) {
      log.e(e.message);
    } catch (e) {
      log.e('Someting went wrong');
    }
  }

  Future getSubCatagoryOfRoot(CatagoryModel catagoryModel) async {
    log.i('called');
    final result = await _apiServices.getSubCatagory(catagoryModel.id!);
    _navigationService.navigateTo(Routes.subCatagoriesView,
        arguments: SubCatagoriesViewArguments(
          subCatagories: result,
          allParentId: [catagoryModel.id!],
          title: catagoryModel.name.toString(),
        ));
    notifyListeners();
    log.d(result);
  }
}
