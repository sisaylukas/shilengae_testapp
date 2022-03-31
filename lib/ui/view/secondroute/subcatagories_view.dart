import 'package:apitest/data_model/catagory_model/catagory_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'subcatagories_view_model.dart';

class SubCatagoriesView extends StatelessWidget {
  final List<CatagoryModel> subCatagories;
  final List<int> allParentId;
  final String title;

  const SubCatagoriesView(
      {Key? key,
      required this.title,
      required this.allParentId,
      required this.subCatagories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SubCatagoriesViewModel>.reactive(
      viewModelBuilder: () =>
          SubCatagoriesViewModel(subCatagories, allParentId),
      builder: (
        BuildContext context,
        SubCatagoriesViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(title: Text(title)),
          body: model.isBusy
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 7 / 1,
                      crossAxisCount: 1,
                    ),
                    itemCount: subCatagories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () =>
                            model.getSubSubCatagoryOfRoot(subCatagories[index]),
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50,
                              child: Text(
                                subCatagories[index].name!.toString(),
                              ),
                            ),
                          ),
                        ),
                      );
                      ;
                    },
                  ),
                ),
        );
      },
    );
  }
}
