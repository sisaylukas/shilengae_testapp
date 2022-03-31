import 'package:apitest/data_model/catagory_model/catagory_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'items_viewmodel.dart';

class ItemsView extends StatelessWidget {
  final List<CatagoryModel> subCatagories;

  const ItemsView({required this.subCatagories, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ItemsViewModel>.reactive(
      viewModelBuilder: () => ItemsViewModel(),
      builder: (
        BuildContext context,
        ItemsViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'ItemsView',
            ),
          ),
        );
      },
    );
  }
}
