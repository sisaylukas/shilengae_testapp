import 'package:apitest/app/app.locator.dart';
import 'package:apitest/app/app.logger.dart';
import 'package:apitest/app/app.router.dart';
import 'package:apitest/data_model/catagory_model/catagory_model.dart';
import 'package:apitest/services/api_services.dart';
import 'package:apitest/services/shared_perference.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SubCatagoriesViewModel extends BaseViewModel {
  final log = getLogger('SubCatagoriesViewModel');
  final _apiServices = locator<ApiServices>();
  final _navigationService = locator<NavigationService>();
  final List<CatagoryModel> subCatagories;
  final List<int> allParentId;

  SubCatagoriesViewModel(this.subCatagories, this.allParentId);

  Future getSubSubCatagoryOfRoot(CatagoryModel catagoryModel) async {
    allParentId.add(catagoryModel.id!);
    log.i('called');
    final result = await _apiServices.getSubCatagory(catagoryModel.id!);
    _navigationService.navigateTo(Routes.subSubCatagoriesView,
        arguments: SubCatagoriesViewArguments(
            subCatagories: result,
            allParentId: allParentId,
            title: catagoryModel.name.toString()));
    notifyListeners();
    log.d(result);
  }
}
