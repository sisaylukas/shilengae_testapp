// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../data_model/catagory_model/catagory_model.dart';
import '../ui/view/home/home_view.dart';
import '../ui/view/items/items_view.dart';
import '../ui/view/secondroute/subcatagories_view.dart';
import '../ui/view/sub_subcategory/sub_subcatagories_view.dart';

class Routes {
  static const String homeView = '/home-view';
  static const String subCatagoriesView = '/sub-catagories-view';
  static const String itemsView = '/items-view';
  static const String subSubCatagoriesView = '/sub-sub-catagories-view';
  static const all = <String>{
    homeView,
    subCatagoriesView,
    itemsView,
    subSubCatagoriesView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.subCatagoriesView, page: SubCatagoriesView),
    RouteDef(Routes.itemsView, page: ItemsView),
    RouteDef(Routes.subSubCatagoriesView, page: SubSubCatagoriesView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      var args = data.getArgs<HomeViewArguments>(
        orElse: () => HomeViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
    SubCatagoriesView: (data) {
      var args = data.getArgs<SubCatagoriesViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SubCatagoriesView(
          key: args.key,
          title: args.title,
          allParentId: args.allParentId,
          subCatagories: args.subCatagories,
        ),
        settings: data,
      );
    },
    ItemsView: (data) {
      var args = data.getArgs<ItemsViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ItemsView(
          subCatagories: args.subCatagories,
          key: args.key,
        ),
        settings: data,
      );
    },
    SubSubCatagoriesView: (data) {
      var args = data.getArgs<SubSubCatagoriesViewArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SubSubCatagoriesView(
          subCatagories: args.subCatagories,
          allParentId: args.allParentId,
          key: args.key,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomeView arguments holder class
class HomeViewArguments {
  final Key? key;
  HomeViewArguments({this.key});
}

/// SubCatagoriesView arguments holder class
class SubCatagoriesViewArguments {
  final Key? key;
  final String title;
  final List<int> allParentId;
  final List<CatagoryModel> subCatagories;
  SubCatagoriesViewArguments(
      {this.key,
      required this.title,
      required this.allParentId,
      required this.subCatagories});
}

/// ItemsView arguments holder class
class ItemsViewArguments {
  final List<CatagoryModel> subCatagories;
  final Key? key;
  ItemsViewArguments({required this.subCatagories, this.key});
}

/// SubSubCatagoriesView arguments holder class
class SubSubCatagoriesViewArguments {
  final List<CatagoryModel> subCatagories;
  final List<int> allParentId;
  final Key? key;
  SubSubCatagoriesViewArguments(
      {required this.subCatagories, required this.allParentId, this.key});
}
