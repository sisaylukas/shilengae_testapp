import 'package:apitest/services/api_services.dart';

import 'package:apitest/services/shared_perference.dart';
import 'package:apitest/ui/view/home/home_view.dart';
import 'package:apitest/ui/view/items/items_view.dart';
import 'package:apitest/ui/view/secondroute/subcatagories_view.dart';
import 'package:apitest/ui/view/sub_subcategory/sub_subcatagories_view.dart';
import 'package:apitest/ui/view/sub_subcategory/sub_subcatagories_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: HomeView),
    CupertinoRoute(page: SubCatagoriesView),
    CupertinoRoute(page: ItemsView),
    CustomRoute(page: SubSubCatagoriesView)
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SharedPreferenceServices),
    LazySingleton(classType: ApiServices),
  ],
  logger: StackedLogger(),
)
class AppSetUp {}
